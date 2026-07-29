import HautevilleHouse.FieldArithmeticCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FieldArithmeticCanonicalLaneLean

structure GaloisRepresentationPackage where
  field : Type
  galoisGroup : Type
  representation : Type
  continuous : Prop
  semisimple : Prop

structure GaloisRepresentationEvidence (G : GaloisRepresentationPackage) where
  continuousClosed : G.continuous
  semisimpleClosed : G.semisimple

def GaloisRepresentationClosed (G : GaloisRepresentationPackage) : Prop :=
  G.continuous ∧ G.semisimple

theorem galois_representation_closed_from_evidence (G : GaloisRepresentationPackage) (E : GaloisRepresentationEvidence G) :
    GaloisRepresentationClosed G := by
  exact And.intro E.continuousClosed E.semisimpleClosed

end FieldArithmeticCanonicalLaneLean
end HautevilleHouse
