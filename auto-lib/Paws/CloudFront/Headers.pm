package Paws::CloudFront::Headers;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'Name', traits => ['NameInRequest']);
  has Quantity => (is => 'ro', isa => 'Int', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::Headers

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::Headers object:

  $service_obj->Method(Att1 => { Items => $value, ..., Quantity => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::Headers object:

  $result = $service_obj->Method(...);
  $result->Att1->Items

=head1 DESCRIPTION

A complex type that specifies the request headers, if any, that you
want CloudFront to base caching on for this cache behavior.

For the headers that you specify, CloudFront caches separate versions
of a specified object based on the header values in viewer requests.
For example, suppose viewer requests for C<logo.jpg> contain a custom
C<product> header that has a value of either C<acme> or C<apex>, and
you configure CloudFront to cache your content based on values in the
C<product> header. CloudFront forwards the C<product> header to the
origin and caches the response from the origin once for each header
value. For more information about caching based on header values, see
How CloudFront Forwards and Caches Headers
(http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/header-caching.html)
in the I<Amazon CloudFront Developer Guide>.

=head1 ATTRIBUTES


=head2 Items => ArrayRef[Str|Undef]

  A list that contains one C<Name> element for each header that you want
CloudFront to use for caching in this cache behavior. If C<Quantity> is
C<0>, omit C<Items>.


=head2 B<REQUIRED> Quantity => Int

  The number of different headers that you want CloudFront to base
caching on for this cache behavior. You can configure each cache
behavior in a web distribution to do one of the following:

=over

=item *

B<Forward all headers to your origin>: Specify C<1> for C<Quantity> and
C<*> for C<Name>.

CloudFront doesn't cache the objects that are associated with this
cache behavior. Instead, CloudFront sends every request to the origin.

=item *

B<Forward a whitelist of headers you specify>: Specify the number of
headers that you want CloudFront to base caching on. Then specify the
header names in C<Name> elements. CloudFront caches your objects based
on the values in the specified headers.

=item *

B<Forward only the default headers>: Specify C<0> for C<Quantity> and
omit C<Items>. In this configuration, CloudFront doesn't cache based on
the values in the request headers.

=back

Regardless of which option you choose, CloudFront forwards headers to
your origin based on whether the origin is an S3 bucket or a custom
origin. See the following documentation:

=over

=item *

B<S3 bucket>: See HTTP Request Headers That CloudFront Removes or
Updates
(http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/RequestAndResponseBehaviorS3Origin.html#request-s3-removed-headers)

=item *

B<Custom origin>: See HTTP Request Headers and CloudFront Behavior
(http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/RequestAndResponseBehaviorCustomOrigin.html#request-custom-headers-behavior)

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

