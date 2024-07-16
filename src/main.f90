program main
! begin of the program
    USE ISO_FORTRAN_ENV
    implicit none
    ! declarations
    character(len=*), parameter :: input = 'hello world!'
    character (len = 20) :: first_name
    character(len = 20) :: charArray
    !
    INTEGER :: i, n
    ! structure
    call log(input)
    ! my loop
    do
        ! handle with the console
        write (*, '(a, 1x)', advance='no') '>'
        ! read input
        read (*, *) first_name 
        !call log(first_name)

        do i = 1, LEN_TRIM(first_name)
            !
            if (first_name(i:i) .NE. 'e') then  ! Check if character is not 'e'
                WRITE(*, '(a)') TRIM(first_name(i:i)) !--> retorna cada um dos caracteres da string, menos os 'e'
                charArray = charArray // TRIM(first_name(i:i))
            endif
            !
        end do
        WRITE(*,'(a)') charArray !--> retorna '��o�=R'
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