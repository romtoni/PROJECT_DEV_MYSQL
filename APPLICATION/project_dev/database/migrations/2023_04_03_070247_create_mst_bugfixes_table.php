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
        Schema::create('mst_bugfix', function (Blueprint $table) {
            $table->increments('bugfix_id');
            $table->string('user_create', 20)->default(null);
            $table->dateTime('date_create')->default(null);
            $table->string('user_modify', 20)->default(null);
            $table->dateTime('date_modify')->default(null);
            $table->string('user_delete', 20)->default(null);
            $table->dateTime('date_delete')->default(null);
            $table->string('reason_delete', 4000)->default(null);
            $table->string('bugfix_no', 30)->default(null);
            $table->string('bugfix_name', 255)->default(null);
            $table->string('bugfix_description', 4000)->default(null);
            $table->integer('bugfix_progress')->default(null);
            $table->string('bugfix_status', 10)->default(null);
            $table->dateTime('plan_date_start')->default(null);
            $table->dateTime('plan_date_end')->default(null);
            $table->integer('plan_total_hours')->default(null);
            $table->dateTime('actual_date_start')->default(null);
            $table->dateTime('actual_date_end')->default(null);
            $table->integer('actual_date_hours')->default(null);
            $table->string('priority_code', 3)->default(null);
            $table->string('is_pir', 1)->default(null);

            // Indexes
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('mst_bugfix');
    }
};
