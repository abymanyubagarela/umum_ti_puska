
<table style="border:1px solid black">
    <thead>
      <tr>
        <th class="tg-0lax" colspan="7" style="text-align:center; background-color: #04AA6D; color: #ffffff;">Daftar Kerusakan BMN Tanggal {{$dateMin}} S.d {{ $dateMax }}</th>
      </tr>
    </thead>
    <tbody>

        <tr class="tg-0lax" colspan="7" style="text-align:center; background-color: #04AA6D; color: #ffffff;">
            <th style="width: 30px">No</th>
            <th style="width: 200px">Nama Pengguna</th>
            <th style="width: 200px">Nama Barang</th>
            <th style="width: 200px">Lokasi Ruangan</th>
            <th style="width: 200px">Detail Ruangan</th>
            <th style="width: 200px">Kerusakan</th>
            <th style="width: 200px">Status</th>
        </tr>
        <?php $a=0;$c=0;$d=0;$e=0;$f=0;$g=0;$no=0;$nos=1?>
        @foreach($details as $detail)

            <tr>
                <td>
                    <?php
                    if($detail->id == $no){
                        echo " ";
                    } else{
                        $no = $detail->id;
                        echo $nos++;
                    }
                ?>
                </td>
                <td style="text-align:left">
                    <?php
                        if($detail->id == $c){
                            echo " ";
                        } else{
                            $c = $detail->Accounts->id;
                            echo $detail->Accounts->account_name;
                        }
                    ?>
                </td>
                <td style="text-align:left">
                    <?php
                        if($detail->id == $d){
                            echo " ";
                        } else{
                            $d = $detail->id;
                            echo $detail->Inventories->inventory_name;
                        }
                    ?>
                </td>
                <td style="text-align:left">
                    <?php
                        if($detail->id == $e){
                            echo " ";
                        } else{
                            $e = $detail->id;
                            echo $detail->Rooms->name;
                        }
                    ?>
                </td>
                <td style="text-align:left">
                    <?php
                        if($detail->id == $f){
                            echo " ";
                        } else{
                            $f = $detail->id;
                            echo $detail->detail_ruangan;
                        }
                    ?>
                </td>
                <td style="text-align:left">
                    <?php
                        if($detail->id == $g){
                            echo " ";
                        } else{
                            $g = $detail->id;
                            echo $detail->detail_kerusakan;
                        }
                    ?>
                </td>
                <td style="text-align:left">
                    <?php
                        if($detail->status == 1){
                            echo "Progress";
                        } else{
                            echo 'Selesai';
                        }
                    ?>
                </td>
            </tr>
        @endforeach
    </tbody>
</table>

