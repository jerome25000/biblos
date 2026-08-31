# I18N
- All labels displayed must be managed with I18N service (french / english). No hard coded label in the code (only in i18nService.ts)
# Code clean
- function must not have a big size
- Put utilities code (formatter, converter..) in a dedicated file: utilities.ts
# Test rules
- Each feature must have a unit test written (in typescript)
- Each time, a test fails, fix it
# no visual test (UI)
- Do not run yourself the app (unless noticed). Just run unit tests. Fix any problem
# Hard coded values
- Do not use hard coded values in the code. Use constants instead (in constants.ts)
# no git
- Never use git commands in the terminal (unless noticed)