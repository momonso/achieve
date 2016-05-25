class FormController < ApplicationController

def index
	# 入力画面を表示
	@form = Form.new
	render :action => 'index'
end

def confirm
	@form = Form.new(form_params)

    #再入力の場合、indexへ
    if params[:back]
        render:action => 'index'
    else

	# 入力値のチェック
	if @form.valid?
	# OK。確認画面を表示
		render :action => 'confirm'
	else
	# NG。入力画面を再表示
		render :action => 'index'
	end
	
	end
end


def thanks
	# 完了画面を表示
    @form = Form.create(form_params)
	render :action => 'thanks'
end


private
    def form_params
      params.require(:form).permit(:name, :email, :message)
    end

end
