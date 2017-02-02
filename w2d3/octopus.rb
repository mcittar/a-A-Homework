fish = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def octopus_on_2(fish)
  longest = ""
  fish.each_index do |i|
    fish.each_index do |j|
      if j > i
        longest = fish[j] if fish[j].length > fish[i].length
      end
    end
  end
  longest
end
p octopus_on_2(fish)

class Array

  def merge_sort(&prc)
    prc ||= Proc.new { |x, y| x <=> y }

    return self if count <= 1

    mid = count / 2
    sorted_left = self.take(mid).merge_sort(&prc)
    sorted_right = self.drop(mid).merge_sort(&prc)

    Array.merge(sorted_left, sorted_right, &prc)
  end

  def self.merge(left, right, &prc)
    output = []

    until left.empty? || right.empty?
      case prc.call(left.first, right.first)
      when -1
        output << left.shift
      when 0
        output << left.shift
      when 1
        output << right.shift
      end
    end

    output + left + right
  end
end

def octopus_nlogn(fish)
  prc = Proc.new { |x, y| y.length <=> x.length }
  fish.merge_sort(&prc)[0]
end

p octopus_nlogn(fish)

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(dir, tiles)
  tiles.each_with_index do |el, idx|
    return idx if el == dir
  end
end

p slow_dance("up", tiles_array)

tiles_hash = {
    "up" => 0,
    "right-up" => 1,
    "right"=> 2,
    "right-down" => 3,
    "down" => 4,
    "left-down" => 5,
    "left" => 6,
    "left-up" => 7
}

def faster_dance(dir, tiles)
  tiles[dir]
end

p faster_dance("right-down", tiles_hash)
