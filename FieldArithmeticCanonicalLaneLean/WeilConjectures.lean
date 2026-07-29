import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FieldArithmeticCanonicalLaneLean

structure WeilConjecturesPackage where
  smoothProjectiveVariety : Type u
  finiteField : Type v
  zetaFunctionLocal : Type w
  rationality : Prop
  functionalEquation : Prop
  riemannHypothesis : Prop
  bettiNumberInterpretation : Prop

structure WeilConjecturesEvidence (W : WeilConjecturesPackage) where
  rationalityClosed : W.rationality
  functionalEquationClosed : W.functionalEquation
  riemannHypothesisClosed : W.riemannHypothesis
  bettiNumberInterpretationClosed : W.bettiNumberInterpretation

def WeilConjecturesClosed (W : WeilConjecturesPackage) : Prop :=
  W.rationality ∧ W.functionalEquation ∧ W.riemannHypothesis ∧ W.bettiNumberInterpretation

theorem weil_conjectures_closed_from_evidence
    (W : WeilConjecturesPackage) (E : WeilConjecturesEvidence W) :
    WeilConjecturesClosed W := by
  exact And.intro E.rationalityClosed
    (And.intro E.functionalEquationClosed
      (And.intro E.riemannHypothesisClosed E.bettiNumberInterpretationClosed))

end FieldArithmeticCanonicalLaneLean
end HautevilleHouse