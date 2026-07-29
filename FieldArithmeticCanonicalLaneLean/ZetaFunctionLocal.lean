import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FieldArithmeticCanonicalLaneLean

structure ZetaFunctionLocalPackage where
  fieldGlobal : GlobalField
  localFactorDefined : Prop
  functionalEquation : Prop
  rationalityProved : Prop

structure ZetaFunctionLocalEvidence (Z : ZetaFunctionLocalPackage) where
  localFactorDefinedClosed : Z.localFactorDefined
  functionalEquationClosed : Z.functionalEquation
  rationalityProvedClosed : Z.rationalityProved

def ZetaFunctionLocalClosed (Z : ZetaFunctionLocalPackage) : Prop :=
  Z.localFactorDefined ∧ Z.functionalEquation ∧ Z.rationalityProved

theorem zeta_function_local_closed_from_evidence (Z : ZetaFunctionLocalPackage)
    (E : ZetaFunctionLocalEvidence Z) : ZetaFunctionLocalClosed Z := by
  exact And.intro E.localFactorDefinedClosed
    (And.intro E.functionalEquationClosed E.rationalityProvedClosed)

end FieldArithmeticCanonicalLaneLean
end HautevilleHouse