import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyCanonicalLaneLean

structure KunnethPackage where
  spaceA : Type u
  spaceB : Type v
  productSpace : Type w
  cohomologyA : ℕ → Type x
  cohomologyB : ℕ → Type y
  cohomologyProduct : ℕ → Type z
  tensorProductDefined : Prop
  spectralSequenceDegenerates : Prop
  isomorphismExists : Prop
  kunnethClosed : Prop
  tensorProductDefinedTerm : tensorProductDefined
  spectralSequenceDegeneratesTerm : spectralSequenceDegenerates
  isomorphismExistsTerm : isomorphismExists

def kunnethClosed (K : KunnethPackage) : Prop :=
  K.tensorProductDefined ∧ K.spectralSequenceDegenerates ∧ K.isomorphismExists

theorem kunneth_closed_from_package (K : KunnethPackage) : kunnethClosed K :=
  And.intro K.tensorProductDefinedTerm (And.intro K.spectralSequenceDegeneratesTerm K.isomorphismExistsTerm)

end DimensionTheoryAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse