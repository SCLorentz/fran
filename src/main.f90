program main
! begin of the program
    USE ISO_FORTRAN_ENV
    implicit none
    ! declarations
    character(len = *), parameter :: msg = 'hello world!'
    character (len = 255) :: input
    CHARACTER(LEN=12), DIMENSION(:), ALLOCATABLE :: splited
    !
    INTEGER :: i, n
    ! structure
    call write(msg)
    ! my loop
    do
        ! handle with the console
        write (*, '(a, 1x)', advance='no') '>'
        ! read msg
        call read(input)
        !
        call write(input)
        call split(input, splited)
        
        do i = 1, size(splited)
            call write(splited(i))
        end do
        ! end of the loop
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

    subroutine read(input)
        character(len = *), intent(out) :: input
        read (*, '(a)') input
    end subroutine read
    
    ! convert integer to string
    function to_string(n) result(res)
        integer, intent(in) :: n
        character(len = 10) :: res
        !
        write(res,'(i10)') n
    end function to_string
    !
    SUBROUTINE split(str, result)
        character(LEN=*), INTENT(IN) :: str
        character(LEN=*), DIMENSION(:), ALLOCATABLE, INTENT(OUT) :: result
        integer :: i, j, n
        character(LEN=LEN(str)) :: word
    
        n = 1
        do i = 1, LEN_TRIM(str)
            if (str(i:i) == ' ') then
                n = n + 1
            end if
        end do
    
        allocate(result(n))
        i = 1
        j = 1
        do while (i <= LEN_TRIM(str))
            if (str(i:i) /= ' ') then
                word(j:j) = str(i:i)
                j = j + 1
            else
                result(n) = word(1:j-1)
                n = n - 1
                j = 1
                word = ''
            end if
            i = i + 1
        end do
        result(1) = word(1:j-1)
    end subroutine split
! end of the program
end program main