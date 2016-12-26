
class Student
  attr_accessor :first_name, :last_name, :primary_phone_number

  def introduction(target)
    puts "Hi #{target}, I'm #{first_name}!"
  end

  def phone_calling
    puts "dialing #{primary_phone_number}..."
  end

  def favourite_number
    23
  end
end


nuno = Student.new

nuno.first_name = "Nuno"
nuno.primary_phone_number = 927801116

nuno.introduction('Katrina')

nuno.phone_calling
puts "#{nuno.first_name}'s favourite number is #{nuno.favourite_number}."
