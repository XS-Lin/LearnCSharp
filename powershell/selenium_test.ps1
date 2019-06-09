# https://www.seleniumhq.org/download/
$webDriverDllPath = "D:\Site\LearnCSharp\bin\net40\WebDriver.dll" 
# https://developer.microsoft.com/en-us/microsoft-edge/tools/webdriver/
$driverExe = 'D:\Site\LearnCSharp\bin\'
# ブラウザのバージョン、ドライバEXEのバージョン、DLLのバージョンが合わない場合エラーになる。
# また、エラー情報にバージョンの情報が表示される。

Add-Type -Path $webDriverDllPath
$driver = New-Object  OpenQA.Selenium.Edge.EdgeDriver($driverExe)
#$driver = New-Object  OpenQA.Selenium.Chrome.ChromeDriver($driverExe)
$driver.Url = "https://www.google.co.jp/"

$inputBox = $driver.findElementByName("q")
$inputBox.SendKeys("HelloWorld by findElementByName")
Start-Sleep -Seconds 5
$inputBox.clear()
$inputBox = $driver.findElementById("lst-ib")
$inputBox.SendKeys("HelloWorld by findElementById")

#$driver.Quit()
