sub quina {
    ($n) = @_;
    @q=[];
    for($i=0;$i<$n;$i++){
        $d = int(rand(80) + 1);
        if ( ! grep $_ == $d, @q ) {
            @q[$i] = $d; 
        } else {
            $i--;
        }
    }
    return (sort { $a <=> $b } @q);
};

sub sumq{
    my (@q) = $_;
    $r = 0;
    for($i=0;$i<(scalar @q);$i++){
        $r += @q[$i];
    }
    return $r;
};

@q1 = quina(5);
$r1 = sumq(@q1);
