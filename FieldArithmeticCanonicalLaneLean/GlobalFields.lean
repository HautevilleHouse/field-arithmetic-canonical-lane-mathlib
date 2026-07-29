import fieldArithmeticCanonicalLaneLean.ClassFieldTheory

/-!
# Global Fields Package
-/

namespace HautevilleHouse
namespace FieldArithmeticCanonicalLaneLean

structure GlobalFieldsPackage (C : ClassFieldTheoryPackage) where
  numberFieldCase : Prop
  functionFieldCase : Prop
  productFormula : Prop
  finitePlaceUniformity : Prop
  adelicFormulation : Prop

structure GlobalFieldsEvidence {C : ClassFieldTheoryPackage}
    (G : GlobalFieldsPackage C) where
  numberFieldCaseClosed : G.numberFieldCase
  functionFieldCaseClosed : G.functionFieldCase
  productFormulaClosed : G.productFormula
  finitePlaceUniformityClosed : G.finitePlaceUniformity
  adelicFormulationClosed : G.adelicFormulation

def GlobalFieldsClosed {C : ClassFieldTheoryPackage}
    (G : GlobalFieldsPackage C) : Prop :=
  G.numberFieldCase ∧ G.functionFieldCase ∧
  G.productFormula ∧ G.finitePlaceUniformity ∧ G.adelicFormulation

theorem global_fields_closed_from_evidence {C : ClassFieldTheoryPackage}
    (G : GlobalFieldsPackage C) (E : GlobalFieldsEvidence G) :
    GlobalFieldsClosed G := by
  exact And.intro E.numberFieldCaseClosed
    (And.intro E.functionFieldCaseClosed
      (And.intro E.productFormulaClosed
        (And.intro E.finitePlaceUniformityClosed E.adelicFormulationClosed)))

end FieldArithmeticCanonicalLaneLean
end HautevilleHouse