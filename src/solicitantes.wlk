import profesionales.*

class Persona {
	var property provinciaDondeVive
	
	method puedeSerAtendidoPor(unProfesional) = 
	unProfesional.provinciasDondePuedeTrabajar().contains(provinciaDondeVive)
	
}

class Institucion{
	const universidadesQueReconoce = #{}
	
	method puedeSerAtendidoPor(unProfesional) = 
	universidadesQueReconoce.contains(unProfesional.universidad())
	
	method agregarUniversidad(unaUniversidad){
		universidadesQueReconoce.add(unaUniversidad)
	}
	
	method quitarUniversidad(unaUniversidad){
		universidadesQueReconoce.remove(unaUniversidad)
	}
	
	
}

class Club{
	const provincias = #{}
	
	method agregarUniversidad(unaProv){
		provincias.add(unaProv)
	}
	
	method quitarUniversidad(unaProv){
		provincias.remove(unaProv)
	}
	
	method puedeSerAtendidoPor(unProfesional) = 
	not provincias.intersection(unProfesional.provinciasDondePuedeTrabajar()).isEmpty()
	
	
}
