import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FieldArithmeticCanonicalLaneLean

structure LocalFieldRamificationPackage where
  localField : Type u
  residueField : Type v
  valuation : Prop
  ramificationIndex : Prop
  inertiaDegree : Prop
  totalRamification : Prop

structure LocalFieldRamificationEvidence (L : LocalFieldRamificationPackage) where
  valuationClosed : L.valuation
  ramificationIndexClosed : L.ramificationIndex
  inertiaDegreeClosed : L.inertiaDegree
  totalRamificationClosed : L.totalRamification

def LocalFieldRamificationClosed (L : LocalFieldRamificationPackage) : Prop :=
  L.valuation ∧ L.ramificationIndex ∧ L.inertiaDegree ∧ L.totalRamification

theorem local_field_ramification_closed_from_evidence
    (L : LocalFieldRamificationPackage) (E : LocalFieldRamificationEvidence L) :
    LocalFieldRamificationClosed L := by
  exact And.intro E.valuationClosed
    (And.intro E.ramificationIndexClosed
      (And.intro E.inertiaDegreeClosed E.totalRamificationClosed))

end FieldArithmeticCanonicalLaneLean
end HautevilleHouse