<table style="border:1px solid black">
    <thead>
        <tr>
            <th class="tg-0lax" colspan="7" style="text-align:center; background-color: #04AA6D; color: #ffffff;">Data Transaksi Buku {{$dateMin}} - {{ $dateMax }}</th>
        </tr>
    </thead>
    <tbody>

        <tr class="tg-0lax" colspan="7" style="text-align:center; background-color: #04AA6D; color: #ffffff;">
            <th style="width: 30px">No</th>
            <th style="width: 200px">Nama</th>
            <th style="width: 200px">Judul Buku</th>
            <th style="width: 200px">No Buku</th>
            <th style="width: 200px">Tanggal</th>
            <th style="width: 200px">Status</th>
        </tr>
        <?php $a = 0;
        $c = 0;
        $d = 0;
        $e = 0;
        $f = 0;
        $g = 0;
        $no = 0;
        $nos = 1 ?>
        @foreach($details as $detail)

        <tr>
            <td>
                <?php
                if ($detail->id == $no) {
                    echo " ";
                } else {
                    $no = $detail->id;
                    echo $nos++;
                }
                ?>
            </td>
            <td style="text-align:left">
                <?php
                if ($detail->id == $c) {
                    echo " ";
                } else {
                    $c = $detail->Accounts->id;
                    echo $detail->Accounts->account_name;
                }
                ?>
            </td>
            <td style="text-align:left">
                <?php
                if ($detail->id == $d) {
                    echo " ";
                } else {
                    $d = $detail->id;
                    echo $detail->Books->book_title;
                }
                ?>
            </td>
            <td style="text-align:left">
                <?php
                if ($detail->id == $e) {
                    echo " ";
                } else {
                    $e = $detail->id;
                    echo $detail->Books->book_number;
                }
                ?>
            </td>
            <td style="text-align:left">
                <?php
                if ($detail->id == $f) {
                    echo " ";
                } else {
                    $e = $detail->id;
                    echo $detail->tanggal_peminjaman;
                }
                ?>
            </td>
            <td style="text-align:left">
                <?php
                switch ($detail->status) {
                    case 2:
                        echo "Dalam Peminjaman";
                        break;

                    case 3:
                        echo "Dalam Pengembalian";
                        break;

                    case 4:
                        echo "Selesai";
                        break;

                    default:
                        echo "Pengajuan";
                        break;
                }

                ?>
            </td>
        </tr>
        @endforeach
    </tbody>
</table>