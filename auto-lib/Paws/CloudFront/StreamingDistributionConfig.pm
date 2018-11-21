package Paws::CloudFront::StreamingDistributionConfig;
  use Moose;
  has Aliases => (is => 'ro', isa => 'Paws::CloudFront::Aliases');
  has CallerReference => (is => 'ro', isa => 'Str', required => 1);
  has Comment => (is => 'ro', isa => 'Str', required => 1);
  has Enabled => (is => 'ro', isa => 'Bool', required => 1);
  has Logging => (is => 'ro', isa => 'Paws::CloudFront::StreamingLoggingConfig');
  has PriceClass => (is => 'ro', isa => 'Str');
  has S3Origin => (is => 'ro', isa => 'Paws::CloudFront::S3Origin', required => 1);
  has TrustedSigners => (is => 'ro', isa => 'Paws::CloudFront::TrustedSigners', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::StreamingDistributionConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::StreamingDistributionConfig object:

  $service_obj->Method(Att1 => { Aliases => $value, ..., TrustedSigners => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::StreamingDistributionConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->Aliases

=head1 DESCRIPTION

The RTMP distribution's configuration information.

=head1 ATTRIBUTES


=head2 Aliases => L<Paws::CloudFront::Aliases>

  A complex type that contains information about CNAMEs (alternate domain
names), if any, for this streaming distribution.


=head2 B<REQUIRED> CallerReference => Str

  A unique value (for example, a date-time stamp) that ensures that the
request can't be replayed.

If the value of C<CallerReference> is new (regardless of the content of
the C<StreamingDistributionConfig> object), CloudFront creates a new
distribution.

If C<CallerReference> is a value that you already sent in a previous
request to create a distribution, CloudFront returns a
C<DistributionAlreadyExists> error.


=head2 B<REQUIRED> Comment => Str

  Any comments you want to include about the streaming distribution.


=head2 B<REQUIRED> Enabled => Bool

  Whether the streaming distribution is enabled to accept user requests
for content.


=head2 Logging => L<Paws::CloudFront::StreamingLoggingConfig>

  A complex type that controls whether access logs are written for the
streaming distribution.


=head2 PriceClass => Str

  A complex type that contains information about price class for this
streaming distribution.


=head2 B<REQUIRED> S3Origin => L<Paws::CloudFront::S3Origin>

  A complex type that contains information about the Amazon S3 bucket
from which you want CloudFront to get your media files for
distribution.


=head2 B<REQUIRED> TrustedSigners => L<Paws::CloudFront::TrustedSigners>

  A complex type that specifies any AWS accounts that you want to permit
to create signed URLs for private content. If you want the distribution
to use signed URLs, include this element; if you want the distribution
to use public URLs, remove this element. For more information, see
Serving Private Content through CloudFront
(http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html)
in the I<Amazon CloudFront Developer Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

