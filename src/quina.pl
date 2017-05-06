my $n=1..5;
my @q=[];

for 1, 2, 3, 4, 5 {
    @q[$_]=(80.rand + 1).Int;
}
say @q;
