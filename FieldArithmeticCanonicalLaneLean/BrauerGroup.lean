import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FieldArithmeticCanonicalLaneLean

structure BrauerGroupPackage where
  field : Type u
  centralSimpleAlgebras : Type v
  brauerGroup : Type w
  tensorProduct : Prop
  exactSequence : Prop
  residueMaps : Prop

structure BrauerGroupEvidence (B : BrauerGroupPackage) where
  tensorProductClosed : B.tensorProduct
  exactSequenceClosed : B.exactSequence
  residueMapsClosed : B.residueMaps

def BrauerGroupClosed (B : BrauerGroupPackage) : Prop :=
  B.tensorProduct ∧ B.exactSequence ∧ B.residueMaps

theorem brauer_group_closed_from_evidence
    (B : BrauerGroupPackage) (E : BrauerGroupEvidence B) :
    BrauerGroupClosed B := by
  exact And.intro E.tensorProductClosed
    (And.intro E.exactSequenceClosed E.residueMapsClosed)

end FieldArithmeticCanonicalLaneLean
end HautevilleHouse