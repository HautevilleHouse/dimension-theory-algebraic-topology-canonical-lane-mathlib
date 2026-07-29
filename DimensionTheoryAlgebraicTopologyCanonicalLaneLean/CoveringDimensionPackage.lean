import HautevilleHouse.DimensionTheoryAlgebraicTopologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyCanonicalLaneLean

structure CoveringDimensionPackage where
  space : Type u
  topology : TopologicalSpace space
  coveringDimension : ℕ
  finiteOpenCoverRefinementClosed : Prop
  coveringDimensionClosed : Prop

structure CoveringDimensionEvidence (C : CoveringDimensionPackage) where
  finiteOpenCoverRefinementClosedTerm : C.finiteOpenCoverRefinementClosed
  coveringDimensionClosedTerm : C.coveringDimensionClosed

def CoveringDimensionClosed (C : CoveringDimensionPackage) : Prop :=
  C.finiteOpenCoverRefinementClosed ∧ C.coveringDimensionClosed

theorem covering_dimension_closed_from_evidence (C : CoveringDimensionPackage) (E : CoveringDimensionEvidence C) :
    CoveringDimensionClosed C :=
  And.intro E.finiteOpenCoverRefinementClosedTerm E.coveringDimensionClosedTerm

end DimensionTheoryAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse
