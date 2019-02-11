package Paws::CloudFront::DefaultCacheBehavior;
  use Moose;
  has AllowedMethods => (is => 'ro', isa => 'Paws::CloudFront::AllowedMethods');
  has Compress => (is => 'ro', isa => 'Bool');
  has DefaultTTL => (is => 'ro', isa => 'Int');
  has FieldLevelEncryptionId => (is => 'ro', isa => 'Str');
  has ForwardedValues => (is => 'ro', isa => 'Paws::CloudFront::ForwardedValues', required => 1);
  has LambdaFunctionAssociations => (is => 'ro', isa => 'Paws::CloudFront::LambdaFunctionAssociations');
  has MaxTTL => (is => 'ro', isa => 'Int');
  has MinTTL => (is => 'ro', isa => 'Int', required => 1);
  has SmoothStreaming => (is => 'ro', isa => 'Bool');
  has TargetOriginId => (is => 'ro', isa => 'Str', required => 1);
  has TrustedSigners => (is => 'ro', isa => 'Paws::CloudFront::TrustedSigners', required => 1);
  has ViewerProtocolPolicy => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::DefaultCacheBehavior

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::DefaultCacheBehavior object:

  $service_obj->Method(Att1 => { AllowedMethods => $value, ..., ViewerProtocolPolicy => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::DefaultCacheBehavior object:

  $result = $service_obj->Method(...);
  $result->Att1->AllowedMethods

=head1 DESCRIPTION

A complex type that describes the default cache behavior if you don't
specify a C<CacheBehavior> element or if files don't match any of the
values of C<PathPattern> in C<CacheBehavior> elements. You must create
exactly one default cache behavior.

=head1 ATTRIBUTES


=head2 AllowedMethods => L<Paws::CloudFront::AllowedMethods>

  


=head2 Compress => Bool

  Whether you want CloudFront to automatically compress certain files for
this cache behavior. If so, specify C<true>; if not, specify C<false>.
For more information, see Serving Compressed Files
(http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/ServingCompressedFiles.html)
in the I<Amazon CloudFront Developer Guide>.


=head2 DefaultTTL => Int

  The default amount of time that you want objects to stay in CloudFront
caches before CloudFront forwards another request to your origin to
determine whether the object has been updated. The value that you
specify applies only when your origin does not add HTTP headers such as
C<Cache-Control max-age>, C<Cache-Control s-maxage>, and C<Expires> to
objects. For more information, see Specifying How Long Objects and
Errors Stay in a CloudFront Edge Cache (Expiration)
(http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html)
in the I<Amazon CloudFront Developer Guide>.


=head2 FieldLevelEncryptionId => Str

  The value of C<ID> for the field-level encryption configuration that
you want CloudFront to use for encrypting specific fields of data for a
cache behavior or for the default cache behavior in your distribution.


=head2 B<REQUIRED> ForwardedValues => L<Paws::CloudFront::ForwardedValues>

  A complex type that specifies how CloudFront handles query strings and
cookies.


=head2 LambdaFunctionAssociations => L<Paws::CloudFront::LambdaFunctionAssociations>

  A complex type that contains zero or more Lambda function associations
for a cache behavior.


=head2 MaxTTL => Int

  


=head2 B<REQUIRED> MinTTL => Int

  The minimum amount of time that you want objects to stay in CloudFront
caches before CloudFront forwards another request to your origin to
determine whether the object has been updated. For more information,
see Specifying How Long Objects and Errors Stay in a CloudFront Edge
Cache (Expiration)
(http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html)
in the I<Amazon Amazon CloudFront Developer Guide>.

You must specify C<0> for C<MinTTL> if you configure CloudFront to
forward all headers to your origin (under C<Headers>, if you specify
C<1> for C<Quantity> and C<*> for C<Name>).


=head2 SmoothStreaming => Bool

  Indicates whether you want to distribute media files in the Microsoft
Smooth Streaming format using the origin that is associated with this
cache behavior. If so, specify C<true>; if not, specify C<false>. If
you specify C<true> for C<SmoothStreaming>, you can still distribute
other content using this cache behavior if the content matches the
value of C<PathPattern>.


=head2 B<REQUIRED> TargetOriginId => Str

  The value of C<ID> for the origin that you want CloudFront to route
requests to when a request matches the path pattern either for a cache
behavior or for the default cache behavior in your distribution.


=head2 B<REQUIRED> TrustedSigners => L<Paws::CloudFront::TrustedSigners>

  A complex type that specifies the AWS accounts, if any, that you want
to allow to create signed URLs for private content.

If you want to require signed URLs in requests for objects in the
target origin that match the C<PathPattern> for this cache behavior,
specify C<true> for C<Enabled>, and specify the applicable values for
C<Quantity> and C<Items>. For more information, see Serving Private
Content through CloudFront
(http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html)
in the I<Amazon Amazon CloudFront Developer Guide>.

If you don't want to require signed URLs in requests for objects that
match C<PathPattern>, specify C<false> for C<Enabled> and C<0> for
C<Quantity>. Omit C<Items>.

To add, change, or remove one or more trusted signers, change
C<Enabled> to C<true> (if it's currently C<false>), change C<Quantity>
as applicable, and specify all of the trusted signers that you want to
include in the updated distribution.


=head2 B<REQUIRED> ViewerProtocolPolicy => Str

  The protocol that viewers can use to access the files in the origin
specified by C<TargetOriginId> when a request matches the path pattern
in C<PathPattern>. You can specify the following options:

=over

=item *

C<allow-all>: Viewers can use HTTP or HTTPS.

=item *

C<redirect-to-https>: If a viewer submits an HTTP request, CloudFront
returns an HTTP status code of 301 (Moved Permanently) to the viewer
along with the HTTPS URL. The viewer then resubmits the request using
the new URL.

=item *

C<https-only>: If a viewer sends an HTTP request, CloudFront returns an
HTTP status code of 403 (Forbidden).

=back

For more information about requiring the HTTPS protocol, see Using an
HTTPS Connection to Access Your Objects
(http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/SecureConnections.html)
in the I<Amazon CloudFront Developer Guide>.

The only way to guarantee that viewers retrieve an object that was
fetched from the origin using HTTPS is never to use any other protocol
to fetch the object. If you have recently changed from HTTP to HTTPS,
we recommend that you clear your objects' cache because cached objects
are protocol agnostic. That means that an edge location will return an
object from the cache regardless of whether the current request
protocol matches the protocol used previously. For more information,
see Specifying How Long Objects and Errors Stay in a CloudFront Edge
Cache (Expiration)
(http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html)
in the I<Amazon CloudFront Developer Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

