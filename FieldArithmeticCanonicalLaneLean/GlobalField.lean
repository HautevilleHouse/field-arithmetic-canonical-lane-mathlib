import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FieldArithmeticCanonicalLaneLean

structure GlobalField where
  fieldType : Type
  char : ℕ
  absoluteValue : fieldType → ℝ
  productFormula : fieldType → ℝ → Prop
  hassePrinciple : Prop

structure GlobalFieldEvidence (F : GlobalField) where
  charDefined : F.char ≠ 0 ∨ F.char = 0
  productFormulaClosed : F.productFormula
  hassePrincipleClosed : F.hassePrinciple

def GlobalFieldClosed (F : GlobalField) : Prop :=
  (F.char ≠ 0 ∨ F.char = 0) ∧ F.productFormula ∧ F.hassePrinciple

theorem global_field_closed_from_evidence (F : GlobalField) (E : GlobalFieldEvidence F) :
    GlobalFieldClosed F := by
  exact And.intro E.charDefined (And.intro E.productFormulaClosed E.hassePrincipleClosed)

end FieldArithmeticCanonicalLaneLean
end HautevilleHouse