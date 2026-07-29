import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyCanonicalLaneLean

structure CohomologyUniversalProperty where
  sourceSpace : Type u
  targetSpace : Type v
  cohomologyMap : (ℕ → Type w) → (ℕ → Type x)
  naturality : Prop
  uniqueness : Prop
  universalPropertyClosed : Prop
  sourceSpaceDefined : sourceSpace
  targetSpaceDefined : targetSpace
  cohomologyMapDefined : cohomologyMap
  naturalityTerm : naturality
  uniquenessTerm : uniqueness

def universalPropertyClosed (U : CohomologyUniversalProperty) : Prop :=
  U.naturality ∧ U.uniqueness

theorem universal_property_closed_from_package (U : CohomologyUniversalProperty) : universalPropertyClosed U :=
  And.intro U.naturalityTerm U.uniquenessTerm

end DimensionTheoryAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse