! Programa principal.
program name
    ! Indicamos que non declararemos variábeis implícitas.
    implicit none
    
    ! Variables a utilizar no programa.
    integer :: x,y,z

    ! Solicitamos ó usuario que introduza os valores das variábeis.
    print *, "Introduza o valor de x: "
    read *, x

    print *, "Introduza o valor de y: "
    read *, y

    print *, "Introduza o valor de z: "
    read *, z

    ! Mostramos os cadrados de tódalas variábeis.
    print *, "O cadrado de x é: ", x * x
    print *, "O cadrado de y é: ", y * y
    print *, "O cadrado de z é: ", z * z

    ! Mostramos o resultado de elevar a tres tódalas variábeis introducidas polo usuario.
    print *, "O x elevado a 3 é: ", x ** 3
    print *, "O y elevado a 3 é: ", y ** 3
    print *, "O z elevado a 3 é: ", z ** 3
end program name