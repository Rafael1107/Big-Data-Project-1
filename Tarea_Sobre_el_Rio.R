#Variables a usar
obeja<-1
lobo<-2
pasto<-3
primero_en_tomar<-obeja

#Matrices a usar
acciones<-matrix(TRUE,nrow=7,ncol=3)
rownames(acciones)<-c("primera ida","primera vuelta","segunda ida","segunda vuelta","tercera ida","tercera vuelta","ultima ida")
colnames(acciones)<-c("obeja","lobo","pasto")
acciones_obejas<-acciones[,1]*matrix(c(1,0,0,1,0,0,1),ncol=1)
acciones_lobo<-acciones[,2]*matrix(c(0,0,1,0,0,0,0),ncol=1)
acciones_pasto<-acciones[,3]*matrix(c(0,0,0,0,1,0,0))
resultado<-cbind(acciones_obejas,acciones_lobo,acciones_pasto)*acciones
resultado2<-matrix(as.logical(resultado),nrow=7,ncol=3)
rownames(resultado2)<-c("primera ida","primera vuelta","segunda ida","segunda vuelta","tercera ida","tercera vuelta","ultima ida")
colnames(resultado2)<-c("obeja","lobo","pasto")
#Condicional
if(primero_en_tomar==obeja){print(resultado2)} else if (primero_en_tomar==lobo){print("si inicia con el, la obeja se comera el pasto")} else {print("Si inicia con el pasto, el lobo se comera a la obeja")}
#Iniciando con el lobo
primero_en_tomar<-lobo
if(primero_en_tomar==obeja){print(resultado2)} else if (primero_en_tomar==lobo){print("si inicia con el, la obeja se comera el pasto")} else {print("Si inicia con el pasto, el lobo se comera a la obeja")}
#Iniciando con el pasto
primero_en_tomar<-pasto
if(primero_en_tomar==obeja){print(resultado2)} else if (primero_en_tomar==lobo){print("si inicia con el, la obeja se comera el pasto")} else {print("Si inicia con el pasto, el lobo se comera a la obeja")}
#h