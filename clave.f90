! Programa principal que solicita al usuario una clave secreta hasta que la introduzca correctamente.
program clave
    ! Declaramos que no se usarán variables implícitas.
    implicit none
    
    ! Constante que almacena el valor de la clave.
    integer, parameter :: CLAVE_SECRETA = 123

    ! Variable que almacena el valor introducido por teclado por el usuario.
    integer :: valor_introducido

    do while(valor_introducido /= CLAVE_SECRETA)
        print *, "Introduzca la clave secreta: "
        read *, valor_introducido
    end do
    
    print *, "Clave secreta introducida correctamente."

end program clave