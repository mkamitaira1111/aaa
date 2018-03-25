class MedicinesController < ApplicationController
  def index
    @medicines = Medicine.all
  end

  def show
    @medicine = Medicine.find(params[:id])
  end

  def new
    @medicine = Medicine.new
  end

  def create
    @medicine = Medicine.new(medicine_params)
    @medicine.save
    redirect_to medicines_path
  end

  def edit
    # URLで指定した番号のモデルを取得する
    @medicine = Medicine.find(params[:id])
  end

  def update
    # URLで指定した番号のモデルを更新する
    @medicine = Medicine.find(params[:id])
    @medicine.update(medicine_params)

    # 処理の後はindex画面を表示する
    redirect_to medicines_path
  end

  def destroy
    # URLで指定した番号のモデルを削除する
    @medicine = Medicine.find(params[:id])
    @medicine.destroy

    # 処理の後はindex画面を表示する
    redirect_to medicines_path
  end

  private

  def set_medicine
    @medicine = Medicine.find(params[:id])
  end

  def medicine_params
    params.require(:medicine).permit(:name, :efficacy, :memo, :stock, :image1, :image2, :hospital_id, :user_id)
  end
end
