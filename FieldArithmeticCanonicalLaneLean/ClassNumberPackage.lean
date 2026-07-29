import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FieldArithmeticCanonicalLaneLean

structure ClassNumberPackage where
  fieldGlobal : GlobalField
  classNumberFinite : Prop
  classNumberFormula : Prop
  regulatorDefined : Prop

structure ClassNumberEvidence (C : ClassNumberPackage) where
  classNumberFiniteClosed : C.classNumberFinite
  classNumberFormulaClosed : C.classNumberFormula
  regulatorDefinedClosed : C.regulatorDefined

def ClassNumberClosed (C : ClassNumberPackage) : Prop :=
  C.classNumberFinite ∧ C.classNumberFormula ∧ C.regulatorDefined

theorem class_number_closed_from_evidence (C : ClassNumberPackage)
    (E : ClassNumberEvidence C) : ClassNumberClosed C := by
  exact And.intro E.classNumberFiniteClosed
    (And.intro E.classNumberFormulaClosed E.regulatorDefinedClosed)

end FieldArithmeticCanonicalLaneLean
end HautevilleHouse