fecha=input("Introduce la fecha ('formato Dia,DD/MM')")
fecha=fecha.lower()
diasemana=fecha[0:fecha.find(",")]
dianum=int(fecha[fecha.find(",")+1:fecha.find("/")])
mes=int(fecha[fecha.find("/")+1:])
if dianum>31 or mes>12:
    print("ERROR")
else:
    if diasemana in "lunes,martes,miercoles" :
        respuesta=input("se tomaron examenes???")
        if respuesta.lower()=="si":
            aprovados=int(input("aprovados??"))
            desaprovados=int(input("desaaprovados??"))
            print("porsentaje de aprovados:",(aprovados*100)/(aprovados+desaprovados),'%')
        else :
            print("SAFARON!!!!")
    elif diasemana=="jueves":
        asistencia=int(input("porsentaje de asistencia:"))
        if asistencia>50:
            print("cantidad aseptable")
        else:
            print("muy pocos")
    elif diasemana=="viernes":
        if dianum==1 and  (mes==1 or mes==7):
            print("comensando!!!!")
            alumnos=int(input("cantidad de alumnos:"))
            arancel=float(input("ARANCEL:$"))
            print("ingresototal",(alumnos*arancel))
        else:
            print("no hay novedad")
    else:
        print("ponga un dia correcto")
print("FIN")
            

        
          
