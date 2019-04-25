package Paws::WAFRegional::ByteMatchTuple;
  use Moose;
  has FieldToMatch => (is => 'ro', isa => 'Paws::WAFRegional::FieldToMatch', required => 1);
  has PositionalConstraint => (is => 'ro', isa => 'Str', required => 1);
  has TargetString => (is => 'ro', isa => 'Str', required => 1);
  has TextTransformation => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::ByteMatchTuple

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAFRegional::ByteMatchTuple object:

  $service_obj->Method(Att1 => { FieldToMatch => $value, ..., TextTransformation => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAFRegional::ByteMatchTuple object:

  $result = $service_obj->Method(...);
  $result->Att1->FieldToMatch

=head1 DESCRIPTION

The bytes (typically a string that corresponds with ASCII characters)
that you want AWS WAF to search for in web requests, the location in
requests that you want AWS WAF to search, and other settings.

=head1 ATTRIBUTES


=head2 B<REQUIRED> FieldToMatch => L<Paws::WAFRegional::FieldToMatch>

  The part of a web request that you want AWS WAF to search, such as a
specified header or a query string. For more information, see
FieldToMatch.


=head2 B<REQUIRED> PositionalConstraint => Str

  Within the portion of a web request that you want to search (for
example, in the query string, if any), specify where you want AWS WAF
to search. Valid values include the following:

B<CONTAINS>

The specified part of the web request must include the value of
C<TargetString>, but the location doesn't matter.

B<CONTAINS_WORD>

The specified part of the web request must include the value of
C<TargetString>, and C<TargetString> must contain only alphanumeric
characters or underscore (A-Z, a-z, 0-9, or _). In addition,
C<TargetString> must be a word, which means one of the following:

=over

=item *

C<TargetString> exactly matches the value of the specified part of the
web request, such as the value of a header.

=item *

C<TargetString> is at the beginning of the specified part of the web
request and is followed by a character other than an alphanumeric
character or underscore (_), for example, C<BadBot;>.

=item *

C<TargetString> is at the end of the specified part of the web request
and is preceded by a character other than an alphanumeric character or
underscore (_), for example, C<;BadBot>.

=item *

C<TargetString> is in the middle of the specified part of the web
request and is preceded and followed by characters other than
alphanumeric characters or underscore (_), for example, C<-BadBot;>.

=back

B<EXACTLY>

The value of the specified part of the web request must exactly match
the value of C<TargetString>.

B<STARTS_WITH>

The value of C<TargetString> must appear at the beginning of the
specified part of the web request.

B<ENDS_WITH>

The value of C<TargetString> must appear at the end of the specified
part of the web request.


=head2 B<REQUIRED> TargetString => Str

  The value that you want AWS WAF to search for. AWS WAF searches for the
specified string in the part of web requests that you specified in
C<FieldToMatch>. The maximum length of the value is 50 bytes.

Valid values depend on the values that you specified for
C<FieldToMatch>:

=over

=item *

C<HEADER>: The value that you want AWS WAF to search for in the request
header that you specified in FieldToMatch, for example, the value of
the C<User-Agent> or C<Referer> header.

=item *

C<METHOD>: The HTTP method, which indicates the type of operation
specified in the request. CloudFront supports the following methods:
C<DELETE>, C<GET>, C<HEAD>, C<OPTIONS>, C<PATCH>, C<POST>, and C<PUT>.

=item *

C<QUERY_STRING>: The value that you want AWS WAF to search for in the
query string, which is the part of a URL that appears after a C<?>
character.

=item *

C<URI>: The value that you want AWS WAF to search for in the part of a
URL that identifies a resource, for example, C</images/daily-ad.jpg>.

=item *

C<BODY>: The part of a request that contains any additional data that
you want to send to your web server as the HTTP request body, such as
data from a form. The request body immediately follows the request
headers. Note that only the first C<8192> bytes of the request body are
forwarded to AWS WAF for inspection. To allow or block requests based
on the length of the body, you can create a size constraint set. For
more information, see CreateSizeConstraintSet.

=item *

C<SINGLE_QUERY_ARG>: The parameter in the query string that you will
inspect, such as I<UserName> or I<SalesRegion>. The maximum length for
C<SINGLE_QUERY_ARG> is 30 characters.

=item *

C<ALL_QUERY_ARGS>: Similar to C<SINGLE_QUERY_ARG>, but instead of
inspecting a single parameter, AWS WAF inspects all parameters within
the query string for the value or regex pattern that you specify in
C<TargetString>.

=back

If C<TargetString> includes alphabetic characters A-Z and a-z, note
that the value is case sensitive.

B<If you're using the AWS WAF API>

Specify a base64-encoded version of the value. The maximum length of
the value before you base64-encode it is 50 bytes.

For example, suppose the value of C<Type> is C<HEADER> and the value of
C<Data> is C<User-Agent>. If you want to search the C<User-Agent>
header for the value C<BadBot>, you base64-encode C<BadBot> using MIME
base64-encoding and include the resulting value, C<QmFkQm90>, in the
value of C<TargetString>.

B<If you're using the AWS CLI or one of the AWS SDKs>

The value that you want AWS WAF to search for. The SDK automatically
base64 encodes the value.


=head2 B<REQUIRED> TextTransformation => Str

  Text transformations eliminate some of the unusual formatting that
attackers use in web requests in an effort to bypass AWS WAF. If you
specify a transformation, AWS WAF performs the transformation on
C<TargetString> before inspecting a request for a match.

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

