import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FieldArithmeticCanonicalLaneLean

structure ClassFieldPackage (F : GlobalField) where
  ideleClassGroup : Type
  artinReciprocity : F.absoluteValue → ideleClassGroup → Prop
  existenceTheorem : Prop
  functoriality : Prop

structure ClassFieldEvidence {F : GlobalField} (C : ClassFieldPackage F) where
  artinReciprocityClosed : C.artinReciprocity
  existenceTheoremClosed : C.existenceTheorem
  functorialityClosed : C.functoriality

def ClassFieldClosed {F : GlobalField} (C : ClassFieldPackage F) : Prop :=
  C.artinReciprocity ∧ C.existenceTheorem ∧ C.functoriality

theorem class_field_closed_from_evidence {F : GlobalField} (C : ClassFieldPackage F)
    (E : ClassFieldEvidence C) : ClassFieldClosed C := by
  exact And.intro E.artinReciprocityClosed
    (And.intro E.existenceTheoremClosed E.functorialityClosed)

end FieldArithmeticCanonicalLaneLean
end HautevilleHouse