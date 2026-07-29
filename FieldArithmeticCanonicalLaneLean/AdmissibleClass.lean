import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FieldArithmeticCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

end FieldArithmeticCanonicalLaneLean
end HautevilleHouse