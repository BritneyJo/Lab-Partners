NAMES = ['CJ', 'Stewart', 'James P.','Luke','Adam','Britney Jo','Michael','Hendre','Julien','Andrea','Salman', 'Ankoor','Murad','James E.','Jarkyn','Aya','Will','Emille']

NAMES.shuffle!
def menu
  puts `clear`
  puts "***WDI London Lab Partners*** \n\n How many people do you want in each group?"
  gets.chomp.downcase.to_i
end

group_size = menu

NAMES.each_slice(group_size) do |group|
  group.each_with_index do |name, index|
    print  "#{name}#{"," if index != group.size-1} "
  end
  puts "\n----"
end