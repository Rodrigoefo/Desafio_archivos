def nota_mas_alta (arreglo)

mas_alta=[]
notas_destacadas=[]

externo=arreglo.count
  externo.times do |i|
      mas_alta=arreglo[i].map{|x| x.to_i}
      arreglo_entero=mas_alta.inject(0){|alta, va| (alta>va)? alta : va}
      notas_destacadas.push(arreglo_entero)
    end

  print notas_destacadas

end

data_raw=open("notas.data").readlines
data=data_raw.map{|elem| elem.chomp}
data_arreglo=data.map {|x| x.split(",")}

nota_del_alumno=nota_mas_alta(data_arreglo)
