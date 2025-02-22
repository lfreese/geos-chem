! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
!
! Auxiliary Routines File
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
! File                 : gckpp_Util.F90
! Equation file        : gckpp.kpp
! Output root filename : gckpp
!
! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~



MODULE gckpp_Util

  USE gckpp_Parameters
  IMPLICIT NONE

CONTAINS



! User INLINED Utility Functions

! End INLINED Utility Functions

! Utility Functions from KPP_HOME/util/util
! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
!
! UTIL - Utility functions
!   Arguments :
!
! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

! ****************************************************************
!
! InitSaveData - Opens the data file for writing
!   Parameters :
!
! ****************************************************************

      SUBROUTINE InitSaveData ()

      USE gckpp_Parameters

      open(10, file='gckpp.dat')

      END SUBROUTINE InitSaveData

! End of InitSaveData function
! ****************************************************************

! ****************************************************************
!
! SaveData - Write LOOKAT species in the data file
!   Parameters :
!
! ****************************************************************

      SUBROUTINE SaveData ()

      USE gckpp_Global
      USE gckpp_Monitor

      INTEGER i

      WRITE(10,999) (TIME-TSTART)/3600.D0,  &
                   (C(LOOKAT(i))/CFACTOR, i=1,NLOOKAT)
999   FORMAT(E24.16,100(1X,E24.16))

      END SUBROUTINE SaveData

! End of SaveData function
! ****************************************************************

! ****************************************************************
!
! CloseSaveData - Close the data file
!   Parameters :
!
! ****************************************************************

      SUBROUTINE CloseSaveData ()

      USE gckpp_Parameters

      CLOSE(10)

      END SUBROUTINE CloseSaveData

! End of CloseSaveData function
! ****************************************************************

! ****************************************************************
!
! GenerateMatlab - Generates MATLAB file to load the data file
!   Parameters :
!                It will have a character string to prefix each
!                species name with.
!
! ****************************************************************

      SUBROUTINE GenerateMatlab ( PREFIX )

      USE gckpp_Parameters
      USE gckpp_Global
      USE gckpp_Monitor


      CHARACTER(LEN=8) PREFIX
      INTEGER i

      open(20, file='gckpp.m')
      write(20,*) 'load gckpp.dat;'
      write(20,990) PREFIX
990   FORMAT(A1,'c = gckpp;')
      write(20,*) 'clear gckpp;'
      write(20,991) PREFIX, PREFIX
991   FORMAT(A1,'t=',A1,'c(:,1);')
      write(20,992) PREFIX
992   FORMAT(A1,'c(:,1)=[];')

      do i=1,NLOOKAT
        write(20,993) PREFIX, SPC_NAMES(LOOKAT(i)), PREFIX, i
993     FORMAT(A1,A6,' = ',A1,'c(:,',I2,');')
      end do

      CLOSE(20)

      END SUBROUTINE GenerateMatlab

! End of GenerateMatlab function
! ****************************************************************


! End Utility Functions from KPP_HOME/util/util
! End of UTIL function
! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
!
! Shuffle_user2kpp - function to copy concentrations from USER to KPP
!   Arguments :
!      V_USER    - Concentration of variable species in USER's order
!      V         - Concentrations of variable species (local)
!
! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

SUBROUTINE Shuffle_user2kpp ( V_USER, V )

! V_USER - Concentration of variable species in USER's order
  REAL(kind=dp) :: V_USER(NVAR)
! V - Concentrations of variable species (local)
  REAL(kind=dp) :: V(NVAR)

  V(25) = V_USER(1)
  V(27) = V_USER(2)
  V(11) = V_USER(3)
  V(19) = V_USER(4)
  V(3) = V_USER(5)
  V(4) = V_USER(6)
  V(12) = V_USER(7)
  V(26) = V_USER(8)
  V(18) = V_USER(9)
  V(10) = V_USER(10)
  V(15) = V_USER(11)
  V(5) = V_USER(12)
  V(6) = V_USER(13)
  V(7) = V_USER(14)
  V(16) = V_USER(15)
  V(17) = V_USER(16)
  V(14) = V_USER(17)
  V(13) = V_USER(18)
  V(21) = V_USER(19)
  V(8) = V_USER(20)
  V(9) = V_USER(21)
  V(22) = V_USER(22)
  V(24) = V_USER(23)
  V(20) = V_USER(24)
  V(1) = V_USER(25)
  V(2) = V_USER(26)
  V(23) = V_USER(27)

END SUBROUTINE Shuffle_user2kpp

! End of Shuffle_user2kpp function
! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
!
! Shuffle_kpp2user - function to restore concentrations from KPP to USER
!   Arguments :
!      V         - Concentrations of variable species (local)
!      V_USER    - Concentration of variable species in USER's order
!
! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

SUBROUTINE Shuffle_kpp2user ( V, V_USER )

! V - Concentrations of variable species (local)
  REAL(kind=dp) :: V(NVAR)
! V_USER - Concentration of variable species in USER's order
  REAL(kind=dp) :: V_USER(NVAR)

  V_USER(1) = V(25)
  V_USER(2) = V(27)
  V_USER(3) = V(11)
  V_USER(4) = V(19)
  V_USER(5) = V(3)
  V_USER(6) = V(4)
  V_USER(7) = V(12)
  V_USER(8) = V(26)
  V_USER(9) = V(18)
  V_USER(10) = V(10)
  V_USER(11) = V(15)
  V_USER(12) = V(5)
  V_USER(13) = V(6)
  V_USER(14) = V(7)
  V_USER(15) = V(16)
  V_USER(16) = V(17)
  V_USER(17) = V(14)
  V_USER(18) = V(13)
  V_USER(19) = V(21)
  V_USER(20) = V(8)
  V_USER(21) = V(9)
  V_USER(22) = V(22)
  V_USER(23) = V(24)
  V_USER(24) = V(20)
  V_USER(25) = V(1)
  V_USER(26) = V(2)
  V_USER(27) = V(23)

END SUBROUTINE Shuffle_kpp2user

! End of Shuffle_kpp2user function
! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
!
! GetMass - compute total mass of selected atoms
!   Arguments :
!      CL        - Concentration of all species (local)
!      Mass      - value of mass balance
!
! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

SUBROUTINE GetMass ( CL, Mass )

! CL - Concentration of all species (local)
  REAL(kind=dp) :: CL(NSPEC)
! Mass - value of mass balance
  REAL(kind=dp) :: Mass(1)


END SUBROUTINE GetMass

! End of GetMass function
! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~



! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

! Get_OHreactivity - returns the OH reactivity
! The OH reactivity is defined as the inverse of its lifetime.
! This routine was auto-generated using script OHreact_parser.py.
! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

SUBROUTINE Get_OHreactivity ( CC, RR, OHreact )

! CC - Concentrations of species (local)
  REAL(kind=dp) :: CC(NSPEC)
! RR - reaction rates (local)
  REAL(kind=dp) :: RR(NREACT)
! OHreact - OH reactivity [s-1]
  REAL(kind=dp) :: OHreact

  OHreact = RR(9)*CC(27) + RR(22)*CC(17) + RR(26)*CC(25) + RR(33)*CC(24)

END SUBROUTINE Get_OHreactivity
! End of Get_OHreactivity subroutine
! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

END MODULE gckpp_Util
