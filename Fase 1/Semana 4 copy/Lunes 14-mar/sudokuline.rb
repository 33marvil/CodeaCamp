# def sudoku(array)
  #a = []
  a = $*.map{|a|(i=a=~/0/)?(v=*?1..?9).fill{|j|v-=[a[j+i-k=i%9],a[k+j*=9],a[j%26+i-i%3-i%27+k]]}+v.map{|k|$*.<<$`<<k<<$'}:p(a)}
  #p a
# end
# sudoku([702806519100740230005001070008000002610204053200000100070400800064078005821503907])
 arr = a[-1].scan(/./) 
    arr.each_with_index do |num, index|
      print num
      if index == 2 || index == 5 || index == 11 || index == 14 || index == 20 || index == 23 || index == 29 || index == 32 || index == 38 || index == 41 || index == 47 || index == 50 || index == 56 || index == 59 || index == 65 || index == 68 || index ==74 || index == 77
        print " | "
        elsif index == 26 || index == 53 || index == 80
          puts
          puts "- - - - - - - -"
      elsif index == 8 || index == 17 || index == 26 || index == 35 || index == 44 || index == 53 || index == 62 || index == 71 || index == 80
        puts 
      end
    end