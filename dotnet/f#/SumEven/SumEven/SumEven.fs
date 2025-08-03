let sumEven =
    seq { 0 .. 100 }
    |> Seq.filter (fun x -> x % 2 = 0)
    |> Seq.sum

printfn "%d" sumEven

