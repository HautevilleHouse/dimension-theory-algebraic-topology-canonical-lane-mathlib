import HautevilleHouse.DimensionTheoryAlgebraicTopologyCanonicalLaneLean.CoveringDimensionPackage

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyCanonicalLaneLean

structure InductiveDimensionPackage {C : CoveringDimensionPackage} where
  space : Type u
  topology : TopologicalSpace space
  inductiveDimension : ℕ
  largeInductiveDimensionLemma : Prop
  subspaceDimensionLowerBound : Prop
  inductiveDimensionClosed : Prop

structure InductiveDimensionEvidence {C : CoveringDimensionPackage} (I : InductiveDimensionPackage C) where
  largeInductiveDimensionLemmaTerm : I.largeInductiveDimensionLemma
  subspaceDimensionLowerBoundTerm : I.subspaceDimensionLowerBound
  inductiveDimensionClosedTerm : I.inductiveDimensionClosed

def InductiveDimensionClosed {C : CoveringDimensionPackage} (I : InductiveDimensionPackage C) : Prop :=
  I.largeInductiveDimensionLemma ∧ I.subspaceDimensionLowerBound ∧ I.inductiveDimensionClosed

theorem inductive_dimension_closed_from_evidence {C : CoveringDimensionPackage} (I : InductiveDimensionPackage C) (E : InductiveDimensionEvidence I) :
    InductiveDimensionClosed I :=
  And.intro E.largeInductiveDimensionLemmaTerm (And.intro E.subspaceDimensionLowerBoundTerm E.inductiveDimensionClosedTerm)

end DimensionTheoryAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse
