! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
! 
! Sparse Jacobian Data Structures File
! 
! Generated by KPP-2.3.3_gc symbolic chemistry Kinetics PreProcessor
!       (http://www.cs.vt.edu/~asandu/Software/KPP)
! KPP is distributed under GPL, the general public licence
!       (http://www.gnu.org/copyleft/gpl.html)
! (C) 1995-1997, V. Damian & A. Sandu, CGRER, Univ. Iowa
! (C) 1997-2005, A. Sandu, Michigan Tech, Virginia Tech
!     With important contributions from:
!        M. Damian, Villanova University, USA
!        R. Sander, Max-Planck Institute for Chemistry, Mainz, Germany
! 
! File                 : gckpp_JacobianSP.F90
! Equation file        : gckpp.kpp
! Output root filename : gckpp
! 
! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~



MODULE gckpp_JacobianSP

  PUBLIC
  SAVE


! Sparse Jacobian Data


  INTEGER, PARAMETER, DIMENSION(136) :: LU_IROW = (/ &
       1,  2,  2,  2,  2,  2,  2,  2,  2,  2,  2,  2, & ! index 1 - 12
       2,  2,  2,  2,  2,  2,  2,  3,  3,  4,  4,  5, & ! index 13 - 24
       5,  6,  6,  7,  7,  8,  8,  9,  9, 10, 10, 11, & ! index 25 - 36
      11, 12, 12, 13, 13, 14, 14, 14, 14, 15, 15, 16, & ! index 37 - 48
      16, 16, 16, 17, 17, 17, 17, 17, 17, 17, 17, 17, & ! index 49 - 60
      18, 18, 18, 18, 19, 19, 20, 20, 20, 20, 21, 21, & ! index 61 - 72
      22, 22, 22, 22, 23, 23, 23, 23, 23, 23, 23, 23, & ! index 73 - 84
      23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, & ! index 85 - 96
      23, 23, 23, 24, 24, 24, 24, 24, 24, 24, 24, 24, & ! index 97 - 108
      24, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, & ! index 109 - 120
      25, 25, 25, 26, 26, 26, 26, 26, 26, 27, 27, 27, & ! index 121 - 132
      27, 27, 27, 27 /)

  INTEGER, PARAMETER, DIMENSION(136) :: LU_ICOL = (/ &
       1,  2,  3,  4,  5,  6,  7,  8,  9, 10, 11, 12, & ! index 1 - 12
      13, 15, 16, 19, 21, 22, 26,  3, 27,  4, 27,  5, & ! index 13 - 24
      17,  6, 17,  7, 17,  8, 24,  9, 24, 10, 17, 11, & ! index 25 - 36
      27, 12, 27, 13, 24, 10, 14, 15, 17, 15, 17, 14, & ! index 37 - 48
      15, 16, 17,  5,  6,  7, 10, 14, 15, 16, 17, 25, & ! index 49 - 60
      11, 18, 19, 27, 19, 27, 13, 20, 21, 24, 21, 24, & ! index 61 - 72
      20, 21, 22, 24,  1,  3,  4,  5,  6,  7,  8,  9, & ! index 73 - 84
      10, 11, 12, 13, 15, 16, 17, 19, 21, 22, 23, 24, & ! index 85 - 96
      25, 26, 27,  8,  9, 13, 16, 17, 20, 21, 24, 25, & ! index 97 - 108
      26,  3,  4, 12, 15, 16, 17, 19, 21, 22, 23, 24, & ! index 109 - 120
      25, 26, 27, 18, 19, 24, 25, 26, 27, 11, 12, 18, & ! index 121 - 132
      19, 25, 26, 27 /)

  INTEGER, PARAMETER, DIMENSION(28) :: LU_CROW = (/ &
       1,  2, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, & ! index 1 - 12
      40, 42, 46, 48, 52, 61, 65, 67, 71, 73, 77,100, & ! index 13 - 24
     110,124,130,137 /)

  INTEGER, PARAMETER, DIMENSION(28) :: LU_DIAG = (/ &
       1,  2, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, & ! index 1 - 12
      40, 43, 46, 50, 59, 62, 65, 68, 71, 75, 95,107, & ! index 13 - 24
     121,128,136,137 /)


END MODULE gckpp_JacobianSP

