package Paws::CloudFront::StreamingDistribution;
  use Moose;
  has ActiveTrustedSigners => (is => 'ro', isa => 'Paws::CloudFront::ActiveTrustedSigners', required => 1);
  has ARN => (is => 'ro', isa => 'Str', required => 1);
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has StreamingDistributionConfig => (is => 'ro', isa => 'Paws::CloudFront::StreamingDistributionConfig', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::StreamingDistribution

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::StreamingDistribution object:

  $service_obj->Method(Att1 => { ActiveTrustedSigners => $value, ..., StreamingDistributionConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::StreamingDistribution object:

  $result = $service_obj->Method(...);
  $result->Att1->ActiveTrustedSigners

=head1 DESCRIPTION

A streaming distribution.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActiveTrustedSigners => L<Paws::CloudFront::ActiveTrustedSigners>

  A complex type that lists the AWS accounts, if any, that you included
in the C<TrustedSigners> complex type for this distribution. These are
the accounts that you want to allow to create signed URLs for private
content.

The C<Signer> complex type lists the AWS account number of the trusted
signer or C<self> if the signer is the AWS account that created the
distribution. The C<Signer> element also includes the IDs of any active
CloudFront key pairs that are associated with the trusted signer's AWS
account. If no C<KeyPairId> element appears for a C<Signer>, that
signer can't create signed URLs.

For more information, see Serving Private Content through CloudFront
(http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html)
in the I<Amazon CloudFront Developer Guide>.


=head2 B<REQUIRED> ARN => Str

  The ARN (Amazon Resource Name) for the distribution. For example:
C<arn:aws:cloudfront::123456789012:distribution/EDFDVBD632BHDS5>, where
C<123456789012> is your AWS account ID.


=head2 B<REQUIRED> DomainName => Str

  The domain name that corresponds to the streaming distribution, for
example, C<s5c39gqb8ow64r.cloudfront.net>.


=head2 B<REQUIRED> Id => Str

  The identifier for the RTMP distribution. For example:
C<EGTXBD79EXAMPLE>.


=head2 LastModifiedTime => Str

  The date and time that the distribution was last modified.


=head2 B<REQUIRED> Status => Str

  The current status of the RTMP distribution. When the status is
C<Deployed>, the distribution's information is propagated to all
CloudFront edge locations.


=head2 B<REQUIRED> StreamingDistributionConfig => L<Paws::CloudFront::StreamingDistributionConfig>

  The current configuration information for the RTMP distribution.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

