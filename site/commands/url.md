---
name: url
summary: List, show or change URLs
synopsis: |
  ppl url
  ppl url <contact>
  ppl url <contact> <url>
  ppl url <contact> (-d | --delete) <url>
see_also:
  - text: color output
    href: /settings/color-url
---

With no arguments, the URLs of each contact in the address book are listed.

If a `<contact>` is specified, the URLs of that contact are shown.

If both a `<contact>` and a `<URL>` are given, then the URL is added to the
contact.

If the `--delete` or `-d` flag is set, then the given `<url>` is
deleted from the specified `<contact>`.

## Examples

    $ ppl url jdoe http://facebook.com/jdoe
    $ ppl url adam http://adamswebsite.com
    $ ppl url jdoe
    http://facebook.com/jdoe
    $ ppl url
    adam:  http://adamswebsite.com
    jdoe:  http://facebook.com/jdoe

