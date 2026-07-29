import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FieldArithmeticCanonicalLaneLean

structure LocalGlobalPackage (F : GlobalField) (C : ClassFieldPackage F) where
  quadraticForms : Prop
  hasseMinkowski : Prop
  centralSimpleAlgebras : Prop
  brauerHasseNoether : Prop
  space : Prop
  principle : Prop

structure LocalGlobalEvidence {F : GlobalField} {C : ClassFieldPackage F}
    (P : LocalGlobalPackage F C) where
  quadraticFormsClosed : P.quadraticForms
  hasseMinkowskiClosed : P.hasseMinkowski
  centralSimpleAlgebrasClosed : P.centralSimpleAlgebras
  brauerHasseNoetherClosed : P.brauerHasseNoether
  spaceClosed : P.space
  principleClosed : P.principle

def LocalGlobalClosed {F : GlobalField} {C : ClassFieldPackage F}
    (P : LocalGlobalPackage F C) : Prop :=
  P.quadraticForms ∧ P.hasseMinkowski ∧ P.centralSimpleAlgebras ∧
  P.brauerHasseNoether ∧ P.space ∧ P.principle

theorem local_global_closed_from_evidence {F : GlobalField} {C : ClassFieldPackage F}
    (P : LocalGlobalPackage F C) (E : LocalGlobalEvidence P) :
    LocalGlobalClosed P := by
  exact And.intro E.quadraticFormsClosed
    (And.intro E.hasseMinkowskiClosed
      (And.intro E.centralSimpleAlgebrasClosed
        (And.intro E.brauerHasseNoetherClosed
          (And.intro E.spaceClosed E.principleClosed))))

end FieldArithmeticCanonicalLaneLean
end HautevilleHouse