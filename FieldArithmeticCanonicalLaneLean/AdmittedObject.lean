import fieldArithmeticCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace FieldArithmeticCanonicalLaneLean

structure AdmittedObject where
  field : Type
  absoluteGaloisGroup : Type
  isGlobalField : Prop
  classGroup : Type
  classNumberFormula : Prop
  conclusion : classNumberFormula

def AdmittedObjectClosed (O : AdmittedObject) : Prop :=
  O.classNumberFormula

end FieldArithmeticCanonicalLaneLean
end HautevilleHouse