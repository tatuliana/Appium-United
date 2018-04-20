Before do
  $driver.start_driver
  # $driver.set_network_connection 6
end

Before '@wip' do
  skip_this_scenario
end

After do |scenario|
  if scenario.failed?
    screenshots_dir = File.join(File.dirname(__FILE__), "..", "..", "screenshots")
    unless File.directory?(screenshots_dir)
      FileUtils.mkdir_p(screenshots_dir)
    end

    time_stamp = Time.now.strftime("%Y-%m-%d_at_%H.%M.%S").to_s
    screenshot_name = "#{time_stamp}_failure_#{scenario.name.gsub(/[^\w`~!@#\$%&\(\)_\-\+=\[\]\{\};:',]/, '-')}.png"
    screenshot_file = File.join(screenshots_dir, screenshot_name)
    $driver.screenshot(screenshot_file)
    embed("#{screenshot_file}", 'image/png')
  end


  $driver.driver_quit
end


AfterConfiguration do
  FileUtils.rm_r("screenshots") if File.directory?("screenshots")
end








