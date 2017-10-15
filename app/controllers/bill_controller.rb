class BillController < ApplicationController
  def new
    billConfig = File.read(Rails.root.join("bill_config.json"))
    @billConfig = ActiveSupport::JSON.decode(billConfig)
  end

  def create
    @tmpBill = temp_bill_params
    @cgstRate = @tmpBill['cgst'].to_f
    @sgstRate = @tmpBill['sgst'].to_f
    respond_to do |format|
      format.html do
        render layout: "invoice"
      end
      format.pdf do
        render layout: "invoice", pdf: "invoice"   # Excluding ".pdf" extension.
      end
    end
  end

  def preview
    @tmpBill = temp_bill_params
    @cgstRate = @tmpBill['cgst'].to_f
    @sgstRate = @tmpBill['sgst'].to_f
    render layout: "invoice"
  end

  private
    def temp_bill_params
      params.require(:tmpbill).permit!
    end
end
