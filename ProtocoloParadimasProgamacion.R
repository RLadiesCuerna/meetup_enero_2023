
################
#
# Diapositiva 22
#
################
# Todas las variables en R,  son objetos de una clase. 

a<-5
class(a)
datos<-c(5,8,'izq','naranja')
class(datos)
datos
lista<-list(5,TRUE,"naranja")
class(lista)


################
#
# Diapositiva 24
#
################
# Una misma función actua en función del tipo de parametros que recibe

 max(8,5,20)

 max("Maria","Juan","Mariana")


################
#
# Diapositiva 25
#
################

atendidos <- c(728,632,596,689,745,865,694,583,657,643,794,887)
class(atendidos)
help(ts)
atendidos2 <- ts(atendidos,frequency=12,start=c(2009,1))
atendidos2
class(atendidos2)
plot(atendidos2)


################
#
# Diapositiva 26
#
################
# Generamos el gráfico sin las etiquetas del eje X (xaxt="n"):
plot(atendidos2,xaxt="n",xlab="Mes",ylab=”Pacientes atendidos")
# Añadimos las etiquetas de los meses:
axis(1,at=time(atendidos2),
     labels=format(seq(as.Date("2009/1/1"), 
                   by="month", length=12),"%b"))




################
#
# Diapositiva 30
#
################
# Definamos una clase
setClass("cliente", slots=list(nombre="character", id="numeric", 
                 email="character", tel="character"))

# Ahora definimos un objeto (instancia) con la función new:
cliente1 <- new("cliente",nombre="Juan Ramon De la Fuente", 
        id=1002, email="jrfuente@unam.mx", tel="777-329-1777")


################
#
# Diapositiva 31
#
################

# Podemos modificar el valor de un atributo usando el operador @
cliente1@email<-"jramon.fuentes@unam.mx"
cliente1

################
#
# Diapositiva 32
#
################

# Redefinamos el metodo show()  para mostrar los datos de un objeto de la clase cliente 
# usando el  metodo generico de S4 setMethod 
setMethod("show",
          "cliente",
          function(object) {
            cat("Nombre:",object@nombre, "\n")
            cat("Id:",object@id, "\n")
            cat("email:", object@email, "\n")
            cat("telefono:",object@tel,"\n")
          }
)
cliente1

