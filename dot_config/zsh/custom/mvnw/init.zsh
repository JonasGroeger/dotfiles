#
# Uses mvnw as mvn.
#
# Authors:
#   Jonas Gröger <jonas@huntun.de>
#

mvn-or-mvnw() {
    if [ -x ./mvnw ]; then
        echo "Executing ./mvnw instead of mvn"
        ./mvnw "$@"
    else
        command mvn "$@"
    fi
}
alias mvn="mvn-or-mvnw"
alias mwn="mvn-or-mvnw"
