****** Taller 4 - Econometría avanzada ******

cd "C:\Users\caaya\OneDrive - Universidad de los Andes\universidad\8 semestre\Econometría avanzada\Talleres\Econometria-Avanzada-Taller-4"

//*Punto 1

*a

gl data "Data\Punto 1"
gl out "Output\Punto 1"


use "${data}\ausencia_data.dta", clear

histogram day, kdensity title("Grafico 1.1") note("Función de masa de probabilidad") ///
	saving("${out}/grafico1.1.gph", replace)


*e

eststo x : zip daysabs langpr mathpr female , inflate(_cons)
eststo y : zip daysabs langpr mathpr, inflate( daysabs )

esttab x y using "output1.doc"

