<div class="sidebar" id="sidebar">
    <div class="sidebar-inner slimscroll">
        <div id="sidebar-menu" class="sidebar-menu">
            <ul>
                <li class="menu-title">
                    <span>Main Menu</span>
                </li>

                <li class="submenu {{ Request::is('backend/dashboard*') ? 'active' : ' ' }} ">
                    <a href="#"><i class="fe fe-layout"></i> <span> Dashboard</span> <span class="menu-arrow"></span></a>
                    <ul>
                        <li><a href="#">Dashboard</a></li>
                    </ul>
                </li>

                @canany(['Super Admin', 'Petugas Kendaraan','Kasubbag Umum','Petugas Perpus'])
                <li class="submenu {{ Request::is('backend/anggota*') ? 'active' : ' ' }} ">
                    <a href="#">
                        <i class="fe fe-users"></i> <span> Anggota</span> <span class="menu-arrow"></span>
                    </a>
                    <ul>
                        <li><a href="/backend/accounts/">List Anggota</a></li>
                    </ul>
                </li>
                @endcanany

                <li class="submenu {{ Request::is('backend/book*') || Request::is('backend/*buku*') ? 'active' : ' ' }} ">
                    <a href="#">
                        <i class="fe fe-command"></i> <span> Buku</span> <span class="menu-arrow"></span>
                    </a>
                    <ul>
                        @canany(['Super Admin', 'Petugas Kendaraan','Kasubbag Umum','Petugas Perpus'])
                        <li><a href="/backend/books/">Koleksi Buku</a></li>
                        @endcanany
                        <li><a href="/backend/transaksi-buku">Permintaan Peminjaman</a></li>
                        <li><a href="/backend/transaksi-buku-pinjam">Peminjaman</a></li>
                        <li><a href="/backend/transaksi-buku-kembali">Pengembalian</a></li>
                        <li><a href="/backend/transaksi-buku-selesai">Selesai</a></li>
                    </ul>
                </li>

                <li class="submenu {{ Request::is('backend/anggota*') ? 'active' : ' ' }} ">
                    <a href="#">
                        <i class="fe fe-users"></i> <span> Pengunjung</span> <span class="menu-arrow"></span>
                    </a>
                    <ul>
                        <li><a href="/backend/visitor-in">Pengunjung Pegawai</a></li>
                        <li><a href="/backend/visitor-ex">Pengunjung Umum</a></li>
                    </ul>
                </li>

                <li class="submenu {{ Request::is('backend/report*') ? 'active' : ' ' }} ">
                    <a href="#">
                        <i class="fe fe-box"></i> <span> Laporan</span> <span class="menu-arrow"></span>
                    </a>
                    <ul>
                        <li><a href="/backend/reportIndexBookPinjam">Laporan Peminjaman</a></li>
                        <li><a href="/backend/reportIndexBookKembali">Laporan Pengembalian</a></li>
                    </ul>
                </li>

                <li class="submenu">
                    <a href="#">
                        <i class="fe fe-power"></i> <span> Logout</span> <span class="menu-arrow"></span>
                    </a>
                    <ul>
                        <li>
                            <form action="/logout" method="post">
                                @csrf
                                <button type="submit" class="dropdown-item">Logout</button>
                            </form>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</div>