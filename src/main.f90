program main
! begin of the program
    USE ISO_FORTRAN_ENV
    implicit none
    ! declarations
    character(len=*), parameter :: msg = 'hello world!'
    character (len = 20) :: input, charArray
    !
    INTEGER :: i, n
    ! structure
    call log(msg)
    ! my loop
    do
        ! handle with the console
        write (*, '(a, 1x)', advance='no') '>'
        ! read msg
        read (*, *) input 
        !call log(input)

        input = TRIM(input)
        charArray = ''
        !
        do i = 1, LEN_TRIM(input)
            charArray = TRIM(charArray) // input(I:I)
        end do
        call log(charArray)
        ! end of the looop
    end do
contains
    ! functions here
    ! log values into the console
    subroutine log(msg)
        character(len = *), intent(in) :: msg
        ! write the values into the console
        write (*, '(a)') achar(27) // '[32m' // msg // achar(27) // '[0m'
        ! end of the function
    end subroutine log
! end of the program
end program main