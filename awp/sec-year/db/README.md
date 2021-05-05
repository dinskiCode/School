<p>open xampp (macos applications gui --> "xampp (other)"), start servers<p>

<p>shell script to start mysql-shell<p>
<code>
awp-sql() {
    cd /Applications/XAMPP/bin; ./mysql -u root
}
</code>
<br><br>
<p>create tables by dump:</p>
<code>source /path/to/dump</code>
<br><br>
<p>use db:</p>
<code>use <db_name></code>
