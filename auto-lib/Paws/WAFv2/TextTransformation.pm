package Paws::WAFv2::TextTransformation;
  use Moose;
  has Priority => (is => 'ro', isa => 'Int', required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFv2::TextTransformation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAFv2::TextTransformation object:

  $service_obj->Method(Att1 => { Priority => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAFv2::TextTransformation object:

  $result = $service_obj->Method(...);
  $result->Att1->Priority

=head1 DESCRIPTION

This is the latest version of B<AWS WAF>, named AWS WAFV2, released in
November, 2019. For information, including how to migrate your AWS WAF
resources from the prior release, see the AWS WAF Developer Guide
(https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

Text transformations eliminate some of the unusual formatting that
attackers use in web requests in an effort to bypass detection.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Priority => Int

  Sets the relative processing order for multiple transformations that
are defined for a rule statement. AWS WAF processes all
transformations, from lowest priority to highest, before inspecting the
transformed content. The priorities don't need to be consecutive, but
they must all be different.


=head2 B<REQUIRED> Type => Str

  You can specify the following transformation types:

B<CMD_LINE>

When you're concerned that attackers are injecting an operating system
command line command and using unusual formatting to disguise some or
all of the command, use this option to perform the following
transformations:

=over

=item *

Delete the following characters: \ " ' ^

=item *

Delete spaces before the following characters: / (

=item *

Replace the following characters with a space: , ;

=item *

Replace multiple spaces with one space

=item *

Convert uppercase letters (A-Z) to lowercase (a-z)

=back

B<COMPRESS_WHITE_SPACE>

Use this option to replace the following characters with a space
character (decimal 32):

=over

=item *

\f, formfeed, decimal 12

=item *

\t, tab, decimal 9

=item *

\n, newline, decimal 10

=item *

\r, carriage return, decimal 13

=item *

\v, vertical tab, decimal 11

=item *

non-breaking space, decimal 160

=back

C<COMPRESS_WHITE_SPACE> also replaces multiple spaces with one space.

B<HTML_ENTITY_DECODE>

Use this option to replace HTML-encoded characters with unencoded
characters. C<HTML_ENTITY_DECODE> performs the following operations:

=over

=item *

Replaces C<(ampersand)quot;> with C<">

=item *

Replaces C<(ampersand)nbsp;> with a non-breaking space, decimal 160

=item *

Replaces C<(ampersand)lt;> with a "less than" symbol

=item *

Replaces C<(ampersand)gt;> with C<E<gt>>

=item *

Replaces characters that are represented in hexadecimal format,
C<(ampersand)(hash)xhhhh;>, with the corresponding characters

=item *

Replaces characters that are represented in decimal format,
C<(ampersand)(hash)nnnn;>, with the corresponding characters

=back

B<LOWERCASE>

Use this option to convert uppercase letters (A-Z) to lowercase (a-z).

B<URL_DECODE>

Use this option to decode a URL-encoded value.

B<NONE>

Specify C<NONE> if you don't want any text transformations.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAFv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

