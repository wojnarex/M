## Replace Multiple Strings
= Table.TransformColumns(#"Previous Step",{{"Column Header", each List.Accumulate({{"$","a"},{"¥","b"},{"¢","c"},{"£","d"}},_,(string,replace) => Text.Replace(string,replace{0},replace{1}))}})

## Remove Multiple Strings
= Table.TransformColumns(#"Previous Step",{{"Column Header", each List.Accumulate(Text.ToList("â¬£Â£€$"),_,(String,Remove) => Text.Replace(String,Remove,""))}})


