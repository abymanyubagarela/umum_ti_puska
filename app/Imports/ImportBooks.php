<?php

namespace App\Imports;

use App\Models\Books;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithCustomCsvSettings;

class ImportBooks implements ToModel, FromCollection, WithCustomCsvSettings
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {   
        return new Books([
            'book_number' => $row[0],
            'book_title' => $row[1],
            'book_firstname' => $row[2],
            'book_lastname' => $row[3],
            'book_author' => $row[4],
            'book_publisher' => $row[5],
            'book_city' => $row[6],
            'book_year' => $row[7],
            'book_isbn' => $row[8],
            'book_class' => $row[9],
            'book_subject' => $row[10],
            'book_classcode' => $row[11],
            'book_acq' => $row[12],
            'book_location' => $row[13]
        ]);
    }

    public function getCsvSettings(): array
    {
        return [
            'delimiter' => ','
        ];
    }

    public function collection()
    {   
        return Books::all();
    }
}