(* :: Package :: *)
For[i=100,i<1000,i++,
  For[j=100,j<1000,j++,
    tmp = ToString[i*j];
    A = If[tmp == StringReverse[tmp] && A < i*j, i*j, A]
  ]
]
A
