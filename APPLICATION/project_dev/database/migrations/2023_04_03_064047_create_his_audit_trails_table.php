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
            $table->increments('audit_trail_number');
            $table->string('user_update', 20)->default(null);
            $table->timestamp('date_update')->nullable()->default(null);
            $table->string('table_name', 30)->default(null);
            $table->longText('old_value');
            $table->longText('new_value');

            // Indexes
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
