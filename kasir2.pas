uses crt;

procedure opening;
begin
    writeln('============================');
    writeln('  === JULIKODING MART ===');
    writeln('============================');writeln;
end;

var
  hasil,kembalian,bayar:real;
  i,jumlah,yunit:integer;
  kode:string;
  total,harga:array[1..3] of real;
begin clrscr;
    opening;

    write('Masukkan Uang Tunai : ');readln(bayar);
    write('Jumlah Barang yang dibeli : ');readln(jumlah);
      for i:=1 to jumlah do
        begin
          writeln('Masukkan Kode Barang : ');readln(kode);
            case (kode) of 'jk1':
              begin
                harga[i]:=3000;
                writeln('Nama Barang : Pensil 2B');
                writeln('Harga Barang : Rp. 3.000,-');
                write('Unit Barang : ');readln(yunit);
                total[i]:=harga[i]*yunit;
                hasil:=total[1]+total[2]+total[3];
                kembalian:=bayar-hasil;
              end;
            'jk2':
              begin
                harga[i]:=4000;
                writeln('Nama Barang : Pulpen 3C');
                writeln('Harga Barang : Rp. 4.000,-');
                write('Unit Barang : ');readln(yunit);
                total[i]:=harga[i]*yunit;
                hasil:=total[1]+total[2]+total[3];
                kembalian:=bayar-hasil;
              end;
              'jk3':
              begin
                harga[i]:=5000;
                writeln('Nama Barang : Modem');
                writeln('Harga Barang : Rp. 5.000,-');
                write('Unit Barang : ');readln(yunit);
                total[i]:=harga[i]*yunit;
                hasil:=total[1]+total[2]+total[3];
                kembalian:=bayar-hasil;
              end
              else
                begin
                    textcolor(12);writeln(#185,'Kode ERROR..!'); break; textcolor(white);
                end;
            end;
        end;
    writeln('Total Belanja : Rp. ',hasil:7:2);
    writeln('Uang Tunai    : Rp. ',bayar:7:2);
    writeln('Kembalian     : Rp. ',kembalian:7:2);
readln;
end.