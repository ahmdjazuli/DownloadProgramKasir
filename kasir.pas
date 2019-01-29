uses crt;
procedure header;
begin
    textcolor(14);writeln('    PT. CAHAYA JULIKODING MART',#153);
    writeln('      Jl. Kompas Rt.3 Rw.5 ');writeln;textcolor(15);
end;
var
  yunit,i,jumlah:integer;
  hasil,kembalian,bayar:real;
  kode:string;
  harga:array[0..3] of real;
  total:array[0..3] of real;
begin clrscr;
  header;
  write(' Bayar Uang Tunai : ');readln(bayar);
  write(' Jumlah Barang(tipe berbeda) yang Dibeli : ');readln(jumlah);
  for i:=1 to jumlah do
    begin
        write(' Kode Barang : ');readln(kode);
        case (kode) of 'jk1' :
          begin
            harga[i]:=3000;
            writeln(#135,'===============================',#135);
            writeln(' Nama Barang : Pensil 2B');
            writeln(' Harga Barang : Rp. 3.000,-');
            write(' Unit Barang : ');readln(yunit);
            total[i]:=yunit*harga[i];
            hasil:=total[0]+total[1]+total[2];
            kembalian:=bayar-hasil;
            textcolor(11);writeln(' Total Harga : Rp. ',total[i]:7:2);textcolor(15);
          end;
        'jk2' :
          begin
            harga[i]:=4000;
            writeln(#135,'===============================',#135);
            writeln(' Nama Barang  : Pulpen 3C');
            writeln(' Harga Barang : Rp. 4.000,-');
            write(' Unit Barang  : ');readln(yunit);
            total[i]:=yunit*harga[i];
            hasil:=total[0]+total[1]+total[2];
            kembalian:=bayar-hasil;
            textcolor(11);writeln(' Total Harga : Rp. ',total[i]:7:2);textcolor(15);
          end
        else
          begin
             textcolor(12);writeln;writeln(' Kode ERROR..!'); break;
          end;
        end;
        writeln(#135,'===============================',#135);
    end;
    textcolor(10);
    writeln(#187,' Total Belanja : Rp. ',hasil:7:2);
    writeln(#187,' Bayar Tunai   : Rp. ',bayar:7:2);
    writeln(#187,' Kembalian     : Rp. ',kembalian:7:2);writeln;textcolor(11);
    writeln('           TERIMA KASIH ATAS KUNJUNGANNYA   ');
    writeln('   Barang yang Sudah Dibeli TIDAK bisa Dikembalikan..!');
    write('   Website Official : http://julikoding.blogspot.co.id');
  readln;
end.
