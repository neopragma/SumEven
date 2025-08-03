/* REXX: SUMEVEN */                                                     00010000
sum = 0                                                                 00020000
                                                                        00030000
do i = 0 to 100                                                         00040000
    if i // 2 = 0 then                                                  00050000
        sum = sum + i                                                   00060000
end                                                                     00070000
                                                                        00080000
say 'Result: ' sum                                                      00090000
