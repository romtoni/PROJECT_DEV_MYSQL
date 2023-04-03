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
        Schema::create('his_role_menu', function (Blueprint $table) {
            $table->integer('his_role_menu_id')->autoIncrement();
            $table->integer('role_menu_id')->default(null);
            $table->string('user_create', 20)->default(null);
            $table->dateTime('date_create')->default(null);
            $table->string('user_modify', 20)->default(null);
            $table->dateTime('date_modify')->default(null);
            $table->string('user_delete', 20)->default(null);
            $table->dateTime('date_delete')->default(null);
            $table->string('reason_delete', 4000)->default(null);
            $table->integer('role_id')->default(null);
            $table->integer('menu_id')->default(null);
            $table->string('is_select', 1)->default(null);

            // Indexes
            $table->primary(['his_role_menu_id']);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('his_role_menu');
    }
};
