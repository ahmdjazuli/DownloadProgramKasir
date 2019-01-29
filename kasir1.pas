uses crt;

procedure opening;
begin textcolor(12);
    writeln('  =========================');
    writeln('    == JULIKODING MART ==');
    writeln('  =========================');writeln;
end;

var
  uang:real;
  yunit,i,jumlah:integer;
  kode:string;
  total,harga:array[0..3] of real;
  hasil,kembalian:real;
begin clrscr;
    opening;
    write('Masukkan Uang Tunai : ');readln(uang);
    write('Jumlah Barang yang Dibeli : ');readln(jumlah);
       for i:=1 to jumlah do
         begin
           write('Masukkan Kode Barang : ');readln(kode);
             case (kode) of 'jk1':
               begin
                   harga[i]:=3000;
                   writeln('Nama Barang : Pensil 2B');
                   writeln('Harga Barang : Rp. 3.000,-');
                   write('Unit : ');readln(yunit);
                   total[i]:=yunit*harga[i];
                   hasil:=total[1]+total[2]+total[3];
                   kembalian:=uang-total[i];
               end;
             'jk2':
               begin
                   harga[i]:=4000;
                   writeln('Nama Barang : Pulpen 3C');
                   writeln('Harga Barang : Rp. 4.000,-');
                   write('Unit : ');readln(yunit);
                   total[i]:=yunit*harga[i];
                   hasil:=total[1]+total[2]+total[3];
                   kembalian:=uang-hasil;
               end;
             'jk3':
               begin
                   harga[i]:=5000;
                   writeln('Nama Barang : Vegetable Crackers');
                   writeln('Harga Barang : Rp. 5.000,-');
                   write('Unit : ');readln(yunit);
                   total[i]:=yunit*harga[i];
                   hasil:=total[1]+total[2]+total[3];
                   kembalian:=uang-hasil;
               end else
                 begin
                     textcolor(yellow);write('Kode Tidak Dapat Ditemukan...!'); break;
                 end;
         end;
       end;
       writeln('Total Harga : ',hasil:7:2);
       writeln('Kembalian : ',kembalian:7:2);
readln;
end.