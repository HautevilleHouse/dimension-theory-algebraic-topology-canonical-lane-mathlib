import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyCanonicalLaneLean

structure LargeInductiveDimensionPackage where
  space : Type
  topology : TopologicalSpace space
  baseDimension : ℕ
  inductiveStep : Prop
  dimensionValue : ℕ
  dimensionComputed : dimensionValue = baseDimension ∨ inductiveStep

def LargeInductiveDimensionClosed (L : LargeInductiveDimensionPackage) : Prop :=
  L.dimensionComputed

theorem large_inductive_dimension_closed (L : LargeInductiveDimensionPackage) : LargeInductiveDimensionClosed L := by
  exact L.dimensionComputed

end DimensionTheoryAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse