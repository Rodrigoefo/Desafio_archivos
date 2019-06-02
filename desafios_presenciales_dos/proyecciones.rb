def primer_semestre(arreglo)
n=arreglo.count
resultado=[]
n.times do |x|
  if x<n/2
    resultado.push arreglo[x]*1.1
  else
    resultado.push arreglo[x]
  end
end
suma=resultado.inject(0){|sum, j| sum+j}
return suma

end
def segundo_semestre(arreglo)
n=arreglo.count
resultado=[]
n.times do |x|
  if x<n/2
    resultado.push arreglo[x]
  else
    resultado.push arreglo[x]*1.2
  end
end

suma=resultado.inject(0){|sum, j| sum+j}
return suma

end



data_raw=open("ventas_base.db").read
data=data_raw.split(",")
transformado=data.map{|x| x.to_i}


semestre_uno=primer_semestre(transformado)
semestre_dos=segundo_semestre(transformado)
puts semestre_uno
puts semestre_dos

File.open('resultados.data', 'w') do |file|
    file.puts semestre_uno
    file.puts semestre_dos

  end
