set -l commands -p --performance-mode -b --battery-mode -c --check -vp --verify-performance -vb --verify-battery

complete -c ideapad-perf --no-files
complete -c ideapad-perf -s h -l help -d "see this help message"

complete -c ideapad-perf -n "not __fish_seen_subcommand_from $commands" \
    -a "
-p\t'set performance mode'
--performance-mode\t'set performance mode'
-b\t'set battery mode'
--battery-mode\t'set battery mode'
-c\t'verify both performance and battery mode'
--check\t'verify both performance and battery mode'
-vp\t'verify performance mode'
--verify-performance\t'verify performance mode'
-vb\t'verify battery mode'
--verify-battery\t'verify battery mode'
"

complete -c ideapad-perf -n "__fish_seen_subcommand_from -p" \
    -a "
ic\t'Intelligent Cooling'
cooling\t'Intelligent Cooling'
ep\t'Extreme Performance'
performance\t'Extreme Performance'
bs\t'Battery Saving'
battery\t'Battery Saving'
"
complete -c ideapad-perf -n "__fish_seen_subcommand_from --performance-mode" \
    -a "
ic\t'Intelligent Cooling'
cooling\t'Intelligent Cooling'
ep\t'Extreme Performance'
performance\t'Extreme Performance'
bs\t'Battery Saving'
battery\t'Battery Saving'
"

complete -c ideapad-perf -n "__fish_seen_subcommand_from -b" \
    -a "
rc\t'Enable Rapid Charge (with Battery Conservation disabled)'
rapid\t'Enable Rapid Charge (with Battery Conservation disabled)'
bc\t'Enable Battery Conservation (with Rapid Charge disabled)'
conserve\t'Enable Battery Conservation (with Rapid Charge disabled)'
off\t'Disable both Rapid Charge and Battery Conservation'
"
complete -c ideapad-perf -n "__fish_seen_subcommand_from --battery-mode" \
    -a "
rc\t'Enable Rapid Charge (with Battery Conservation disabled)'
rapid\t'Enable Rapid Charge (with Battery Conservation disabled)'
bc\t'Enable Battery Conservation (with Rapid Charge disabled)'
conserve\t'Enable Battery Conservation (with Rapid Charge disabled)'
off\t'Disable both Rapid Charge and Battery Conservation'
"
