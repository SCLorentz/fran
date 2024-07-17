program main
! begin of the program
    USE ISO_FORTRAN_ENV
    implicit none
    ! declarations
    character(len = *), parameter :: msg = 'hello world!'
    character (len = 20) :: input, charArray, num_as_string
    !
    INTEGER :: i, n
    ! structure
    call write(msg)
    ! my loop
    do
        ! handle with the console
        write (*, '(a, 1x)', advance='no') '>'
        ! read msg
        read (*, '(a)') input
        !call write(input)

        input = TRIM(input)
        charArray = ''
        !
        n = 0
        do i = 1, len(input)
            charArray = TRIM(charArray) // input(I:I)
            if (charArray(i:i) == 'f') then
                n = n + 1
            end if
        end do
        !
        if (n > 0) then
            call write(to_string(n))
        end if
        !
        call write(charArray)
        ! end of the looop
    end do
contains
    ! functions here

    ! write values into the console
    subroutine write(msg)
        ! declarations
        character(len = *), intent(in) :: msg
        ! write the value into the console
        write (*, '(a)') achar(27) // '[32m' // msg // achar(27) // '[0m'
        ! end of the function
    end subroutine write
    
    ! convert integer to string
    function to_string(n) result(res)
        integer, intent(in) :: n
        character(len=10) :: res
        write(res,'(i10)') n
    end function to_string
! end of the program
end program main