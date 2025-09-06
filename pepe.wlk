object pepe {
    var property categoria = cadete
    var property tipoBonoResultados = bonoPorcentaje
    var property tipoBonoPresentismo = bonoNormal
    var property faltas = 0
    var saldo = 0

    method neto() = categoria.neto()
    method bonoResultados() = tipoBonoResultados.bono(self)
    method bonoPresentismo() = tipoBonoPresentismo.bono(self)
	method cobrarSueldo(){
        saldo = self.neto() + self.bonoResultados() + self.bonoPresentismo()
    }
    method saldo() = saldo
}


object gerente {
  method neto() = 15000
}

object cadete{
    method neto() = 20000
}

object bonoPorcentaje{
    method bono(empleado) = empleado.neto() * (0.1) 
}

object bonoFijo{
    method bono(empleado) = 800
}

object bonoNulo{
    method bono(empleado) = 0
}

object bonoNormal{
    method bono(empleado) = if(empleado.faltas() == 0){
        2000
    }else if(empleado.faltas() == 1){
        1000
    }else{
        0
    }
}

object bonoAjuste{
    method bono(empleado) = if(empleado.faltas() == 0){
        100
    }else{
        0
    }
}

object bonoDemagogico{
    method bono(empleado) = if(empleado.neto() < 18000){
        500
    }else{
        300
    }
}
