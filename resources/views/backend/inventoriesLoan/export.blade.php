
<table style="border:1px solid black">
    <thead>
      <tr>
        <th class="tg-0lax" colspan="7" style="text-align:center; background-color: #04AA6D; color: #ffffff;">Daftar Transaksi BMN Tanggal {{$dateMin}} S.d {{ $dateMax }}</th>
      </tr>
    </thead>
    <tbody>

        <tr class="tg-0lax" colspan="7" style="text-align:center; background-color: #04AA6D; color: #ffffff;">
            <th style="width: 30px">No</th>
            <th style="width: 150px">Tanggal Peminjaman</th>
            <th style="width: 250px">Nomor BAST</th>
            <th style="width: 200px">Penanggung Jawab</th>
            <th style="width: 180px">Status</th>
            <th style="width: 180px">Tanggal Kembali</th>
            <th style="width: 200px">List Barang dipinjam</th>
        </tr>
        <?php  $a= 0;$c = 0;$d=0;$e=0;$f=0;$g=0;$no=0;$nos=1?>
        @foreach($inventoriesLoanDetails as $inventoriesLoanDetail)

            <tr>
                <td>
                    <?php
                    if($inventoriesLoanDetail->inventoriesLoan->id == $no){
                        echo " ";
                    } else{
                        $no = $inventoriesLoanDetail->inventoriesLoan->id;
                        echo $nos++;
                    }
                ?>
                </td>
                <td style="text-align:left">
                    <?php
                        if($inventoriesLoanDetail->inventoriesLoan->id == $c){
                            echo " ";
                        } else{
                            $c = $inventoriesLoanDetail->inventoriesLoan->id;
                            echo $inventoriesLoanDetail->inventoriesLoan->inventoryloan_tglpeminjaman;
                        }
                    ?>
                </td>
                <td style="text-align:left">
                    <?php
                        if($inventoriesLoanDetail->inventoriesLoan->id == $d){
                            echo " ";
                        } else{
                            $d = $inventoriesLoanDetail->inventoriesLoan->id;
                            echo $inventoriesLoanDetail->inventoriesLoan->inventoryloan_nomorBAST;
                        }
                    ?>
                </td>
                <td style="text-align:left">
                    <?php
                        if($inventoriesLoanDetail->inventoriesLoan->id == $e){
                            echo " ";
                        } else{
                            $e = $inventoriesLoanDetail->inventoriesLoan->id;
                            echo $inventoriesLoanDetail->inventoriesLoan->inventoryloan_penanggung_jawabs->account_name;
                        }
                    ?>
                </td>
                <td style="text-align:left">
                    <?php
                        if($inventoriesLoanDetail->inventoriesLoan->id == $f){
                            echo " ";
                        } else{
                            $f = $inventoriesLoanDetail->inventoriesLoan->id;
                            echo $inventoriesLoanDetail->inventoriesLoan->inventoryloan_status;
                        }
                    ?>
                </td>
                <td style="text-align:left">
                    <?php
                        if($inventoriesLoanDetail->inventoriesLoan->id == $g){
                            echo " ";
                        } else{
                            $g = $inventoriesLoanDetail->inventoriesLoan->id;
                            echo $inventoriesLoanDetail->inventoriesLoan->inventoryloan_tglpengembalian;
                        }
                    ?>
                </td>
                <td>
                    {{ $inventoriesLoanDetail->inventories->inventory_name }}
                </td>


            </tr>
        @endforeach
    </tbody>
</table>

