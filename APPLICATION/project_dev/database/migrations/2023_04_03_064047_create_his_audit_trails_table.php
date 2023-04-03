<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('his_audit_trail', function (Blueprint $table) {
            $table->integer('audit_trail_number')->autoIncrement();
            $table->string('user_update', 20)->default(null);
            $table->timestamp('date_update')->nullable()->default(null);
            $table->string('table_name', 30)->default(null);
            $table->UNKNOWN_DATA_TYPE('old_value');
            $table->UNKNOWN_DATA_TYPE('new_value');

            // Indexes
            $table->primary(['audit_trail_number']);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('his_audit_trail');
    }
};
