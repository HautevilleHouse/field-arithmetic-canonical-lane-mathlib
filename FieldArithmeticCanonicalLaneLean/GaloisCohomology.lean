import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FieldArithmeticCanonicalLaneLean

structure GaloisCohomologyPackage where
  field : Type u
  absoluteGaloisGroup : Type v
  continuousCohomology : Type w
  hilbertTheorem90 : Prop
  kummerTheory : Prop
  poitouTateDuality : Prop

structure GaloisCohomologyEvidence (G : GaloisCohomologyPackage) where
  hilbertTheorem90Closed : G.hilbertTheorem90
  kummerTheoryClosed : G.kummerTheory
  poitouTateDualityClosed : G.poitouTateDuality

def GaloisCohomologyClosed (G : GaloisCohomologyPackage) : Prop :=
  G.hilbertTheorem90 ∧ G.kummerTheory ∧ G.poitouTateDuality

theorem galois_cohomology_closed_from_evidence
    (G : GaloisCohomologyPackage) (E : GaloisCohomologyEvidence G) :
    GaloisCohomologyClosed G := by
  exact And.intro E.hilbertTheorem90Closed
    (And.intro E.kummerTheoryClosed E.poitouTateDualityClosed)

end FieldArithmeticCanonicalLaneLean
end HautevilleHouse