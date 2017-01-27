class Queue
  attr_reader :ivar
  def initialize(ivar = [])
    @ivar = ivar
  end

  def enqueue(el)
    ivar.push(el)
  end

  def dequeue
    ivar.shift
  end

  def show
    ivar
  end

end
