This web application downloads your torrent-files or magnet links or torrent http links and uploads directly to your any rclone drive instantly.
Here qBittorrent-nox (Linux) is used as web UI And Rclone is used as Uploader with the help of Docker.

Special thanks to rclone and qbittorrent-nox

![Demo](https://raw.githubusercontent.com/developeranaz/qbittorrent-to-rclone-heroku-beta/main/demo/Screenshot%202022-01-09%20180328.png)


## How To Deploy ?
### Step 1
* Star my repository
* Create a [Heroku](https://dashboard.heroku.com/login) Free account
* Log in to Heroku in any browser
* Click on the Rapid deployment button [![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://dashboard.heroku.com/new?template=https://github.com/daluwarsajib/qbittorrent_heroku) and deploy app
### Step 2 (setting Config Vars)
* Go to deployed application in heroku
* Switch to application settings.
* Scroll down to see `config vars` > click `Reveal Config Vars`.

#### i) RCLONE_CONFIG_IN_RAW_URL

* Generate rclone.conf file from any terminal or cmd or termux or by using RCX android.
* Make sure you have a valid config and the `remote name` shouldn't have spaces in it. eg- `[devanaz]`
* You can use Multiple cloud drive accounts in single rclone.conf file, if you done that your first config is only taken for upload and if you want to manually add your cloudname or remote name use `remote` config var and your curresponding value from config.
* We need any text/code hosting website, Use [gist-github](https://gist.github.com) github account needed.
* Open rclone.config file using any text editors and copy all text inside rclone.conf and paste it in gist
* Choose any file name and save it by clicking `Create secret gist`.
* Then Click RAW button and copy the url (RAW is important)
* Paste your config Url in the heroku 'RCLONE_CONFIG_IN_RAW_URL' Section 
* note : Don't share this url to anyone

#### ii) WEBUSER
* Type Your new Username in `username` section

#### iii) WEBPASSWORD
* Type Your New Password in `password` section

#### iv) remote (Hidden config var)
* Added a hidden config var `remote` and its value to manually override or change your desired rclone remote name from your given config.

## Common Errors
* If  `This page isn’t workingIf the problem continues, contact the site owner. HTTP ERROR 401` is shown in browser change your browser url from `https://myapp.herokuapp.com` to `http://myapp.herokuapp.com/` . ie., change https to http
* If showing Unauthorised Please Reload your webpage.

## SCREENSHOTS


![demoo](https://raw.githubusercontent.com/developeranaz/qbittorrent-to-rclone-heroku-beta/main/demo/Screenshot%202022-01-09%20181831.png)
![demoo](https://raw.githubusercontent.com/developeranaz/qbittorrent-to-rclone-heroku-beta/main/demo/image.png)

## What's New
* Added anti-ban for heroku.
* Added a hidden config var `remote` to manually override or choose your desired remote name from config.
* Upgraded to qBittorrent-nox `release-4.4.5_v2.0.7`
		  
             <center> <style>.bmc-button img{width: 27px !important;margin-bottom: 1px !important;box-shadow: none !important;border: none !important;vertical-align: middle !important;}.bmc-button{line-height: 36px !important;height:37px !important;text-decoration: none !important;display:inline-flex !important;color:#ffffff !important;background-color:#FF813F !important;border-radius: 3px !important;border: 1px solid transparent !important;padding: 1px 9px !important;font-size: 23px !important;letter-spacing: 0.6px !important;box-shadow: 0px 1px 2px rgba(190, 190, 190, 0.5) !important;-webkit-box-shadow: 0px 1px 2px 2px rgba(190, 190, 190, 0.5) !important;margin: 0 auto !important;font-family:'Cookie', cursive !important;-webkit-box-sizing: border-box !important;box-sizing: border-box !important;-o-transition: 0.3s all linear !important;-webkit-transition: 0.3s all linear !important;-moz-transition: 0.3s all linear !important;-ms-transition: 0.3s all linear !important;transition: 0.3s all linear !important;}.bmc-button:hover, .bmc-button:active, .bmc-button:focus {-webkit-box-shadow: 0px 1px 2px 2px rgba(190, 190, 190, 0.5) !important;text-decoration: none !important;box-shadow: 0px 1px 2px 2px rgba(190, 190, 190, 0.5) !important;opacity: 0.85 !important;color:#ffffff !important;}</style><link href="https://fonts.googleapis.com/css?family=Cookie" rel="stylesheet"><a class="bmc-button" target="_blank" href="https://www.buymeacoffee.com/mrxbd"><img src="https://www.buymeacoffee.com/assets/img/BMC-btn-logo.svg" alt="Buy me a coffee"><span style="margin-left:5px">Buy me a coffee</span></a>
          </center>
