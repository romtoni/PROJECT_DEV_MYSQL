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
        Schema::create('ref_budget_account', function (Blueprint $table) {
            $table->increments('budget_account_id');
            $table->string('user_create', 20)->default(null);
            $table->dateTime('date_create')->default(null);
            $table->string('user_modify', 20)->default(null);
            $table->dateTime('date_modify')->default(null);
            $table->string('budget_account_code', 10)->default(null);
            $table->string('budget_account_name', 255)->default(null);

            // Indexes

        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('ref_budget_account');
    }
};
