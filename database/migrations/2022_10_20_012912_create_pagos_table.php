<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePagosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pagos', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('cliente_id')->unsigned();
            $table->bigInteger('servicio_id')->unsigned();
            $table->bigInteger('tipopago_id')->unsigned();
            $table->date('fecha_pago');
            $table->double('monto');
            $table->double('saldo');
            $table->foreign('cliente_id')->references('id')->on('clientes')->cascadeOnDelete();
            $table->foreign('servicio_id')->references('id')->on('contratos')->cascadeOnDelete();
            $table->foreign('tipopago_id')->references('id')->on('tipopagos')->cascadeOnDelete();



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
        Schema::dropIfExists('pagos');
    }
}
