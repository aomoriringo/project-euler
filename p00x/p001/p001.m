(* :: Package:: *)

Plus @@ Select[Range@999, Mod[#,3] == 0 || Mod[#,5] == 0 &]
