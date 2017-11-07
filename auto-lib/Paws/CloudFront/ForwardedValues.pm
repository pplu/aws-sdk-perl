package Paws::CloudFront::ForwardedValues;
  use Moose;
  has Cookies => (is => 'ro', isa => 'Paws::CloudFront::CookiePreference', required => 1);
  has Headers => (is => 'ro', isa => 'Paws::CloudFront::Headers');
  has QueryString => (is => 'ro', isa => 'Bool', required => 1);
  has QueryStringCacheKeys => (is => 'ro', isa => 'Paws::CloudFront::QueryStringCacheKeys');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ForwardedValues

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::ForwardedValues object:

  $service_obj->Method(Att1 => { Cookies => $value, ..., QueryStringCacheKeys => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::ForwardedValues object:

  $result = $service_obj->Method(...);
  $result->Att1->Cookies

=head1 DESCRIPTION

A complex type that specifies how CloudFront handles query strings and
cookies.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Cookies => L<Paws::CloudFront::CookiePreference>

  A complex type that specifies whether you want CloudFront to forward
cookies to the origin and, if so, which ones. For more information
about forwarding cookies to the origin, see How CloudFront Forwards,
Caches, and Logs Cookies
(http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Cookies.html)
in the I<Amazon CloudFront Developer Guide>.


=head2 Headers => L<Paws::CloudFront::Headers>

  A complex type that specifies the C<Headers>, if any, that you want
CloudFront to base caching on for this cache behavior.


=head2 B<REQUIRED> QueryString => Bool

  Indicates whether you want CloudFront to forward query strings to the
origin that is associated with this cache behavior and cache based on
the query string parameters. CloudFront behavior depends on the value
of C<QueryString> and on the values that you specify for
C<QueryStringCacheKeys>, if any:

If you specify true for C<QueryString> and you don't specify any values
for C<QueryStringCacheKeys>, CloudFront forwards all query string
parameters to the origin and caches based on all query string
parameters. Depending on how many query string parameters and values
you have, this can adversely affect performance because CloudFront must
forward more requests to the origin.

If you specify true for C<QueryString> and you specify one or more
values for C<QueryStringCacheKeys>, CloudFront forwards all query
string parameters to the origin, but it only caches based on the query
string parameters that you specify.

If you specify false for C<QueryString>, CloudFront doesn't forward any
query string parameters to the origin, and doesn't cache based on query
string parameters.

For more information, see Configuring CloudFront to Cache Based on
Query String Parameters
(http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/QueryStringParameters.html)
in the I<Amazon CloudFront Developer Guide>.


=head2 QueryStringCacheKeys => L<Paws::CloudFront::QueryStringCacheKeys>

  A complex type that contains information about the query string
parameters that you want CloudFront to use for caching for this cache
behavior.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

