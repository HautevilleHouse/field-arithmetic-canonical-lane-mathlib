import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FieldArithmeticCanonicalLaneLean

def ConstrainedFieldArithmeticClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_field_arithmetic_endgame (A : AdmissibleClass) :
    ConstrainedFieldArithmeticClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FieldArithmeticCanonicalLaneLean
end HautevilleHouse