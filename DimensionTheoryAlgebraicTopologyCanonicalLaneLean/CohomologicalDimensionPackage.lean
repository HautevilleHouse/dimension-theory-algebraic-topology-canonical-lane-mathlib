import HautevilleHouse.DimensionTheoryAlgebraicTopologyCanonicalLaneLean.InductiveDimensionPackage

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyCanonicalLaneLean

structure CohomologicalDimensionPackage {C : CoveringDimensionPackage} {I : InductiveDimensionPackage C} where
  space : Type u
  topology : TopologicalSpace space
  cohomologicalDimension : ℕ
  universalCoefficientIsomorphismClosed : Prop
  cohomologicalDimensionAgreesClosed : Prop
  cohomologicalDimensionClosed : Prop

structure CohomologicalDimensionEvidence {C : CoveringDimensionPackage} {I : InductiveDimensionPackage C} (H : CohomologicalDimensionPackage C I) where
  universalCoefficientIsomorphismClosedTerm : H.universalCoefficientIsomorphismClosed
  cohomologicalDimensionAgreesClosedTerm : H.cohomologicalDimensionAgreesClosed
  cohomologicalDimensionClosedTerm : H.cohomologicalDimensionClosed

def CohomologicalDimensionClosed {C : CoveringDimensionPackage} {I : InductiveDimensionPackage C} (H : CohomologicalDimensionPackage C I) : Prop :=
  H.universalCoefficientIsomorphismClosed ∧ H.cohomologicalDimensionAgreesClosed ∧ H.cohomologicalDimensionClosed

theorem cohomological_dimension_closed_from_evidence {C : CoveringDimensionPackage} {I : InductiveDimensionPackage C} (H : CohomologicalDimensionPackage C I) (E : CohomologicalDimensionEvidence H) :
    CohomologicalDimensionClosed H :=
  And.intro E.universalCoefficientIsomorphismClosedTerm (And.intro E.cohomologicalDimensionAgreesClosedTerm E.cohomologicalDimensionClosedTerm)

end DimensionTheoryAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse
