package Paws::WAFRegional::SizeConstraint;
  use Moose;
  has ComparisonOperator => (is => 'ro', isa => 'Str', required => 1);
  has FieldToMatch => (is => 'ro', isa => 'Paws::WAFRegional::FieldToMatch', required => 1);
  has Size => (is => 'ro', isa => 'Int', required => 1);
  has TextTransformation => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::SizeConstraint

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAFRegional::SizeConstraint object:

  $service_obj->Method(Att1 => { ComparisonOperator => $value, ..., TextTransformation => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAFRegional::SizeConstraint object:

  $result = $service_obj->Method(...);
  $result->Att1->ComparisonOperator

=head1 DESCRIPTION

Specifies a constraint on the size of a part of the web request. AWS
WAF uses the C<Size>, C<ComparisonOperator>, and C<FieldToMatch> to
build an expression in the form of "C<Size> C<ComparisonOperator> size
in bytes of C<FieldToMatch>". If that expression is true, the
C<SizeConstraint> is considered to match.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ComparisonOperator => Str

  The type of comparison you want AWS WAF to perform. AWS WAF uses this
in combination with the provided C<Size> and C<FieldToMatch> to build
an expression in the form of "C<Size> C<ComparisonOperator> size in
bytes of C<FieldToMatch>". If that expression is true, the
C<SizeConstraint> is considered to match.

B<EQ>: Used to test if the C<Size> is equal to the size of the
C<FieldToMatch>

B<NE>: Used to test if the C<Size> is not equal to the size of the
C<FieldToMatch>

B<LE>: Used to test if the C<Size> is less than or equal to the size of
the C<FieldToMatch>

B<LT>: Used to test if the C<Size> is strictly less than the size of
the C<FieldToMatch>

B<GE>: Used to test if the C<Size> is greater than or equal to the size
of the C<FieldToMatch>

B<GT>: Used to test if the C<Size> is strictly greater than the size of
the C<FieldToMatch>


=head2 B<REQUIRED> FieldToMatch => L<Paws::WAFRegional::FieldToMatch>

  Specifies where in a web request to look for the size constraint.


=head2 B<REQUIRED> Size => Int

  The size in bytes that you want AWS WAF to compare against the size of
the specified C<FieldToMatch>. AWS WAF uses this in combination with
C<ComparisonOperator> and C<FieldToMatch> to build an expression in the
form of "C<Size> C<ComparisonOperator> size in bytes of
C<FieldToMatch>". If that expression is true, the C<SizeConstraint> is
considered to match.

Valid values for size are 0 - 21474836480 bytes (0 - 20 GB).

If you specify C<URI> for the value of C<Type>, the / in the URI counts
as one character. For example, the URI C</logo.jpg> is nine characters
long.


=head2 B<REQUIRED> TextTransformation => Str

  Text transformations eliminate some of the unusual formatting that
attackers use in web requests in an effort to bypass AWS WAF. If you
specify a transformation, AWS WAF performs the transformation on
C<FieldToMatch> before inspecting a request for a match.

You can only specify a single type of TextTransformation.

Note that if you choose C<BODY> for the value of C<Type>, you must
choose C<NONE> for C<TextTransformation> because CloudFront forwards
only the first 8192 bytes for inspection.

B<NONE>

Specify C<NONE> if you don't want to perform any text transformations.

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



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAFRegional>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

