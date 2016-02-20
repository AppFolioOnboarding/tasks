---
title: Content Security Policy
assignee: bboe
---

#### As a security-minded developer I want to obviate all cross site scripting (XSS) attacks.

A strong content security policy can be used to prevent XSS and other
attacks. With many things security related, it is a good idea to disallow
everything and then allow things only after questioning whether or not they
should be allowed (a whitelist policy).

The most restrictive content security policy is:

    Content-Security-Policy: default-src 'none';

However this does not permit any stylesheets, images, nor javascript sources
all of which we want to be able to serve up locally, but not inline. The
following accomplishes that task:

    Content-Security-Policy: default-src 'none'; script-src 'self'; img-src 'self'; style-src 'self';


Acceptance criteria:
- [ ] Every request outputs an appropriate content security policy header.
- [ ] There are no content security policy violations in chrome's console.
- [ ] The user interface remains the same.


Reference material:
- https://www.owasp.org/index.php/Content_Security_Policy_Cheat_Sheeti

Dependencies:
- Image Index
