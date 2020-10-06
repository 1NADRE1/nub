puts <<EOF 
Это калькулятор простых вычислений: сложение, вычитание, умножение,деление...
Возвести в стпень: "**"
Показывает остаток от деления: "%"
Кроме того возможен ввод для первого число (2+2) + оператор + вторая переменная (2*22).
EOF
	puts
	print 'Введите первое число: '
x = gets.chomp.to_s
	puts
oper = false
 while (not oper)
  print 'Введите оператор :'
z = gets.chomp.downcase
 if(z == "+" or z == "-" or z == "/" or z == "*" or z == "**" or z == "%")
oper = true
 else
    puts 'Это не оператор :D'
 end
 end
	puts
	print 'Введите второе число: '
y = gets.chomp.to_s
    puts
	puts  "Результат:"+ eval("#{x}#{z}#{y}").to_s.rjust(3.5).chomp 


