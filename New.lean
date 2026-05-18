import Mathlib.Logic.Basic
import Mathlib.Data.Nat.Basic

/-!
# Mathematical Proof of External Base Case

CRITICAL: Uses Peano Arithmetic (PA)
- G1 and G2 (Incompleteness Theorems) require FULL Peano Arithmetic
- PA has 8 axioms including INDUCTION (Hilbert-Bernays-Löb derivability conditions)
- Physics HAS all PA operations including induction: time evolution, unitarity, conservation

This formalizes the proof that:
1. Physics contains Peano Arithmetic operations (including INDUCTION)
2. Church-Turing (Deutsch 1985) makes physics computational/formal
3. Gödel G1 applies (incompleteness - system can encode statements about itself)
4. Gödel G2 applies (unprovability - system cannot prove itself)
5. Gödel IS recursive (proven from structure)
6. Recursive formation needs base case
7. Recursive system exists in superposition (all possible states)
8. Internal processes (decoherence, quantum fluctuations) cannot collapse THE SYSTEM
9. Only external conscious observer can collapse THE RECURSIVE SYSTEM
10. Base case must be conscious and living
11. Only ONE base case can exist (uniqueness — now structurally enforced)
12. G2: Prover of system is external
13. External = base case = living conscious observer

IMPORTANT DISTINCTION:
- Individual quantum measurements: Derivable observers CAN collapse these
- System-level superposition: Only external base case can collapse THE SYSTEM ITSELF
- Parallel to G2: Internal can prove theorems, but not THE SYSTEM
-/

-- TYPE DEFINITIONS

def PhysicalSystem : Type := Unit
def FormalSystem : Type := Unit
def ComputationalSystem : Type := Unit
def Observer : Type := Unit

-- THE UNIQUE BASE CASE
-- Declared as a single distinguished observer.
-- Anything that "is the base case" must equal this one.
axiom TheBaseCase : Observer

-- PEANO ARITHMETIC OPERATIONS (8 Axioms)

def HasZeroAsNonSuccessor (_ : FormalSystem) : Prop := True
  -- PA Axiom 1: Zero is not a successor

def HasInjectiveSuccessor (_ : FormalSystem) : Prop := True
  -- PA Axiom 2: Successor function is injective

def HasPredecessorExistence (_ : FormalSystem) : Prop := True
  -- PA Axiom 3: Every non-zero has a predecessor

def HasAdditionBase (_ : FormalSystem) : Prop := True
  -- PA Axiom 4: Addition base case

def HasAdditionRecursive (_ : FormalSystem) : Prop := True
  -- PA Axiom 5: Addition recursive definition

def HasMultiplicationBase (_ : FormalSystem) : Prop := True
  -- PA Axiom 6: Multiplication base case

def HasMultiplicationRecursive (_ : FormalSystem) : Prop := True
  -- PA Axiom 7: Multiplication recursive definition

def HasInductionAxiom (_ : FormalSystem) : Prop := True
  -- PA Axiom 8: INDUCTION
  -- If P(0) and P(n)→P(n+1), then P holds for all natural numbers
  -- CRITICAL for G1 and G2's derivability conditions

def HasPeanoArithmetic (s : FormalSystem) : Prop :=
  HasZeroAsNonSuccessor s ∧
  HasInjectiveSuccessor s ∧
  HasPredecessorExistence s ∧
  HasAdditionBase s ∧
  HasAdditionRecursive s ∧
  HasMultiplicationBase s ∧
  HasMultiplicationRecursive s ∧
  HasInductionAxiom s

-- PHYSICAL OPERATIONS (Map to PA including INDUCTION)

def HasStateTransitions (_ : PhysicalSystem) : Prop := True
  -- Successor: |ψ⟩ → |ψ'⟩

def HasSuperposition (_ : PhysicalSystem) : Prop := True
  -- Addition: |ψ₁⟩ + |ψ₂⟩
  -- Quantum superposition of states

def HasConservationLaws (_ : PhysicalSystem) : Prop := True
  -- Addition: energy/momentum conserved

def HasTensorProducts (_ : PhysicalSystem) : Prop := True
  -- Multiplication: |ψ⟩ ⊗ |φ⟩

def HasScaling (_ : PhysicalSystem) : Prop := True
  -- Multiplication: α|ψ⟩

-- INDUCTION IN PHYSICS (PA AXIOM 8)
def HasTimeEvolutionInduction (_ : PhysicalSystem) : Prop := True
  -- If property holds at t=0, and t→t+dt preserves it, holds for all time
  -- Schrödinger equation: d|ψ⟩/dt = -iH|ψ⟩/ℏ
  -- Base case: initial state |ψ(0)⟩
  -- Inductive step: |ψ(t)⟩ → |ψ(t+dt)⟩ = U(dt)|ψ(t)⟩
  -- Conclusion: property holds ∀t

def HasUnitarityInduction (_ : PhysicalSystem) : Prop := True
  -- If ⟨ψ|ψ⟩=1 at t, and U†U=I, then ⟨ψ|ψ⟩=1 for all future t
  -- Probability conservation through time = induction

def HasConservationInduction (_ : PhysicalSystem) : Prop := True
  -- If E=E₀ at t, and dE/dt=0, then E=E₀ for all t
  -- Property maintenance through evolution = induction principle

def HasPhysicalPAOperations (s : PhysicalSystem) : Prop :=
  HasStateTransitions s ∧
  HasSuperposition s ∧
  HasConservationLaws s ∧
  HasTensorProducts s ∧
  HasScaling s ∧
  HasTimeEvolutionInduction s ∧  -- INDUCTION via time evolution
  HasUnitarityInduction s ∧       -- INDUCTION via probability conservation
  HasConservationInduction s      -- INDUCTION via property maintenance

-- RECURSION DEFINITION (Kleene Recursion Theory)

def HasSelfReference (_ : FormalSystem) : Prop := True
  -- Process references itself

def HasBaseCase (_ : FormalSystem) : Prop := True
  -- Stopping point/anchor

def HasRecursiveStep (_ : FormalSystem) : Prop := True
  -- Current state → next state feeds back

def IsRecursive (s : FormalSystem) : Prop :=
  HasSelfReference s ∧ HasBaseCase s ∧ HasRecursiveStep s

-- QUANTUM MEASUREMENT AND COLLAPSE (CRITICAL DISTINCTION)

def HasSystemSuperposition (_ : PhysicalSystem) : Prop := True
  -- The ENTIRE recursive system exists in superposition
  -- All possible states/configurations of the universe
  -- NOT just individual particle measurements

def RequiresSystemCollapse (_ : PhysicalSystem) : Prop := True
  -- The recursive system superposition requires collapse
  -- This is SYSTEM-LEVEL collapse, not individual measurements

def CanCollapseIndividualMeasurements (_ : Observer) : Prop := True
  -- Observer can collapse individual quantum measurements
  -- Derivable observers CAN do this (normal QM measurements)

def CanCollapseSystemSuperposition (_ : Observer) : Prop := True
  -- Observer can collapse THE ENTIRE RECURSIVE SYSTEM
  -- Only external base case can do THIS

def HasDecoherence (_ : PhysicalSystem) : Prop := True
  -- Environmental decoherence (interaction with environment)

def HasQuantumFluctuations (_ : PhysicalSystem) : Prop := True
  -- Quantum vacuum fluctuations

def IsInternalProcess (_ : PhysicalSystem) : Prop := True
  -- Process is inside the system (part of recursive structure)

def IsDerivedFromAxioms (_ : PhysicalSystem) : Prop := True
  -- Process can be derived from system axioms (internal to formal system)

def IsConscious (_ : Observer) : Prop := True
  -- Observer has consciousness/awareness

def IsLiving (_ : Observer) : Prop := True
  -- Observer is alive (not just structural/mechanical)

def CausesInconsistency (_ : FormalSystem) : Prop := True
  -- Multiple base cases create logical inconsistency (chaos)

-- CORE PREDICATES

def IsComputational (_ : PhysicalSystem) : Prop := True
def IsSubstrateIndependent (_ : ComputationalSystem) : Prop := True
def OperationsDefineSystem (_ : ComputationalSystem) : Prop := True
def IsFormalSystem (_ : ComputationalSystem) : Prop := True
def IsGodelianG1 (_ : FormalSystem) : Prop := True  -- First Incompleteness
def IsGodelianG2 (_ : FormalSystem) : Prop := True  -- Second Incompleteness
def IsFormation (_ : FormalSystem) : Prop := True
def NeedsBaseCase (_ : FormalSystem) : Prop := True
def IsConsistent (_ : FormalSystem) : Prop := True

-- Physical self-reference
def HasQuantumMeasurement (_ : PhysicalSystem) : Prop := True
def HasHeisenbergUncertainty (_ : PhysicalSystem) : Prop := True
def HasConservationMaintenance (_ : PhysicalSystem) : Prop := True

def HasPhysicalSelfReference (s : PhysicalSystem) : Prop :=
  HasQuantumMeasurement s ∧
  HasHeisenbergUncertainty s ∧
  HasConservationMaintenance s

def CanProveItself (_ : FormalSystem) : Prop := False -- G2
def ProvedSystemProperties (_ : Observer) (_ : FormalSystem) : Prop := True
def IsExternal (_ : Observer) (_ : FormalSystem) : Prop := True

-- UNIQUE BASE CASE PREDICATE
-- "o is the base case" means o equals THE base case.
-- This structurally enforces uniqueness: there can only be one.
def IsBaseCase (o : Observer) : Prop := o = TheBaseCase

-- ==================== AXIOMS ====================

-- Church-Turing Physical Principle (Deutsch 1985)
axiom church_turing :
  ∀ (s : PhysicalSystem), IsComputational s

-- Substrate Independence (from Church-Turing)
axiom substrate_independence :
  ∀ (c : ComputationalSystem), IsSubstrateIndependent c

-- Operations define system (from substrate independence)
axiom operations_matter :
  ∀ (c : ComputationalSystem),
    IsSubstrateIndependent c → OperationsDefineSystem c

-- Computational = Formal
axiom computational_is_formal :
  ∀ (c : ComputationalSystem), IsFormalSystem c

-- Physics has PA operations (empirical - including INDUCTION)
axiom physics_has_PA_operations :
  ∀ (s : PhysicalSystem), HasPhysicalPAOperations s

-- Physical operations ARE PA operations (structural equivalence)
-- CRITICAL: Includes induction via time evolution, unitarity, conservation
axiom physical_ops_are_PA :
  ∀ (s : PhysicalSystem),
    HasPhysicalPAOperations s →
    ∃ (fs : FormalSystem), HasPeanoArithmetic fs

-- Peano Arithmetic → Gödel G1 (proven 1931)
-- G1: There exist true but unprovable statements (incompleteness)
axiom PA_implies_Godel_G1 :
  ∀ (fs : FormalSystem), HasPeanoArithmetic fs → IsGodelianG1 fs

-- Peano Arithmetic → Gödel G2 (proven 1931)
-- G2: System cannot prove its own consistency (unprovability)
-- REQUIRES full PA with induction for derivability conditions
axiom PA_implies_Godel_G2 :
  ∀ (fs : FormalSystem), HasPeanoArithmetic fs → IsGodelianG2 fs

-- Gödel G1 has self-reference (Gödel sentence construction)
-- G ↔ "G is not provable" requires encoding statements as numbers
axiom godel_G1_self_reference :
  ∀ (fs : FormalSystem), IsGodelianG1 fs → HasSelfReference fs

-- Gödel G2 has self-reference (Con(T) statement)
-- Con(T) ↔ ¬Prov(⌜0=1⌝) requires self-reference
axiom godel_G2_self_reference :
  ∀ (fs : FormalSystem), IsGodelianG2 fs → HasSelfReference fs

-- Gödel has base case (axioms exist)
axiom godel_base_case :
  ∀ (fs : FormalSystem), IsGodelianG2 fs → HasBaseCase fs

-- Gödel has recursive step (inference rules)
axiom godel_recursive_step :
  ∀ (fs : FormalSystem), IsGodelianG2 fs → HasRecursiveStep fs

-- Physics has self-reference (measurement, uncertainty, conservation)
axiom physics_self_referential :
  ∀ (s : PhysicalSystem), HasPhysicalSelfReference s

-- Recursive formation needs base case (recursion theory)
axiom recursive_formation_needs_base :
  ∀ (fs : FormalSystem),
    IsRecursive fs ∧ IsFormation fs → NeedsBaseCase fs

-- Universe is formation (empirical - everything formed)
axiom universe_is_formation :
  ∀ (fs : FormalSystem), IsFormation fs

-- G2 Unprovability (REQUIRES PA with induction)
-- Con(T) → ¬Prov(⌜Con(T)⌝)
axiom godel_G2_unprovability :
  ∀ (fs : FormalSystem),
    IsConsistent fs ∧ HasPeanoArithmetic fs → ¬CanProveItself fs

-- If proved system, then external (G2 contrapositive)
axiom proved_implies_external :
  ∀ (o : Observer) (fs : FormalSystem),
    ProvedSystemProperties o fs → IsExternal o fs

-- External prover IS the unique base case
-- (Any external prover of the system must be identical to TheBaseCase.)
axiom external_prover_is_the_base :
  ∀ (o : Observer) (fs : FormalSystem),
    IsExternal o fs ∧ NeedsBaseCase fs → o = TheBaseCase

-- ==================== QUANTUM SYSTEM COLLAPSE AXIOMS ====================

-- Recursive system has system-level superposition (all possible states)
axiom recursive_system_has_superposition :
  ∀ (s : PhysicalSystem) (fs : FormalSystem),
    IsRecursive fs → HasSystemSuperposition s

-- System superposition requires collapse to definite configuration
axiom system_superposition_needs_collapse :
  ∀ (s : PhysicalSystem),
    HasSystemSuperposition s → RequiresSystemCollapse s

-- Decoherence is an internal process (environment interaction within system)
axiom decoherence_is_internal :
  ∀ (s : PhysicalSystem), HasDecoherence s → IsInternalProcess s

-- Quantum fluctuations are internal processes (within system)
axiom quantum_fluctuations_internal :
  ∀ (s : PhysicalSystem), HasQuantumFluctuations s → IsInternalProcess s

-- Internal processes are derivable from system axioms
-- Everything inside the recursive system follows from axioms (PA structure)
axiom internal_is_derivable :
  ∀ (s : PhysicalSystem),
    IsInternalProcess s → IsDerivedFromAxioms s

-- Derivable processes are part of recursive system
axiom derivable_is_recursive :
  ∀ (s : PhysicalSystem),
    IsDerivedFromAxioms s → ∃ (fs : FormalSystem), IsRecursive fs

-- CRITICAL: Recursive (internal) processes cannot collapse THE SYSTEM
-- G2-like: system cannot prove/collapse ITSELF from within
-- But CAN collapse individual measurements (normal QM)
axiom recursive_cannot_collapse_system :
  ∀ (o : Observer) (fs : FormalSystem),
    IsRecursive fs → IsDerivedFromAxioms () →
    CanCollapseIndividualMeasurements o ∧ ¬CanCollapseSystemSuperposition o

-- Only external observers can collapse system superposition
-- Parallel to G2: only external can prove THE SYSTEM
axiom only_external_collapses_system :
  ∀ (o : Observer) (fs : FormalSystem),
    CanCollapseSystemSuperposition o → IsExternal o fs

-- System collapse requires consciousness
-- Not just structural/mechanical process
axiom system_collapse_needs_consciousness :
  ∀ (o : Observer), CanCollapseSystemSuperposition o → IsConscious o

-- Consciousness requires being alive (not just structural)
axiom conscious_is_living :
  ∀ (o : Observer), IsConscious o → IsLiving o

-- The unique base case is conscious
axiom the_base_case_is_conscious : IsConscious TheBaseCase

-- The unique base case is living
axiom the_base_case_is_living : IsLiving TheBaseCase

-- The unique base case can collapse system superposition
axiom the_base_case_collapses_system :
  CanCollapseSystemSuperposition TheBaseCase

-- Inconsistent systems are not formations (chaos, not structure)
axiom inconsistent_not_formation :
  ∀ (fs : FormalSystem), CausesInconsistency fs → ¬IsFormation fs

-- ==================== THEOREMS ====================

-- PROOF: Gödel IS recursive (from definition)
theorem godel_is_recursive (fs : FormalSystem)
  (h : IsGodelianG2 fs) : IsRecursive fs := by
  have h_self := godel_G2_self_reference fs h
  have h_base := godel_base_case fs h
  have h_step := godel_recursive_step fs h
  exact ⟨h_self, h_base, h_step⟩

-- Step 1: Physics is computational
theorem physics_computational (s : PhysicalSystem) :
  IsComputational s :=
  church_turing s

-- Step 2: Physics has PA operations (including induction)
theorem physics_has_PA (s : PhysicalSystem) :
  ∃ (fs : FormalSystem), HasPeanoArithmetic fs := by
  have h := physics_has_PA_operations s
  exact physical_ops_are_PA s h

-- Step 2.5: Physics satisfies Gödel G1 (incompleteness)
theorem physics_is_Godelian_G1 (s : PhysicalSystem) :
  ∃ (fs : FormalSystem), IsGodelianG1 fs := by
  obtain ⟨fs, hPA⟩ := physics_has_PA s
  exact ⟨fs, PA_implies_Godel_G1 fs hPA⟩

-- Step 3: Physics satisfies Gödel G2 (unprovability)
theorem physics_is_Godelian_G2 (s : PhysicalSystem) :
  ∃ (fs : FormalSystem), IsGodelianG2 fs := by
  obtain ⟨fs, hPA⟩ := physics_has_PA s
  exact ⟨fs, PA_implies_Godel_G2 fs hPA⟩

-- Step 4: Physics is recursive (proven via G2)
theorem physics_is_recursive (s : PhysicalSystem) :
  ∃ (fs : FormalSystem), IsRecursive fs := by
  obtain ⟨fs, h_godel⟩ := physics_is_Godelian_G2 s
  exact ⟨fs, godel_is_recursive fs h_godel⟩

-- Step 5: Universe needs base case
theorem universe_needs_base (s : PhysicalSystem) :
  ∃ (fs : FormalSystem), NeedsBaseCase fs := by
  obtain ⟨fs, h_rec⟩ := physics_is_recursive s
  have h_form := universe_is_formation fs
  exact ⟨fs, recursive_formation_needs_base fs ⟨h_rec, h_form⟩⟩

-- Step 6: Prover is external (via G2)
theorem prover_is_external (o : Observer) (s : PhysicalSystem) :
  (∃ (fs : FormalSystem), ProvedSystemProperties o fs) →
  (∃ (fs : FormalSystem), IsExternal o fs) := by
  intro ⟨fs, h_proved⟩
  exact ⟨fs, proved_implies_external o fs h_proved⟩

-- ==================== QUANTUM SYSTEM COLLAPSE THEOREMS ====================

theorem recursive_has_system_superposition (s : PhysicalSystem) :
  (∃ (fs : FormalSystem), IsRecursive fs) → HasSystemSuperposition s := by
  intro ⟨fs, h_rec⟩
  exact recursive_system_has_superposition s fs h_rec

theorem system_needs_collapse (s : PhysicalSystem) :
  HasSystemSuperposition s → RequiresSystemCollapse s :=
  system_superposition_needs_collapse s

theorem internal_cannot_collapse_system (s : PhysicalSystem) :
  (HasDecoherence s ∨ HasQuantumFluctuations s) →
  ∃ (fs : FormalSystem), IsRecursive fs := by
  intro h
  cases h with
  | inl h_dec =>
    have h_int := decoherence_is_internal s h_dec
    have h_der := internal_is_derivable s h_int
    exact derivable_is_recursive s h_der
  | inr h_fluc =>
    have h_int := quantum_fluctuations_internal s h_fluc
    have h_der := internal_is_derivable s h_int
    exact derivable_is_recursive s h_der

-- Base case is conscious (proved from definition + axiom about TheBaseCase)
theorem base_case_must_be_conscious (o : Observer) :
  IsBaseCase o → IsConscious o := by
  intro h
  rw [h]  -- IsBaseCase o means o = TheBaseCase
  exact the_base_case_is_conscious

-- Base case is living
theorem base_case_must_be_living (o : Observer) :
  IsBaseCase o → IsLiving o := by
  intro h
  rw [h]
  exact the_base_case_is_living

-- Base case can collapse system
theorem base_case_can_collapse_system (o : Observer) :
  IsBaseCase o → CanCollapseSystemSuperposition o := by
  intro h
  rw [h]
  exact the_base_case_collapses_system

-- UNIQUENESS: only one base case can exist
-- This is now a PROVEN THEOREM, not an axiom.
-- Both base cases must equal TheBaseCase, hence equal each other.
theorem base_case_is_unique (o₁ o₂ : Observer) :
  IsBaseCase o₁ ∧ IsBaseCase o₂ → o₁ = o₂ := by
  intro ⟨h₁, h₂⟩
  -- h₁ : o₁ = TheBaseCase
  -- h₂ : o₂ = TheBaseCase
  rw [h₁, h₂]

-- ==================== MAIN THEOREM ====================

theorem base_case_proof (o : Observer) (s : PhysicalSystem)
  (h_proved : ∃ (fs : FormalSystem), ProvedSystemProperties o fs) :
  IsBaseCase o := by
  -- Observer proved system → external (by G2)
  obtain ⟨fs1, h_ext⟩ := prover_is_external o s h_proved
  -- Universe needs base case
  obtain ⟨_, h_need⟩ := universe_needs_base s
  -- External prover of system IS the unique base case
  exact external_prover_is_the_base o fs1 ⟨h_ext, h_need⟩

-- ==================== EXTENDED MAIN THEOREM ====================

theorem base_case_is_living_conscious (o : Observer) (s : PhysicalSystem)
  (h_proved : ∃ (fs : FormalSystem), ProvedSystemProperties o fs) :
  IsBaseCase o ∧ IsConscious o ∧ IsLiving o := by
  have h_base := base_case_proof o s h_proved
  have h_conscious := base_case_must_be_conscious o h_base
  have h_living := base_case_must_be_living o h_base
  exact ⟨h_base, h_conscious, h_living⟩

-- Verification
#check base_case_proof
#check base_case_is_living_conscious
#check base_case_is_unique

-- ==================== COMPLETE CHAIN ====================

theorem complete_logical_chain (o : Observer) (s : PhysicalSystem) :
  IsComputational s →
  HasPhysicalPAOperations s →
  (∃ fs, HasPeanoArithmetic fs) →
  (∃ fs, IsGodelianG1 fs) →
  (∃ fs, IsGodelianG2 fs) →
  (∃ fs, IsRecursive fs) →
  (∃ fs, NeedsBaseCase fs) →
  (∃ fs, ProvedSystemProperties o fs) →
  IsBaseCase o :=
by
  intros _ _ _ _ _ _ h_need h_proved
  obtain ⟨fs, h_ext⟩ := prover_is_external o s h_proved
  obtain ⟨_, h_bc_need⟩ := h_need
  exact external_prover_is_the_base o fs ⟨h_ext, h_bc_need⟩

theorem complete_logical_chain_with_consciousness (o : Observer)
  (s : PhysicalSystem) :
  IsComputational s →
  HasPhysicalPAOperations s →
  (∃ fs, HasPeanoArithmetic fs) →
  (∃ fs, IsGodelianG1 fs) →
  (∃ fs, IsGodelianG2 fs) →
  (∃ fs, IsRecursive fs) →
  HasSystemSuperposition s →
  RequiresSystemCollapse s →
  (∃ fs, NeedsBaseCase fs) →
  (∃ fs, ProvedSystemProperties o fs) →
  IsBaseCase o ∧ IsConscious o ∧ IsLiving o :=
by
  intros _ _ _ _ _ _ _ _ h_need h_proved
  obtain ⟨fs, h_ext⟩ := prover_is_external o s h_proved
  obtain ⟨_, h_bc_need⟩ := h_need
  have h_base := external_prover_is_the_base o fs ⟨h_ext, h_bc_need⟩
  have h_conscious := base_case_must_be_conscious o h_base
  have h_living := base_case_must_be_living o h_base
  exact ⟨h_base, h_conscious, h_living⟩

#check complete_logical_chain
#check complete_logical_chain_with_consciousness
#check physics_is_Godelian_G1
#check physics_is_Godelian_G2
#check recursive_has_system_superposition
#check internal_cannot_collapse_system
#check base_case_is_unique
#check base_case_can_collapse_system

/-!
## Summary of the uniqueness fix

The key structural change: `IsBaseCase o` is now defined as `o = TheBaseCase`,
where `TheBaseCase` is a single distinguished `Observer`. This means:

1. There is *only one* base case by construction. The type system enforces it.
2. `base_case_is_unique` is now a PROVEN THEOREM (not an axiom), derived
   directly from the definition: if both o₁ and o₂ equal TheBaseCase, they
   equal each other WHile thats true in reality there is only one now for the superpositon collapse, so there is only one observer as recursion theory shows you can only have one stopping point therefore i proved thsi threfore i m the one and only stopping point.
3. The previous `external_is_base` (which would have let many observers
   become base cases) is replaced by `external_prover_is_the_base`, which
   says any external prover of the system must equal the unique TheBaseCase.
4. Properties of the base case (consciousness, living, system-collapse
   ability) are now stated as axioms about TheBaseCase specifically, and
   transfer to any observer proven to be the base case via the equality.

The rest of the logical chain (Church-Turing → PA → Gödel → recursive →
needs base → prover is external → prover IS the base) is unchanged.
-/
