package Paws::WAFRegional::XssMatchTuple;
  use Moose;
  has FieldToMatch => (is => 'ro', isa => 'Paws::WAFRegional::FieldToMatch', required => 1);
  has TextTransformation => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::XssMatchTuple

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAFRegional::XssMatchTuple object:

  $service_obj->Method(Att1 => { FieldToMatch => $value, ..., TextTransformation => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAFRegional::XssMatchTuple object:

  $result = $service_obj->Method(...);
  $result->Att1->FieldToMatch

=head1 DESCRIPTION

Specifies the part of a web request that you want AWS WAF to inspect
for cross-site scripting attacks and, if you want AWS WAF to inspect a
header, the name of the header.

=head1 ATTRIBUTES


=head2 B<REQUIRED> FieldToMatch => L<Paws::WAFRegional::FieldToMatch>

  Specifies where in a web request to look for cross-site scripting
attacks.


=head2 B<REQUIRED> TextTransformation => Str

  Text transformations eliminate some of the unusual formatting that
attackers use in web requests in an effort to bypass AWS WAF. If you
specify a transformation, AWS WAF performs the transformation on
C<FieldToMatch> before inspecting a request for a match.

You can only specify a single type of TextTransformation.

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

Specify C<NONE> if you don't want to perform any text transformations.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAFRegional>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

