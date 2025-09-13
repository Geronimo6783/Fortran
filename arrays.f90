! Programa principal.
program arrays
    ! Indícase que non se empregarán variábeis implícitas.
    implicit none
    
    ! Declaramos un 'array' unidimensional de 20 espazos estáticos.
    integer, dimension(20) :: array

    ! Declaramos ás variábeis 'sumatorio' e 'produtorio'.
    integer :: sumatorio, produtorio

    ! Recorremos o 'array' para que o usuario poña 20 números.
    integer :: recorredor = 0
    do while(recorredor < 20)
        print *, "Introduza o elemento", recorredor + 1, " :"
        read *, array(recorredor)
        recorredor = recorredor + 1
    end do

    ! Calculamos o sumatorio dos 20 números.
    recorredor = 0
    sumatorio = 0
    do while(recorredor < 20)
        sumatorio = sumatorio + array(recorredor)
        recorredor = recorredor + 1
    end do
    print *, "O sumatorio de tódolos elementos é ", sumatorio, "."

    ! Calculamos o produtorio dos 20 números.
    recorredor = 0
    do while(recorredor < 20)
        if (recorredor == 0) then
            produtorio = array(recorredor)
        else 
            produtorio = produtorio * array(recorredor)
        end if
        
        recorredor = recorredor + 1
    end do
    print *, "O produtorio de tódolos elementos é ", produtorio, "."

end program arrays