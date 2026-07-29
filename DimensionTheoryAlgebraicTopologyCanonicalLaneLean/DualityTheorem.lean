import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyCanonicalLaneLean

structure DualityPackage where
  spaceM : Type u
  orientationClass : Type v
  cohomology : ℕ → Type w
  homology : ℕ → Type x
  capProduct : ℕ → ℕ → (cohomology p → homology q → homology (p-q))
  isomorphism : ℕ → (cohomology n → homology (dim - n))
  poincareDuality : Prop
  dim : ℕ
  orientationClassDefined : orientationClass
  cohomologyDefined : cohomology
  homologyDefined : homology
  capProductDefined : capProduct
  isomorphismDefined : isomorphism
  poincareDualityTerm : poincareDuality

def dualityClosed (D : DualityPackage) : Prop :=
  D.poincareDuality

theorem duality_closed_from_package (D : DualityPackage) : dualityClosed D :=
  D.poincareDualityTerm

end DimensionTheoryAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse