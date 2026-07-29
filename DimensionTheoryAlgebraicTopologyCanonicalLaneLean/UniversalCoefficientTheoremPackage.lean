import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyCanonicalLaneLean

structure UniversalCoefficientTheoremPackage where
  homologyGroups : ℕ → Type u
  cohomologyGroups : ℕ → Type v
  coeffModule : Type w
  extSequence : Type x
  splitCondition : Prop
  universalCoefficientTheoremStatement : Prop
  extSequenceExactness : Prop

structure UniversalCoefficientTheoremEvidence (U : UniversalCoefficientTheoremPackage) where
  universalCoefficientTheoremStatementClosed : U.universalCoefficientTheoremStatement
  extSequenceExactnessClosed : U.extSequenceExactness

def UniversalCoefficientTheoremClosed (U : UniversalCoefficientTheoremPackage) : Prop :=
  U.universalCoefficientTheoremStatement ∧ U.extSequenceExactness

theorem universal_coefficient_theorem_closed_from_evidence
    (U : UniversalCoefficientTheoremPackage) (E : UniversalCoefficientTheoremEvidence U) :
    UniversalCoefficientTheoremClosed U := by
  exact And.intro E.universalCoefficientTheoremStatementClosed
    E.extSequenceExactnessClosed

end DimensionTheoryAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse