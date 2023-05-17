<table style="border:1px solid black">
    <thead>
        {{-- <tr>
            <th class="tg-0lax" colspan="3" style="text-align:center; background-color: #04AA6D; color: #ffffff;">Data Transaksi Buku </th>
        </tr> --}}
    </thead>
    <tbody>

        <tr class="tg-0lax" colspan="3" style="text-align:center; background-color: #04AA6D; color: #ffffff;">
            <th style="width: 30px">No</th>
            <th style="width: 200px">Judul Buku</th>
            <th style="width: 200px">No Buku</th>
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
                if ($detail->id == $d) {
                    echo " ";
                } else {
                    $d = $detail->id;
                    echo $detail->book_title;
                }
                ?>
            </td>
            <td style="text-align:left">
                <?php
                if ($detail->id == $e) {
                    echo " ";
                } else {
                    $e = $detail->id;
                    echo $detail->book_number;
                }
                ?>
            </td>
        </tr>
        @endforeach
    </tbody>
</table>
