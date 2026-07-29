import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyCanonicalLaneLean

structure AdmittedObject where
  space : Type
  topology : TopologicalSpace space
  finiteDimension : ℕ
  coveringDimension : ℕ
  conclusion : coveringDimension ≤ finiteDimension

def DimTheoryWitnessClosed (O : AdmittedObject) : Prop :=
  O.conclusion

end DimensionTheoryAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse