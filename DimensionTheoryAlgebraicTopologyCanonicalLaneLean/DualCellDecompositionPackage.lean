import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyCanonicalLaneLean

structure DualCellDecompositionPackage where
  originalComplex : Type u
  dualComplex : Type v
  dimensionPreservingDuality : Prop
  poincareDualityIsomorphism : Prop
  intersectionPairing : Type w
  fundamentalClass : Type x
  dualityTheorem : Prop
  orientationCondition : Prop

structure DualCellDecompositionEvidence (D : DualCellDecompositionPackage) where
  dimensionPreservingDualityClosed : D.dimensionPreservingDuality
  poincareDualityIsomorphismClosed : D.poincareDualityIsomorphism
  dualityTheoremClosed : D.dualityTheorem
  orientationConditionClosed : D.orientationCondition

def DualCellDecompositionClosed (D : DualCellDecompositionPackage) : Prop :=
  D.dimensionPreservingDuality ∧ D.poincareDualityIsomorphism ∧
  D.dualityTheorem ∧ D.orientationCondition

theorem dual_cell_decomposition_closed_from_evidence
    (D : DualCellDecompositionPackage) (E : DualCellDecompositionEvidence D) :
    DualCellDecompositionClosed D := by
  exact And.intro E.dimensionPreservingDualityClosed
    (And.intro E.poincareDualityIsomorphismClosed
      (And.intro E.dualityTheoremClosed E.orientationConditionClosed))

end DimensionTheoryAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse