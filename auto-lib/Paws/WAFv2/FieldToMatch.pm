package Paws::WAFv2::FieldToMatch;
  use Moose;
  has AllQueryArguments => (is => 'ro', isa => 'Paws::WAFv2::AllQueryArguments');
  has Body => (is => 'ro', isa => 'Paws::WAFv2::Body');
  has Method => (is => 'ro', isa => 'Paws::WAFv2::Method');
  has QueryString => (is => 'ro', isa => 'Paws::WAFv2::QueryString');
  has SingleHeader => (is => 'ro', isa => 'Paws::WAFv2::SingleHeader');
  has SingleQueryArgument => (is => 'ro', isa => 'Paws::WAFv2::SingleQueryArgument');
  has UriPath => (is => 'ro', isa => 'Paws::WAFv2::UriPath');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFv2::FieldToMatch

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAFv2::FieldToMatch object:

  $service_obj->Method(Att1 => { AllQueryArguments => $value, ..., UriPath => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAFv2::FieldToMatch object:

  $result = $service_obj->Method(...);
  $result->Att1->AllQueryArguments

=head1 DESCRIPTION

This is the latest version of B<AWS WAF>, named AWS WAFV2, released in
November, 2019. For information, including how to migrate your AWS WAF
resources from the prior release, see the AWS WAF Developer Guide
(https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

The part of a web request that you want AWS WAF to inspect. Include the
C<FieldToMatch> types that you want to inspect, with additional
specifications as needed, according to the type.

=head1 ATTRIBUTES


=head2 AllQueryArguments => L<Paws::WAFv2::AllQueryArguments>

  Inspect all query arguments.


=head2 Body => L<Paws::WAFv2::Body>

  Inspect the request body, which immediately follows the request
headers. This is the part of a request that contains any additional
data that you want to send to your web server as the HTTP request body,
such as data from a form.

Note that only the first 8 KB (8192 bytes) of the request body are
forwarded to AWS WAF for inspection. If you don't need to inspect more
than 8 KB, you can guarantee that you don't allow additional bytes in
by combining a statement that inspects the body of the web request,
such as ByteMatchStatement or RegexPatternSetReferenceStatement, with a
SizeConstraintStatement that enforces an 8 KB size limit on the body of
the request. AWS WAF doesn't support inspecting the entire contents of
web requests whose bodies exceed the 8 KB limit.


=head2 Method => L<Paws::WAFv2::Method>

  Inspect the HTTP method. The method indicates the type of operation
that the request is asking the origin to perform.


=head2 QueryString => L<Paws::WAFv2::QueryString>

  Inspect the query string. This is the part of a URL that appears after
a C<?> character, if any.


=head2 SingleHeader => L<Paws::WAFv2::SingleHeader>

  Inspect a single header. Provide the name of the header to inspect, for
example, C<User-Agent> or C<Referer>. This setting isn't case
sensitive.


=head2 SingleQueryArgument => L<Paws::WAFv2::SingleQueryArgument>

  Inspect a single query argument. Provide the name of the query argument
to inspect, such as I<UserName> or I<SalesRegion>. The name can be up
to 30 characters long and isn't case sensitive.


=head2 UriPath => L<Paws::WAFv2::UriPath>

  Inspect the request URI path. This is the part of a web request that
identifies a resource, for example, C</images/daily-ad.jpg>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAFv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

