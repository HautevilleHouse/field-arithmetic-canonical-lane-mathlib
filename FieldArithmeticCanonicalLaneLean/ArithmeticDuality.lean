import fieldArithmeticCanonicalLaneLean.GlobalFields

/-!
# Arithmetic Duality Package
-/

namespace HautevilleHouse
namespace FieldArithmeticCanonicalLaneLean

structure ArithmeticDualityPackage {C : ClassFieldTheoryPackage}
    (G : GlobalFieldsPackage C) where
  poitouTateDuality : Prop
  artinVerdierDuality : Prop
  dualityForFiniteExtensions : Prop
  cupProductPairing : Prop
  localGlobalPrinciple : Prop

structure ArithmeticDualityEvidence {C : ClassFieldTheoryPackage}
    {G : GlobalFieldsPackage C} (D : ArithmeticDualityPackage G) where
  poitouTateDualityClosed : D.poitouTateDuality
  artinVerdierDualityClosed : D.artinVerdierDuality
  dualityForFiniteExtensionsClosed : D.dualityForFiniteExtensions
  cupProductPairingClosed : D.cupProductPairing
  localGlobalPrincipleClosed : D.localGlobalPrinciple

def ArithmeticDualityClosed {C : ClassFieldTheoryPackage}
    {G : GlobalFieldsPackage C} (D : ArithmeticDualityPackage G) : Prop :=
  D.poitouTateDuality ∧ D.artinVerdierDuality ∧
  D.dualityForFiniteExtensions ∧ D.cupProductPairing ∧ D.localGlobalPrinciple

theorem arithmetic_duality_closed_from_evidence {C : ClassFieldTheoryPackage}
    {G : GlobalFieldsPackage C} (D : ArithmeticDualityPackage G)
    (E : ArithmeticDualityEvidence D) : ArithmeticDualityClosed D := by
  exact And.intro E.poitouTateDualityClosed
    (And.intro E.artinVerdierDualityClosed
      (And.intro E.dualityForFiniteExtensionsClosed
        (And.intro E.cupProductPairingClosed E.localGlobalPrincipleClosed)))

end FieldArithmeticCanonicalLaneLean
end HautevilleHouse