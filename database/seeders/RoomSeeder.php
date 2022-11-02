<?php

namespace Database\Seeders;

use App\Models\Room;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class RoomSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        
        Room::create([
            'name' => 'Ruangan Media',
            'slug' => substr(Hash::make('Ymdhis'),-5)
        ]);
        
        Room::create([
            'name' => 'Ruangan Bulungan',
            'slug' => substr(Hash::make('Ymdhis'),-5)
        ]);
        
        Room::create([
            'name' => 'Ruangan Perpustakaan',
            'slug' => substr(Hash::make('Ymdhis'),-5)
        ]);
        
        Room::create([
            'name' => 'Ruangan PIPK',
            'slug' => substr(Hash::make('Ymdhis'),-5)
        ]);
        
        Room::create([
            'name' => 'Ruangan Nunukan',
            'slug' => substr(Hash::make('Ymdhis'),-5)
        ]);
        
        Room::create([
            'name' => 'Ruangan KTT',
            'slug' => substr(Hash::make('Ymdhis'),-5)
        ]);
        
        Room::create([
            'name' => 'Ruangan Malinau',
            'slug' => substr(Hash::make('Ymdhis'),-5)
        ]);
        
        Room::create([
            'name' => 'Ruangan Billyard',
            'slug' => substr(Hash::make('Ymdhis'),-5)
        ]);
        
        Room::create([
            'name' => 'Ruangan Studio',
            'slug' => substr(Hash::make('Ymdhis'),-5)
        ]);
        
        Room::create([
            'name' => 'Ruangan Auditorium',
            'slug' => substr(Hash::make('Ymdhis'),-5)
        ]);
        
        Room::create([
            'name' => 'Ruangan Lobby',
            'slug' => substr(Hash::make('Ymdhis'),-5)
        ]);
        
        Room::create([
            'name' => 'Ruangan Klinik',
            'slug' => substr(Hash::make('Ymdhis'),-5)
        ]);
        
        Room::create([
            'name' => 'Ruangan Dharma Wanita',
            'slug' => substr(Hash::make('Ymdhis'),-5)
        ]);
        
        Room::create([
            'name' => 'Ruangan Laktasi',
            'slug' => substr(Hash::make('Ymdhis'),-5)
        ]);
        
        Room::create([
            'name' => 'Ruangan Kantin',
            'slug' => substr(Hash::make('Ymdhis'),-5)
        ]);
        
        Room::create([
            'name' => 'Ruangan Arsip',
            'slug' => substr(Hash::make('Ymdhis'),-5)
        ]);
        
        Room::create([
            'name' => 'Ruang Kalan',
            'slug' => substr(Hash::make('Ymdhis'),-5)
        ]);
        
        Room::create([
            'name' => 'Ruang Staf Kalan',
            'slug' => substr(Hash::make('Ymdhis'),-5)
        ]);
        
        Room::create([
            'name' => 'Ruang Subbagian Humas',
            'slug' => substr(Hash::make('Ymdhis'),-5)
        ]);
        
        Room::create([
            'name' => 'Ruang Subbagian Umum dan TI',
            'slug' => substr(Hash::make('Ymdhis'),-5)
        ]);
        
        Room::create([
            'name' => 'Ruang Subbagian SDM',
            'slug' => substr(Hash::make('Ymdhis'),-5)
        ]);
        
        Room::create([
            'name' => 'Ruang Subbagian Hukum',
            'slug' => substr(Hash::make('Ymdhis'),-5)
        ]);
        
        Room::create([
            'name' => 'Ruang Subbagian Keuangan',
            'slug' => substr(Hash::make('Ymdhis'),-5)
        ]);
        
        Room::create([
            'name' => 'Ruang Subauditorat',
            'slug' => substr(Hash::make('Ymdhis'),-5)
        ]);
        
        Room::create([
            'name' => 'Ruang Kepala Subauditorat',
            'slug' => substr(Hash::make('Ymdhis'),-5)
        ]);
        
        Room::create([
            'name' => 'Ruang Pengendali Teknis',
            'slug' => substr(Hash::make('Ymdhis'),-5)
        ]);
    }
}
