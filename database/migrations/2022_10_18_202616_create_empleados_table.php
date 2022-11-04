<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEmpleadosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('empleados', function (Blueprint $table) {
            $table->engine = 'InnoDB';
            $table->id();
            $table->bigInteger('cui');
            $table->string('nombres');
            $table->string('apellidos');
            $table->bigInteger('telefono');
            $table->string('email');
            $table->bigInteger('cargo_id')->unsigned(); 
            $table->foreign('cargo_id')->references('id')->on('cargos')->cascadeOnDelete();
          

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('empleados');
    }
}
