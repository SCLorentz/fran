program main
!implicit none
    ! declarations here
    character (len = 15) :: first_name
    !
    write (*, '(a)') 'Hello world'
    !
    do
      write (*, '(a, 1x)', advance='no') '>'
    
      read (*, *) first_name 
      write (*, '(a)') first_name
    end do

end program main