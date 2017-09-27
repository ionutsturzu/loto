#!/bin/ruby
#
require 'csv'
unic=Hash.new
csv = CSV.read('loto649.csv', :headers=>true)
my_array = csv['N1']
my_array2 = csv['N2']
my_array3 = csv['N3']
my_array4 = csv['N4']
my_array5 = csv['N5']
my_array6 = csv['N6']
my_array = my_array + my_array2 + my_array3 + my_array4 + my_array5 + my_array6
my_array.uniq.each do |elem|
  unic["#{elem}"]=my_array.count(elem) 
end
puts unic




=begin
require 'csv'
CSV.foreach('loto649.csv') do |row|
  my_array=row.inspect
  my_array.shift
  puts my_array
end


  my_array.uniq.each do |elem|
  
  puts "#{elem} apare de #{my_array.count(elem)}"
  end
end
def ori(my_array)
  count=0
  for i in 0...49 do
    my_array.each do |x|
      if my_array[x]==i
        count += 1
    puts "#{my_array[x]} apare de #{count}"
      end
    end
  end
 # puts "#{my_array[x]} apare de #{count}"
end
ori(my_array)
require 'csv'
CSV.foreach('loto649.csv') do |row|
  my_array=row.inspect
  puts my_array
end
=end
