def chat (arreglo)
mayor=0
nuevo_arreglo=arreglo.map{|x| x.to_i}


  nuevo_arreglo.each do |ele|
  mayor=nuevo_arreglo.inject(0){|mayor , x| (mayor>x)? mayor : x}
    print "|"
    ele.times do |k|
      print "**"
    end
    print "\n"
  end
  print "El número mayor es #{mayor}  "
end


dato=ARGV
grafico=chat(dato)
