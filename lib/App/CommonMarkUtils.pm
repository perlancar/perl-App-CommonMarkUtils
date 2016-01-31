package App::CommonMarkUtils;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our %SPEC;

$SPEC{commonmark_to_html} = {
    v => 1.1,
    summary => 'Convert CommonMark to HTML',
    args => {
        commonmark => {
            schema => 'str*',
            cmdline_src => 'stdin_or_files',
            req => 1,
            pos => 0,
        },
    },
};
sub commonmark_to_html {
    require CommonMark;

    my %args = @_;

    my $html = CommonMark->markdown_to_html($args{commonmark});

    [200, "OK", $html];
}

1;
# ABSTRACT: Collection of CLI utilities related to CommonMark

=head1 DESCRIPTION

This distribution provides the following command-line utilities related to
CommonMark:

#INSERT_EXECS_LIST


=head1 SEE ALSO

L<http://commonmark.org>

=cut
