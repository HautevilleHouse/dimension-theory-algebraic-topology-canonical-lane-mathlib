import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyCanonicalLaneLean

structure CWComplexDimensionPackage where
  space : Type u
  topology : TopologicalSpace space
  cellDecomposition : List (Nat × Type v × (Type v → space))
  dimension : Nat
  closureFinite : Prop
  weakTopology : Prop
  dimensionSelected : Prop

structure CWComplexDimensionEvidence (C : CWComplexDimensionPackage) where
  closureFiniteClosed : C.closureFinite
  weakTopologyClosed : C.weakTopology
  dimensionSelectedClosed : C.dimensionSelected

def CWComplexDimensionClosed (C : CWComplexDimensionPackage) : Prop :=
  C.closureFinite ∧ C.weakTopology ∧ C.dimensionSelected

theorem cw_complex_dimension_closed_from_evidence
    (C : CWComplexDimensionPackage) (E : CWComplexDimensionEvidence C) :
    CWComplexDimensionClosed C := by
  exact And.intro E.closureFiniteClosed
    (And.intro E.weakTopologyClosed E.dimensionSelectedClosed)

end DimensionTheoryAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse