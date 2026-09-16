# I18N
- All labels displayed must be managed with I18N service (french / english). No hard coded label in the code (only in i18nService.ts)
# Code clean
- function must not have a big size
- Put utilities code (formatter, converter..) in a dedicated file: utilities.ts
# Test rules
- Each feature must have a unit test written (in typescript)
- Each time, a test fails, fix it
# check build
- Each time, run the build command (npm run build) to check that the code is valid
# no visual test (UI)
- Do not run yourself the app (unless noticed). Just run unit tests. Fix any problem
# Hard coded values
- Do not use hard coded values in the code. Use constants instead (in constants.ts)
# git 
- Only commit code that has been approved by the reviewer. Do not commit code that has not been approved. Never push the code.