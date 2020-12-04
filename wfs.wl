(* ::Package:: *)

BeginPackage["wfs`"];
Unprotect@@Names["wfs`*"];
ClearAll@@Names["wfs`*"];

physConsts::usage = "/. physConsts inserts corresponding Quantity"
gaussToSI::usage = "/. gaussToSI transforms Gaussian expressions to SI"

physConsts = {
\[HBar] -> Quantity["ReducedPlanckConstant"],
h -> Quantity["PlanckConstant"],
c -> Quantity["SpeedOfLight"],
e -> Quantity["ElementaryCharge"],
kB -> Quantity["BoltzmannConstant"],
me -> Quantity["ElectronMass"],
\[Epsilon]0 -> Quantity["ElectricConstant"],
\[Mu]0 -> Quantity["MagneticConstant"]};

gaussToSI = {
EE -> Sqrt[4Pi \[Epsilon]0]EE,
DD -> Sqrt[(4Pi)/\[Epsilon]0]DD,
e -> e/Sqrt[4Pi \[Epsilon]0],
B -> Sqrt[(4Pi)/\[Mu]0]B,
H -> Sqrt[4Pi \[Mu]0]H};

Begin["`Private`"];
End[];
Protect@@Names["wfs`*"];
EndPackage[]



