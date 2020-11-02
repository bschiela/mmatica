(* ::Package:: *)

BeginPackage["wfs`"]
Unprotect@@Names["wfs`*"];
ClearAll@@Names["wfs`*"];

physConsts::usage = "physConsts[expr] replaces constants in expr"
gaussToSI::usage = "gaussToSI[expr] transforms Gaussian expr to SI"

Begin["`Private`"]

physConsts[expr_] := Return[expr /. {
\[HBar] -> Quantity["ReducedPlanckConstant"],
e -> Quantity["ElementaryCharge"],
kB -> Quantity["BoltzmannConstant"],
me -> Quantity["ElectronMass"],
\[Epsilon]0 -> Quantity["ElectricConstant"],
\[Mu]0 -> Quantity["MagneticConstant"]}]

gaussToSI[expr_] := Return[expr /. {
EE -> Sqrt[4Pi \[Epsilon]0]EE,
DD -> Sqrt[(4Pi)/\[Epsilon]0]DD,
e -> e/Sqrt[4Pi \[Epsilon]0],
B -> Sqrt[(4Pi)/\[Mu]0]B,
H -> Sqrt[4Pi \[Mu]0]H}]

End[]
Protect@@Names["foo`*"];
EndPackage[]



