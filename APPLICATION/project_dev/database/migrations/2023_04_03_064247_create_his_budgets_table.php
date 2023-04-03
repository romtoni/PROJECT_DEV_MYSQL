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
        Schema::create('his_budget', function (Blueprint $table) {
            $table->integer('his_budget_id')->autoIncrement();
            $table->integer('budget_id')->default(null);
            $table->string('user_create', 20)->default(null);
            $table->dateTime('date_create')->default(null);
            $table->string('user_modify', 20)->default(null);
            $table->dateTime('date_modify')->default(null);
            $table->string('user_delete', 20)->default(null);
            $table->dateTime('date_delete')->default(null);
            $table->string('reason_delete', 100)->default(null);
            $table->string('budget_description', 4000)->default(null);
            $table->integer('budget_center_id')->default(null);
            $table->integer('budget_account_id')->default(null);
            $table->string('budget_year', 4)->default(null);
            $table->string('budget_month', 2)->default(null);
            $table->integer('budget_amount')->default(null);
            $table->string('budget_status', 10)->default(null);

            // Indexes
            $table->primary(['his_budget_id']);

        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('his_budget');
    }
};
