module FeatureHelper

  def fill_autocomplete(field, options = {})
    fill_in field, with: options[:with]
    page.execute_script %Q{ $('##{field}').trigger('focus') }
    page.execute_script %Q{ $('##{field}').trigger('keydown') }
    selector = %Q{ul.ui-autocomplete li.ui-menu-item a:contains('#{options[:with]}')}
    page.should have_selector('ul.ui-autocomplete li.ui-menu-item a')
    # page.find('ul.ui-autocomplete li.ui-menu-item a', :text => options[:with]).trigger(:mouseover).click()
    # page.execute_script %Q{ $("#{selector}").trigger('mouseenter').click() }
    page.execute_script "$(\"#{selector}\").mouseenter().click()"
  end

    def select_nth_option(id, n)
      option_xpath = "//*[@id='#{id}']/option[#{n}]"
      option = find(:xpath, option_xpath).text
      select(option, from: id)
    end

  def within_row(text, &block)
    within :xpath, "//table//tr[td[contains(.,\"#{text}\")]]" do
      yield
    end
  end
end
