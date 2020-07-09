﻿# Ми маємо змоделювати файлову систему.
# Ви знаєте, що у ній зустрічаються файли та папки.
# Також ви знаєте, що у папки можна вкласти довільну кількість
# папок і файлів, а у файли нічого вкладати не можна.
# Як і файли, так і папки, мають ім'я та об’єм, тобто
# займають певне місце на диску.
#
# Користуючись об’єктним підходом, виділимо цю рису в окремий клас
# FileSystemElement - який матиме поля ім’я та об’єм. Ініціалізатор
# елементів цього класу прийматиме параметром ім’я, яка ставатиме іменем елементу.
#
# Далі, беручи цей клас за основу створимо клас FSFile.
# Цей клас додадково визначатиме, що будь-який файл займатиме об’єм рівний 1.
#
# Останнім класом в нас буде клас, який відповідатиме папкам FSFolder.
# Він володітиме списком всіх файлів, які входять у папку. Можна буде додавати
# файли до папки та отримати розмір папки.


# Вам слід зреалізувати наведену ієрархію класів.

# Клас, який представляє загальні риси елементів файлової системи:
# @name - назву елемента
# @size - його розмір
class FileSystemElement
  attr_reader :name, :size

  def initialize name
    @name = name
  end
end

# клас, який представляє окремий файл у файловій системі.
class FSFile < FileSystemElement
  def initialize name
    # слід додати виклик функції initialize батьківського класу
    # і передати в неї параметр name
    super name
    @size = 1
  end
end

# клас, який представляє папку у файловій системі. Папка може містити множину вкладених об’єктів
# файлової системи, тому ми вводимо змінну-об’єкту
# @files - множина ( масив ) всіх елементів поточної папки
#
class FSFolder < FileSystemElement
 @files = []

 def initialize name
  # слід додати виклик функції initialize батьківського класу
  # і передати в неї параметр name
  super name
  @files = []
 end

 def addFile file
  # слід додати до масиву файлів в папці файл-аргумент даного методу
  @files.push file
 end

 # даний метод рекурсивно проходять по всіх елементах папки.
 # якщо елемент буде файлом, то метод size поверне об’єм файлу
 # якщо елемент буде папкою, то метод має викликати метод size цієї папки
 # в результаті обходу вмісту папки, необхідно вивести загальний розмір цієї папки.
 def size i = 0
  result = 0

  return 0 if @files[i].class == NilClass
  result += @files[i].size
  result += @files[i+1].size

  result

  #result = 0

  #@files.each do|f|
  #    result += f.size
  #end

  #result
  end
end
