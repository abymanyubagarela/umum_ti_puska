<nav id="sidebar" class="sidebar js-sidebar">
    <div class="sidebar-content js-simplebar">
        <a class="sidebar-brand" href="/">
  <span class="align-middle">SIBTARA</span>
</a>

        <ul class="sidebar-nav">
            <li class="sidebar-item {{ Request::is('backend/dashboard*') ? 'active' : ' ' }}">
                <a class="sidebar-link " href="/backend/dashboard">
                 <i class="align-middle" data-feather="sliders"></i> <span class="align-middle">Dashboard</span>
                </a>
            </li>
            <li class="sidebar-item {{ Request::is('pinjam-bm*') ? 'active' : ' ' }}">
                <a class="sidebar-link " href="/pinjam-bmn">
                 <i class="align-middle" data-feather="clipboard"></i> <span class="align-middle">Pinjam BMN</span>
                </a>
            </li>
            @can('Super Admin')
            <li class="sidebar-header">
                Super Admin
            </li>
            <li class="sidebar-item {{ Request::is('backend/accounts*') ? 'active' : ' ' }}">
                <a class="sidebar-link " href="/backend/accounts/">
                 <i class="align-middle" data-feather="users"></i> <span class="align-middle">Data Akun</span>
                </a>
            </li>
            @endcan
            @canany(['Super Admin', 'Petugas BMN','Kasubbag Umum'])
            <li class="sidebar-header">
                Admin BMN
            </li>
            <li class="sidebar-item {{ Request::is('backend/bmn/dashb*') ? 'active' : ' ' }}">
                <a class="sidebar-link " href="/backend/bmn/dashboard">
                 <i class="align-middle" data-feather="sliders"></i> <span class="align-middle">Dashboard BMN</span>
                </a>
            </li>
            <li class="sidebar-item inventory {{ Request::is('backend/inventories*') ? 'active' : ' ' }}">
                <a class="sidebar-link " href="/backend/inventories/">
                 <i class="align-middle" data-feather="package"></i> <span class="align-middle">Data Barang</span>
                </a>
            </li>
            <li class="sidebar-item loan {{ Request::is('backend/inventoriesLoan*') ? 'active full' : ' ' }}">
                <a class="sidebar-link " href="/backend/inventoriesLoan">
                 <i class="align-middle" data-feather="clipboard"></i> <span class="align-middle">Peminjaman BMN</span>
                </a>
            </li>
            <li class="sidebar-item loan {{ Request::is('backend/bmn-reports*') ? 'active full' : ' ' }}">
                <a class="sidebar-link " href="/backend/bmn-reports">
                 <i class="align-middle" data-feather="clipboard"></i> <span class="align-middle">Report BMN</span>
                </a>
            </li>
            @endcanany

        </ul>

    </div>
</nav>
