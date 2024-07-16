program main
!implicit none
    ! declarations here
    character (len = 15) :: first_name
    !
    write (*, '(a)') 'Hello world'
    print *, ''
    !
    do
      write (*, '(a)', advance='no') '> '
    
      read (*, *) first_name 
      print "(1x,a)",first_name
    end do
    
end program main