import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyCanonicalLaneLean

structure SimplicialComplexPackage where
  vertexSet : Type u
  simplexSet : List (List (vertexSet))
  faceDeletion : (List vertexSet) → List vertexSet
  dimension : Nat → ℕ
  homologyGroups : ℕ → Type v
  eulerCharacteristic : ℤ
  chainComplexCondition : Prop
  boundaryMapCondition : Prop
  exactnessCondition : Prop

structure SimplicialComplexEvidence (S : SimplicialComplexPackage) where
  chainComplexConditionClosed : S.chainComplexCondition
  boundaryMapConditionClosed : S.boundaryMapCondition
  exactnessConditionClosed : S.exactnessCondition

def SimplicialComplexClosed (S : SimplicialComplexPackage) : Prop :=
  S.chainComplexCondition ∧ S.boundaryMapCondition ∧ S.exactnessCondition

theorem simplicial_complex_closed_from_evidence
    (S : SimplicialComplexPackage) (E : SimplicialComplexEvidence S) :
    SimplicialComplexClosed S := by
  exact And.intro E.chainComplexConditionClosed
    (And.intro E.boundaryMapConditionClosed E.exactnessConditionClosed)

end DimensionTheoryAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse