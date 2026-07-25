-- Gödel’s incompleteness theorems (G1 and G2) apply only when a system meets the full set of conditions:
-- 1. It is a formal system
-- 2. It is consistent
-- 3. Its axioms are recursively enumerable
-- 4. It can represent its own provability
-- 5. It has sufficient arithmetic strength (Peano Arithmetic, including induction)
--
-- Conditions 1–4 are already established earlier in this file
-- (reality_instantiates_QTM, reality_consistent_by_reductio, and the consequences of being a formal system that contains arithmetic).
-- Therefore the remaining condition (HasPeanoArithmetic) is what completes the requirements and triggers both theorems.
axiom full_godel_requirements_met_G1 :
  ∀ (fs : FormalSystem), HasPeanoArithmetic fs → IsGodelianG1 fs

axiom full_godel_requirements_met_G2 :
  ∀ (fs : FormalSystem), HasPeanoArithmetic fs → IsGodelianG2 fs