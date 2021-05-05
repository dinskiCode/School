open xampp (macos applications gui --> "xampp (other)"), start servers

<code>
awp-sql() {
    cd /Applications/XAMPP/bin; ./mysql -u root
}
</code>
create tables by dump:
<code>source /path/to/dump</code>

use db:
<code>use <db_name></code>
