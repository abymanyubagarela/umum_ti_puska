
<table style="border:1px solid black">
    <thead>
      <tr>
        <th class="tg-0lax" colspan="7" style="text-align:center; background-color: #04AA6D; color: #ffffff;">Daftar Peminjaman Kendaraan Tanggal {{$dateMin}} S.d {{ $dateMax }}</th>
      </tr>
    </thead>
    <tbody>

        <tr class="tg-0lax" colspan="7" style="text-align:center; background-color: #04AA6D; color: #ffffff;">
            <th style="width: 30px">No</th>
            <th style="width: 200px">Nama Peminjam</th>
            <th style="width: 200px">Nama Driver</th>
            <th style="width: 200px">Mobil</th>
            <th style="width: 200px">Tanggal</th>
            <th style="width: 200px">Waktu</th>
            <th style="width: 200px">Tujuan</th>
            <th style="width: 200px">Keperluan</th>

        </tr>
        <?php $a=0;$c=0;$d=0;$e=0;$f=0;$g=0;$h=0;$i=0;$no=0;$nos=1?>
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
                            echo $detail->Drivers->account_name;
                        }
                    ?>
                </td>
                <td style="text-align:left">
                    <?php
                        if($detail->id == $e){
                            echo " ";
                        } else{
                            $e = $detail->id;
                            echo $detail->Vehicles->name.' - '. $detail->Vehicles->nomor;
                        }
                    ?>
                </td>
                <td style="text-align:left">
                    <?php
                        if($detail->id == $f){
                            echo " ";
                        } else{
                            $f = $detail->id;
                            echo $detail->tanggal;
                        }
                    ?>
                </td>
                <td style="text-align:left">
                    <?php
                        if($detail->id == $g){
                            echo " ";
                        } else{
                            $g = $detail->id;
                            echo $detail->waktu;
                        }
                    ?>
                </td>
                <td style="text-align:left">
                    <?php
                        if($detail->id == $h){
                            echo " ";
                        } else{
                            $g = $detail->id;
                            echo $detail->tujuan;
                        }
                    ?>
                </td>
                <td style="text-align:left">
                    <?php
                        if($detail->id == $i){
                            echo " ";
                        } else{
                            $g = $detail->id;
                            echo $detail->keperluan;
                        }
                    ?>
                </td>
            </tr>
        @endforeach
    </tbody>
</table>

