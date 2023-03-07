# Знайти найбільший та найменший елементи масиву
arr = [3, 6, 1, 8, 2, 10]
min = arr.min
max = arr.max
puts "Найменший елемент: #{min}" # виведе "Найменший елемент: 1"
puts "Найбільший елемент: #{max}" # виведе "Найбільший елемент: 10"

# Обчислити суму елементів масиву
arr = [3, 6, 1, 8, 2, 10]
sum = arr.sum
puts "Сума елементів: #{sum}" # виведе "Сума елементів: 30"

# Знайти кількість входжень заданого елементу у масив
arr = [3, 6, 1, 8, 2, 10]
elem = 6
count = arr.count(elem)
puts "Кількість входжень елементу #{elem}: #{count}" # виведе "Кількість входжень елементу 6: 1"


# Видалити всі входження заданого елементу з масиву
arr = [3, 6, 1, 8, 2, 10]
elem = 6
arr.delete(elem)
puts arr.inspect # виведе "[3, 1, 8, 2, 10]"

# Перевернути масив
arr = [3, 6, 1, 8, 2, 10]
reversed_arr = arr.reverse
puts reversed_arr.inspect # виведе "[10, 2, 8, 1, 6, 3]"

# Вивести масив у зворотному порядку, не використовуючи метод reverse
arr = [3, 6, 1, 8, 2, 10]
reversed_arr = []
(arr.length - 1).downto(0) { |index| reversed_arr << arr[index] }
puts reversed_arr.inspect # виведе "[10, 2, 8, 1, 6, 3]"

# Перевірити, чи містить масив заданий елемент
arr = [3, 6, 1, 8, 2, 10]
elem = 6
if arr.include?(elem)
  puts "Масив містить елемент #{elem}"
else
  puts "Масив не містить елемент #{elem}"
end

# Вивести всі парні елементи масиву
arr = [3, 6, 1, 8, 2, 10]
even_arr = arr.select { |elem| elem.even? }
puts even_arr.inspect # виведе "[6, 8, 2, 10]"

# Вивести всі непарні елементи масиву
arr = [3, 6, 1, 8, 2, 10]
odd_arr = arr.select { |elem| elem.odd? }
puts odd_arr.inspect # виведе "[3, 1]"


# Вивести новий масив, що містить квадрати елементів початкового масиву
arr = [3, 6, 1, 8, 2, 10]
squared_arr = arr.map { |elem| elem ** 2 }
puts squared_arr.inspect # виведе "[9, 36, 1, 64, 4, 100]"


# Перетворити масив в хеш, де ключами будуть елементи, а значеннями їх індекси у масиві
arr = [3, 6, 1, 8, 2, 10]
hash = {}
arr.each_with_index { |elem, index| hash[elem] = index }
puts hash.inspect # виведе "{3=>0, 6=>1, 1=>2, 8=>3, 2=>4, 10=>5}"


# Перетворити масив у новий масив, де кожен елемент - це сума його і попереднього елементів у початковому масиві
arr = [3, 6, 1, 8, 2, 10]
summed_arr = arr.each_with_index.map { |elem, index| index == 0 ? elem : elem + arr[index - 1] }
puts summed_arr.inspect # виведе "[3, 9, 7, 9, 10, 12]"

# Перетворити масив у новий масив, де кожен елемент - це сума його і всіх попередніх елементів у початковому масиві
arr = [3, 6, 1, 8, 2, 10]
summed_arr = []
arr.each_with_index { |elem, index| index == 0 ? summed_arr << elem : summed_arr << elem + summed_arr[index - 1] }
puts summed_arr.inspect # виведе "[3, 9, 10, 18, 20, 30]"


# Вивести індекс першого елементу масиву, який більше за задане число
arr = [3, 6, 1, 8, 2, 10]
number = 5
result_index = arr.find_index { |elem| elem > number }
puts result_index.inspect # виведе "1"


# Вивести елементи масиву, які рівні заданому числу
arr = [3, 6, 1, 8, 2, 10, 6, 1]
number = 6
result_arr = arr.select { |elem| elem == number }
puts result_arr.inspect # виведе "[6, 6]"


# Перетворити масив строк у новий масив, де кожна строка записана у зворотному порядку
arr = ["hello", "world", "ruby"]
reversed_arr = arr.map { |str| str.reverse }
puts reversed_arr.inspect # виведе "["olleh", "dlrow", "ybur"]"


# Вивести суму елементів масиву, які менші за задане число
arr = [3, 6, 1, 8, 2, 10]
number = 5
sum = arr.select { |elem| elem < number }.sum
puts sum.inspect # виведе "6"


# Вивести кількість унікальних елементів масиву
arr = [1, 2, 3, 4, 3, 2, 1, 5, 6, 5]
unique_count = arr.uniq.count
puts unique_count.inspect # виведе "6"


# Перетворити масив строк у новий масив, де кожна строка записана в верхньому регістрі
arr = ["hello", "world", "ruby"]
upcased_arr = arr.map(&:upcase)
puts upcased_arr.inspect # виведе "["HELLO", "WORLD", "RUBY"]"


# Знайдіть суму перших 10 натуральних чисел
sum = 0
(1..10).each do |i|
  sum += i
end
puts sum # виведе 55

# Виведіть всі числа від 1 до 100, які діляться на 3 без остачі
(1..100).each do |i|
  puts i if i % 3 == 0
end

# Знайдіть факторіал числа 5 (5!)
factorial = 1
(1..5).each do |i|
  factorial *= i
end
puts factorial # виведе 120


# Виведіть всі числа Фібоначчі до 100
fibonacci = [1, 1]
while fibonacci.last < 100
  fibonacci << fibonacci.last(2).reduce(:+)
end
puts fibonacci[0..-2] # виведе [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]

# Знайдіть кількість слів у рядку:
string = "The quick brown fox jumps over the lazy dog"
word_count = string.split.length
puts word_count # виведе 9

# ------ Ітератори ------------

# each - ітератор, який перебирає кожен елемент у колекції
(1..5).each {|i| puts i}

# map - ітератор, який перетворює кожен елемент у колекції та повертає нову колекцію
numbers = [1, 2, 3, 4, 5]
squares = numbers.map {|i| i * i}
puts squares # виведе [1, 4, 9, 16, 25]

# select - ітератор, який вибирає елементи у колекції, які задовольняють певну умову
numbers = [1, 2, 3, 4, 5]
even_numbers = numbers.select {|i| i % 2 == 0}
puts even_numbers # виведе [2, 4]

# reject - ітератор, який відкидає елементи у колекції, які задовольняють певну умову
numbers = [1, 2, 3, 4, 5]
odd_numbers = numbers.reject {|i| i % 2 == 0}
puts odd_numbers # виведе [1, 3, 5]

# reduce - ітератор, який об'єднує всі елементи у колекції до одного значення, використовуючи певну операцію
numbers = [1, 2, 3, 4, 5]
sum = numbers.reduce(0) {|acc, i| acc + i}
puts sum # виведе 15

# each_with_index - ітератор, який перебирає кожен елемент та його індекс у колекції
fruits = ['apple', 'banana', 'cherry']
fruits.each_with_index do |fruit, index|
  puts "#{index+1}. #{fruit}"
end

# zip - ітератор, який об'єднує кілька колекцій до однієї колекції
letters = ['a', 'b', 'c']
numbers = [1, 2, 3]
result = letters.zip(numbers)
puts result.inspect # виведе [["a", 1], ["b", 2], ["c", 3]]

# all? - ітератор, який перевіряє, чи задовольняють всі елементи у колекції певну умову
numbers = [2, 4, 6, 8, 10]
puts numbers.all? {|i| i.even?} # виведе true

# any? - ітератор, який перевіряє, чи задовольняє хоча б один елемент у колекції певну умову
numbers = [1, 2, 3, 4, 5]
puts numbers.any? {|i| i > 3} # поверне true, оскільки в колекції є елемент, що більше 3
puts numbers.any? {|i| i > 5} # поверне false, оскільки в колекції немає елементів, що більше 5

# none? - ітератор, який перевіряє, чи не задовольняють жоден елемент у колекції певну умову
numbers = [1, 3, 5, 7, 9]
puts numbers.none? {|i| i.even?} # виведе true

# count - ітератор, який повертає кількість елементів у колекції, які задовольняють певну умову
numbers = [1, 2, 3, 4, 5]
puts numbers.count {|i| i.even?} # виведе 2

# find - ітератор, який повертає перший елемент у колекції, який задовольняє певну умову
numbers = [1, 2, 3, 4, 5]
puts numbers.find {|i| i.even?} # виведе 2

# find_all - ітератор, який повертає всі елементи у колекції, які задовольняють певну умову
numbers = [1, 2, 3, 4, 5]
even_numbers = numbers.find_all {|i| i.even?}
puts even_numbers.inspect # виведе [2, 4]

# partition - ітератор, який розділяє колекцію на дві колекції - одну з елементами, які задовольняють певну умову, та іншу з тими, що не задовольняють
numbers = [1, 2, 3, 4, 5]
even, odd = numbers.partition {|i| i.even?}
puts even.inspect # виведе [2, 4]
puts odd.inspect # виведе [1, 3, 5]

# drop - ітератор, який повертає колекцію, яка містить всі елементи після певного елемента у колекції
numbers = [1, 2, 3, 4, 5]
puts numbers.drop(2).inspect # виведе [3, 4, 5]

# drop_while - ітератор, який повертає колекцію, яка містить всі елементи у колекції, починаючи від певного елемента, який не задовольняє певну умову:
numbers = [1, 2, 3, 4, 5]
puts numbers.drop_while {|i| i < 3}.inspect # виведе [3, 4, 5]

# take - ітератор, який повертає колекцію, яка містить певну кількість елементів з початку колекції
numbers = [1, 2, 3, 4, 5]
puts numbers.take(2).inspect # виведе [1, 2]


# take_while - ітератор, який повертає колекцію, яка містить всі елементи у колекції до першого елемента, який не задовольняє певну умову
numbers = [1, 2, 3, 4, 5]
puts numbers.take_while {|i| i < 3}.inspect # виведе [1, 2]

# map - ітератор, який створює нову колекцію, використовуючи певну функцію для кожного елементу у початковій колекції:
numbers = [1, 2, 3, 4, 5]
squares = numbers.map {|i| i * i}
puts squares.inspect # виведе [1, 4, 9, 16, 25]

# inject - ітератор, який обчислює певне значення, використовуючи всі елементи у колекції та певну функцію:
numbers = [1, 2, 3, 4, 5]
sum = numbers.inject {|result, element| result + element}
puts sum # виведе 15


# Знайдіть суму всіх чисел масиву
numbers = [1, 2, 3, 4, 5]
sum = numbers.reduce(0) {|acc, i| acc + i}
puts sum # виведе 15


# Знайдіть найбільше число в масиві
numbers = [4, 2, 7, 1, 9, 5]
max_number = numbers.reduce {|acc, i| acc > i ? acc : i}
puts max_number # виведе 9

# Виведіть всі ключі та значення хешу
hash = {a: 1, b: 2, c: 3}
hash.each do |key, value|
  puts "Key: #{key}, Value: #{value}"
end

# Перетворіть масив чисел у масив рядків
numbers = [1, 2, 3, 4, 5]
string_numbers = numbers.map {|i| i.to_s}
puts string_numbers # виведе ["1", "2", "3", "4", "5"]

# Виведіть всі парні числа масиву:
numbers = [1, 2, 3, 4, 5]
even_numbers = numbers.select {|i| i % 2 == 0}
puts even_numbers # виведе [2, 4]


# Виведіть всі значення хешу, які є парними числами
hash = {a: 1, b: 2, c: 3, d: 4}
even_values = hash.select {|key, value| value % 2 == 0}.values
puts even_values # виведе [2, 4]


# ---------- block -----------------
# У Ruby блок - це шматок коду, який може передаватися як аргумент до методу. Блоки використовуються для виконання додаткового коду всередині методу.

# Використання блоку для ітерації по масиву
numbers = [1, 2, 3, 4, 5]
numbers.each do |num|
  puts num
end

# Пошук максимального значення у масиві
def max_value(array)
  max = array[0]
  array.each do |element|
    max = element if element > max
  end
  max
end

numbers = [10, 50, 20, 30, 40]
puts max_value(numbers) #=> 50


# Пошук середнього значення у масиві
def average(array)
  sum = array.reduce(0) { |acc, element| acc + element }
  sum / array.length.to_f
end

numbers = [10, 20, 30, 40, 50]
puts average(numbers) #=> 30.0


# Функція, яка зберігає значення в глобальній змінній
$global_variable = []

def add_to_list(item)
  $global_variable << item
  yield if block_given?
end

add_to_list("item1") #=> $global_variable = ["item1"]
add_to_list("item2") { puts "Added to list!" } #=> $global_variable = ["item1", "item2"]; виведеться "Added to list!"


# Функція, яка повертає значення
def calculate(num1, num2)
  result = yield(num1, num2) if block_given?
  result || "No block given"
end

sum = calculate(10, 20) { |a, b| a + b } #=> 30
puts sum

difference = calculate(10, 20) { |a, b| a - b } #=> -10
puts difference

product = calculate(10, 20) #=> "No block given"
puts product


# Функція, яка дозволяє вибирати між двома блоками
def choose_block(value)
  if value == 1
    yield "First block"
  else
    yield "Second block"
  end
end

choose_block(1) { |message| puts message } #=> "First block"
choose_block(2) { |message| puts message } #=> "Second block"


# Функція, яка повертає масив зі значеннями, перетвореними за допомогою блоку
def map_array(arr)
  result = []
  arr.each { |element| result << yield(element) }
  result
end

arr = [1, 2, 3, 4, 5]
squared = map_array(arr) { |num| num ** 2 } #=> [1, 4, 9, 16, 25]
doubled = map_array(arr) { |num| num * 2 } #=> [2, 4, 6, 8, 10]


# --------- Proc ---------------
# Ruby Proc - це об'єкт, який містить блок коду, який може бути переданий в якості аргументу іншій функції або збережений як змінна, і може бути викликаний в будь-який час.

#  Proc - це передача його в метод фільтрації масиву:

my_proc = Proc.new { |x| x > 5 }
# Фільтрування масиву з використанням Proc
my_array = [2, 4, 6, 8, 10]
filtered_array = my_array.select(&my_proc)
# Виведення результату
puts filtered_array.inspect # повинно вивести [6, 8, 10]



# Інший приклад використання Proc полягає в тому, що він може бути використаний як альтернатива блокові:
# Використання Proc як альтернативи блоку
def my_method(my_proc)
  puts "Before Proc"
  my_proc.call
  puts "After Proc"
end
my_proc = Proc.new { puts "Inside Proc" }
my_method(my_proc)


# Ще один приклад використання Proc полягає в тому, що він може бути використаний для збереження коду, який може бути використаний в багатьох місцях:
# Використання Proc для збереження коду
addition_proc = Proc.new { |x, y| x + y }
multiplication_proc = Proc.new { |x, y| x * y }
# Виклик Proc в різних контекстах
puts addition_proc.call(3, 4) # повинно вивести 7
puts multiplication_proc.call(3, 4) # повинно вивести 12



#  ------------- lambda ------------
# Лямбда-вирази в Ruby - це анонімні функції, які можуть бути передані як аргументи іншим функціям або збережені у змінній для подальшого використання.

# Використання лямбди для збільшення значення змінної
increment = lambda { |x| x + 1 }
increment.call(5) #=> 6


# Використання лямбди для збільшення значення всіх елементів масиву
arr = [1, 2, 3]
increment = lambda { |n| n + 1 }
new_arr = arr.map(&increment) #=> [2, 3, 4]


# Використання лямбди як методу об'єкту
str = "hello world"
reverse_str = str.each_char.map(&:upcase).reverse.join


# Використання лямбди для знаходження мінімального значення
min_num = lambda { |a, b| a < b ? a : b }
min_num.call(5, 3) #=> 3


# Використання лямбди для визначення типу даних
is_string = lambda { |obj| obj.is_a?(String) }
is_string.call("hello") #=> true
is_string.call(123) #=> false


# Використання лямбди для генерації HTML-коду
tag = lambda { |name, content| "<#{name}>#{content}</#{name}>" }
tag.call("h1", "Hello world") #=> "<h1>Hello world</h1>"
