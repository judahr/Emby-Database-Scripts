# Emby-Database-Scripts
A set of scripts that can be used against the Emby databases to solve problems.  These scripts are not supported by anyone.  Be sure to backup before using them.


# Emby Collection Cleanup Scripts (DeleteCollections.sql)

## 🎯 Purpose

This repository provides a set of SQL scripts designed to clean up unwanted or duplicate **collections** in Emby's `library.db` SQLite database. Emby occasionally creates multiple collections automatically, and currently, there's no supported method within the UI or official API to batch-delete these entries.

These scripts offer an effective workaround for users who want greater control over their media library by directly interacting with Emby's underlying database.

## 📚 Background

Emby is a powerful media server that organizes your personal media library and streams content across devices. However, some users have encountered a persistent issue: Emby automatically generates multiple collections (e.g. genre-based or series groupings) that clutter the user interface and cannot be deleted using Emby's built-in tools.

As a longtime Emby user and experienced SQL developer, I created these scripts to safely remove unwanted collections by directly modifying the `library.db` SQLite file where Emby stores its media metadata.

## 🧰 What This Repo Contains

- SQL scripts to **identify** and **delete** collections and data references

## ⚠️ Warning

These scripts make **direct modifications** to your Emby database. While tested and working reliably in my environment, you should always:
- Back up `library.db` before making any changes
- Stop Emby Server while performing the cleanup
- Use caution and verify results before restarting Emby

## 🚀 Getting Started

1. **Stop Emby Server**
2. **Backup your `library.db`** (typically found under `AppData/Roaming/Emby-Server/programdata/data` (Windows))  You can find the location using these instructions: https://emby.media/support/articles/Corrupt-Database.html#find-location-of-database-files
3. Run the provided SQL commands located in DeleteCollections.sql using a SQLite client like `Command Shell Line for SQLite` https://sqlite.org/cli.html
4. Restart Emby Server and verify that unwanted collections are removed

## ✅ Compatibility

- Verified with Emby versions: *Tested on 4.8.11.0*
- Database: SQLite (`library.db`)

## 📌 Notes

These scripts were created out of necessity due to the lack of native Emby support for bulk collection deletion. If Emby introduces a formal API or interface for collection management, this repository should be updated accordingly.

## 🗣 Feedback & Contributions

Issues and pull requests are welcome! If you've improved or extended the cleanup process, feel free to contribute.

---

