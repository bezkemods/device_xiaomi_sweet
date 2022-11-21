# Nuke 
rm -rf hardware/qcom-caf/sm8150/display 
rm -rf hardware/qcom-caf/sm8150/audio
rm -rf hardware/qcom-caf/sm8150/media
rm -rf packages/resources/devicesettings

# Hals
git clone https://github.com/ArrowOS/android_hardware_qcom_audio -b arrow-13.0-caf-sm8150 hardware/qcom-caf/sm8150/audio 
git clone https://github.com/ArrowOS/android_hardware_qcom_media -b arrow-13.0-caf-sm8150 hardware/qcom-caf/sm8150/media 
git clone https://github.com/ArrowOS/android_hardware_qcom_display -b arrow-13.0-caf-sm8150 hardware/qcom-caf/sm8150/display

# Common dt
git clone https://github.com/Xtended-Devices/device_xiaomi_sm6150-common.git -b xt device/xiaomi/sm6150-common

# Vendor
git clone https://gitlab.com/project-xtended/vendor/vendor_xiaomi -b xt vendor/xiaomi

# Device Settings
git clone https://github.com/PixelExperience/packages_resources_devicesettings packages/resources/devicesettings

# Kernel
git clone -b 15 --depth=1 https://gitlab.com/PixelOS-Devices/playgroundtc.git prebuilts/clang/host/linux-x86/clang-playground
git clone https://github.com/itsshashanksp/kernel_xiaomi_sm6150.git kernel/xiaomi/sm6150
