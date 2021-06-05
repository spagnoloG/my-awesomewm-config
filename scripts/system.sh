
#!/bin/bash

suspend_and_lock() {
    i3lock lock -c 181818 && systemctl suspend
}

hibernate_and_lock() {
    i3lock lock -c 181818 && systemctl hibernate
}

# Function call
$1
