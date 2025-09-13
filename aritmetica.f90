! Programa que permite al usuario realizar las operaciones aritméticas 
! de suma, resta, multiplicación y división de dos números.
program aritmetica
    ! Indicamos que no se usarán variable implícitas en este programa.
    implicit none

    ! Indica si el usuario seleccionó 'salir' o no.
    logical :: salir = .false.

    ! Opción introducida por el usuario.
    integer :: opcion

    do while(salir .eqv. .false.)
        call menu()
        read *, opcion

        select case (opcion)
            case (0)
                salir = .true.
            case (1)
                call sumar()
            case (2)
                call restar()
            case (3)
                call multiplicar()
            case (4)
                call dividir()
            case default
                print *, "Ha introducido una opción no válida."
        end select

        print *, "Saliendo..."
    end do
    
end program aritmetica

! Imprime el menú principal.
subroutine menu()
    print *, "0. Salir"
    print *, "1. Sumar"
    print *, "2. Restar"
    print *, "3. Multiplicar"
    print *, "4. Dividir"
end subroutine menu

! Realiza la suma de dos números introducidos por el usuario.
subroutine sumar()
    ! Variables donde se almacenan los números introducidos por el usuario.
    integer :: numero_1
    integer :: numero_2

    print *, "Introduzca el primer sumando: "
    read *, numero_1

    print *, "Introduzca el segundo sumando: "
    read *, numero_2

    print '(i0," + ",i0," = ",i0)', numero_1, numero_2, numero_1 + numero_2
end subroutine sumar

! Realiza la resta de dos números introducidos por el usuario.
subroutine restar()
    ! Variables donde se almacenan los números introducidos por el usuario.
    integer :: numero_1
    integer :: numero_2

    print *, "Introduzca el minuendo: "
    read *, numero_1

    print *, "Introduzca el sustraendo: "
    read *, numero_2

    print '(i0," - ",i0," = ",i0)', numero_1, numero_2, numero_1 - numero_2
end subroutine restar

! Realiza la multiplicación de dos números introducidos por el usuario.
subroutine multiplicar()
    ! Variables donde se almacenan los números introducidos por el usuario.
    integer :: numero_1
    integer :: numero_2

    print *, "Introduzca el primer factor: "
    read *, numero_1

    print *, "Introduzca el segundo factor: "
    read *, numero_2

    print '(i0," x ",i0, " = ",i0)', numero_1, numero_2, numero_1 * numero_2
end subroutine multiplicar

! Realiza la división de dos números introducidos por el usuario.
subroutine dividir()
    ! Variables donde se almacenan los números introducidos por el usuario.
    integer :: numero_1
    integer :: numero_2

    print *, "Introduzca el dividendo: "
    read *, numero_1

    print *, "Introduzca el divisor: "
    read *, numero_2

    print '(i0," / ",i0," = ",i0)', numero_1, numero_2, numero_1 / numero_2
end subroutine dividir