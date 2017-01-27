class Map
  attr_reader :data

  def initialize
    @data = []
  end

  def assign(key, value)
    if data.empty?
      data.push([key, value])
    else
      data.each do |el|
        data.push([key, value]) unless el[0] == key
      end
    end
  end

  def lookup(key)
    data.each { |pair| return pair[1] if pair[0] == key }
  end

  def remove(key)
    data.reject! { |pair| pair[0] == key }
  end

  def show
    data
  end

end
