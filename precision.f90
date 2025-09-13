! Programa principal.
program programa
    ! Indícase que non se empregarán variábeis implícitas.
    implicit none

    ! Bloque onde se empregan variábeis reais de distintas precisións.
    block
        ! Úsase o módulo 'iso_c_binding' para poder utilizar 
        use, intrinsic :: iso_c_binding, only: sp => c_float, dp => c_double
        
        ! Variábel real de 32 bits de precisión.
        real(sp) :: float32

        ! Variábel real de 64 bits de precisión.
        real(dp) :: float64

        ! Solicítase ó usuario que introduza o valor das variábeis.
        print *, "Introduza unha variábel numérica real de 32 bits de precisión: "
        read *, float32

        print *, "Introduza unha variábel numérica real de 64 bits de precisión: "
        read *, float64

        ! Realízanse algunhas operacións matemáticas e amósase o resultado por pantalla.
        print *, "float32 + float64 = ", float32 + float64
        print *, "float64 - float32 = ", float64 - float32
    end block
    
end program programa