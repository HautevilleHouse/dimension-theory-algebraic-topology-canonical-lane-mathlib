import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyCanonicalLaneLean

structure BettiNumbersPackage where
  space : Type u
  homologyGroups : ℕ → Type v
  bettiNumbers : ℕ → ℕ
  eulerCharacteristic : ℤ
  poincarePolynomial : Polynomial ℤ
  bettiNumberDefinition : Prop
  eulerPoincareFormula : Prop
  homologyRankConsistency : Prop

structure BettiNumbersEvidence (B : BettiNumbersPackage) where
  bettiNumberDefinitionClosed : B.bettiNumberDefinition
  eulerPoincareFormulaClosed : B.eulerPoincareFormula
  homologyRankConsistencyClosed : B.homologyRankConsistency

def BettiNumbersClosed (B : BettiNumbersPackage) : Prop :=
  B.bettiNumberDefinition ∧ B.eulerPoincareFormula ∧ B.homologyRankConsistency

theorem betti_numbers_closed_from_evidence
    (B : BettiNumbersPackage) (E : BettiNumbersEvidence B) :
    BettiNumbersClosed B := by
  exact And.intro E.bettiNumberDefinitionClosed
    (And.intro E.eulerPoincareFormulaClosed E.homologyRankConsistencyClosed)

end DimensionTheoryAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse