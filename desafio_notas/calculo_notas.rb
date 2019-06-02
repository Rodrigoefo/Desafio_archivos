def nota_mas_alta (arreglo)

solo_notas=arreglo.map{|x| x.to_i}

mas_alta=solo_notas.inject(0){|alta, i| (alta>i)? alta : i}
print "La nota más alta de #{arreglo[0]} es de  #{mas_alta} "




end

data_raw=open("notas.data").readlines
data=data_raw.map{|elem| elem.chomp}
data_arreglo=data.map {|x| x.split(",")}


nota_del_alumno=nota_mas_alta(data_arreglo[4])
