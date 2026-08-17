# I18N
- All labels displayed must be managed with a I18N service (french / english). No hard coded label in the code (only in i18nService.ts)
# Code clean
- function must not have a big size
- do not hesitate to put utilities code (formatter, converter..) in a dedicated file: utilities.ts
# Test rules
- Each feature must have a unit test written (in typescript)
- Each time, a test fails, fix it
# no visual test (UI)
- Do not run yourself the app (unless noticed). Just build and run unit tests. Fix any problem
