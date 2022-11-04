<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrdenesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ordenes', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('trabajo_id')->unsigned();
            $table->bigInteger('servicio_id')->unsigned();
            $table->bigInteger('tecnico_id')->unsigned();
            $table->bigInteger('estado_id')->unsigned();
            $table->date('fecha_generacion');
            $table->bigInteger('supervisor_id')->unsigned()->nullable();
            $table->string('comentario');
            $table->string('evidencias');
            $table->date('fecha_verificacion');
            $table->bigInteger('cliente_id')->unsigned();
            $table->bigInteger('contrato_id')->unsigned();
            $table->timestamps();

            $table->foreign('trabajo_id')->references('id')->on('tipotrabajos')->cascadeOnDelete();
            $table->foreign('servicio_id')->references('id')->on('tipoordenes')->cascadeOnDelete();
            $table->foreign('tecnico_id')->references('id')->on('empleados')->cascadeOnDelete();
            $table->foreign('estado_id')->references('id')->on('estados')->cascadeOnDelete();
            $table->foreign('supervisor_id')->references('id')->on('empleados')->cascadeOnDelete();
            $table->foreign('cliente_id')->references('id')->on('clientes')->cascadeOnDelete();
            $table->foreign('contrato_id')->references('id')->on('contratos')->cascadeOnDelete();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('ordenes');
    }
}
