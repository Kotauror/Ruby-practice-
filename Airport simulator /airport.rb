class Airport
  def initialize(hangar)
    @hangar = []
  end

  def puts_hangar
    puts "There are following planes in the hangar: #{@hangar}"
  end

  def land(plane)
    @hangar.push(plane)
  end

  def take_off(plane)
    if @hangar.length > 0
      if @hangar.include? plane
        plane_index = @hangar.index(plane)
        @hangar.delete_at(plane_index)
        return plane
      else
        return "Error: plane not in hangar"
      end
    else
      return "Error: there are no planes to take off"
    end
  end

  def hangar_report
    if @hangar.length == 1
      "There is 1 plane in the hangar"
    else
      "There are #{ @hangar.length } planes in the hangar"
    end
  end
end

class Plane

  def initialize(name, number)
    @name = name
    @number = number
  end

  def name_plane
    return @name
  end

  def number_plane
    return @number
  end
end

balice = Airport.new([])
plane_1 = Plane.new("first_plane", 1)
plane_2 = Plane.new("second_plane", 2)


balice.land(plane_1)
balice.land(plane_2)
balice.puts_hangar
balice.take_off(plane_1)
balice.puts_hangar
