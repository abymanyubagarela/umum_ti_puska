<div class="header">

    <div class="header-left">
        <a href="index.html" class="logo">
            <img src="/assets/img/logo.png" alt="Logo">
        </a>
        <a href="index.html" class="logo logo-small">
            <img src="/assets/img/logo-small.png" alt="Logo" width="30" height="30">
        </a>
    </div>

    <div class="menu-toggle">
        <a href="javascript:void(0);" id="toggle_btn">
            <i class="fas fa-bars"></i>
        </a>
    </div>

    <a class="mobile_btn" id="mobile_btn">
        <i class="fas fa-bars"></i>
    </a>

    <ul class="nav user-menu">
        <li class="nav-item zoom-screen me-2">
            <a href="#" class="nav-link header-nav-list win-maximize">
                <img src="/assets/img/icons/header-icon-04.svg" alt="">
            </a>
        </li>

        <li class="nav-item dropdown has-arrow new-user-menus">
            <a href="#" class="dropdown-toggle nav-link" data-bs-toggle="dropdown">
                <span class="user-img">
                    <div class="user-text">
                        <h6>{{ auth()->user()->account_name }}</h6>
                        <p class="text-muted mb-0">{{ auth()->user()->account_role }}</p>
                    </div>
                </span>
            </a>
            <div class="dropdown-menu">
                <form action="/logout" method="post">
                        @csrf
                    <button type="submit" class="dropdown-item">Logout</button>
                </form>
            </div>
        </li>

    </ul>
</div>