#method that received one parameter and return
#an array with the first letters of each word
def first_letters(string)
  #empty array
  arr = []
  #separte each how word and later take the first
  #letter of each word
  arr << string.split.map(&:chr).join
  #separate each letter with a coma
  arr[0].chars
end
# Pruebas

p first_letters("Hoy es miércoles y hace sol") == ["H", "e", "m", "y", "h", "s"]
p first_letters("tienes ocho candados indios nuevos omega") == ["t", "o", "c", "i", "n", "o"]