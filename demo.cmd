@echo off
@setlocal EnableDelayedExpansion
set detector=1
set confidence_threshold=0.3
set in_dir=data\video
set wait_time=1
scripts\build\examples\ssd\Release\ssd_detect models\MobileNet\MobileNetSSD_deploy.prototxt ^
models\MobileNet\MobileNetSSD_deploy.caffemodel ^
%in_dir% ^
-file_type video ^
-mean_value 0.5,0.5,0.5 ^
-normalize_value 0.007843 ^
-confidence_threshold !confidence_threshold! ^
-wait_time !wait_time! 
echo INFO: ============================================================
echo INFO: file_type : image
echo INFO: mean_value : 0.5,0.5,0.5
echo INFO: normalize_value : 0.007843



echo INFO: input_folder : !in_dir!
echo INFO: confidence_threshold : !confidence_threshold!
echo INFO: wait_time : !wait_time!
echo INFO: ============================================================

popd
@endlocal