program main
! begin of the program
    implicit none
    ! declarations
    character(len=*), parameter :: input = 'hello world!'
    character (len = 20) :: first_name
    ! structure
    call log(input)
    ! my loop
    do
        ! handle with the console
        write (*, '(a, 1x)', advance='no') '>'
        ! read input
        read (*, *) first_name 
        call log(first_name)
        ! end of the looop
    end do
contains
    ! functions here
    ! log values into the console
    subroutine log(input)
        character(len=*), intent(in) :: input
        ! write the values into the console
        write (*, '(a)') achar(27) // '[32m' // input // achar(27) // '[0m'
        ! end of the function
    end subroutine log
! end of the program
end program main