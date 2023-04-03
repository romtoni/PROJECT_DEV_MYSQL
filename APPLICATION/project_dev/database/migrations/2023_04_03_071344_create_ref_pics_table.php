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
        Schema::create('ref_pic', function (Blueprint $table) {
            $table->integer('pic_id')->autoIncrement();
            $table->string('user_create', 20)->default(null);
            $table->dateTime('date_create')->default(null);
            $table->string('user_modify', 20)->default(null);
            $table->dateTime('date_modify')->default(null);
            $table->string('pic_name', 255)->default(null);
            $table->string('position_code', 10)->default(null);
            $table->integer('vendor_id')->default(null);
            $table->string('is_leader', 1)->default(null);
            $table->string('is_active', 1)->default(null);

            // Indexes
            $table->primary(['pic_id']);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('ref_pic');
    }
};
