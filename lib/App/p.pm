use strict;
use warnings;
package App::p;

# VERSION

# ABSTRACT: Steroids for your perl one-liners.

=head1 SYNOPSIS

    p 'dd [File::Spec->path]'   # dynamically load arbitrary modules
    p -pe 's/foo/bar/' foo.txt  # use your favorite options like -lane
    p 'say "hello world!"'      # -E is assumed if no options are provided
    p 'dd yl r "config.yml"'    # chain commands
    p 'dd ExtUtils::Installed->new->modules' # list all installed modules
    p '  dd xl r "/etc/xml/xml-core.xml"'# print dump of hash converted xml
    p 'p xd xl r "/etc/xml/xml-core.xml"'# print xml converted from hash

=head1 ACKNOWLEDGEMENTS

This is based on Randy Stauner's
L<http://blogs.perl.org/users/randy_stauner/2011/06/exploratory-one-liners-with-less-typing.html>
and Marco Fontani's L<https://gist.github.com/1042504>.

=cut

1;
