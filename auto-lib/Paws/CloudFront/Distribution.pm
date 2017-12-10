package Paws::CloudFront::Distribution;
  use Moose;
  has ActiveTrustedSigners => (is => 'ro', isa => 'Paws::CloudFront::ActiveTrustedSigners', required => 1);
  has ARN => (is => 'ro', isa => 'Str', required => 1);
  has DistributionConfig => (is => 'ro', isa => 'Paws::CloudFront::DistributionConfig', required => 1);
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has InProgressInvalidationBatches => (is => 'ro', isa => 'Int', required => 1);
  has LastModifiedTime => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::Distribution

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::Distribution object:

  $service_obj->Method(Att1 => { ActiveTrustedSigners => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::Distribution object:

  $result = $service_obj->Method(...);
  $result->Att1->ActiveTrustedSigners

=head1 DESCRIPTION

The distribution's information.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActiveTrustedSigners => L<Paws::CloudFront::ActiveTrustedSigners>

  CloudFront automatically adds this element to the response only if
you've set up the distribution to serve private content with signed
URLs. The element lists the key pair IDs that CloudFront is aware of
for each trusted signer. The C<Signer> child element lists the AWS
account number of the trusted signer (or an empty C<Self> element if
the signer is you). The C<Signer> element also includes the IDs of any
active key pairs associated with the trusted signer's AWS account. If
no C<KeyPairId> element appears for a C<Signer>, that signer can't
create working signed URLs.


=head2 B<REQUIRED> ARN => Str

  The ARN (Amazon Resource Name) for the distribution. For example:
C<arn:aws:cloudfront::123456789012:distribution/EDFDVBD632BHDS5>, where
C<123456789012> is your AWS account ID.


=head2 B<REQUIRED> DistributionConfig => L<Paws::CloudFront::DistributionConfig>

  The current configuration information for the distribution. Send a
C<GET> request to the C</I<CloudFront API version>/distribution
ID/config> resource.


=head2 B<REQUIRED> DomainName => Str

  The domain name corresponding to the distribution, for example,
C<d111111abcdef8.cloudfront.net>.


=head2 B<REQUIRED> Id => Str

  The identifier for the distribution. For example: C<EDFDVBD632BHDS5>.


=head2 B<REQUIRED> InProgressInvalidationBatches => Int

  The number of invalidation batches currently in progress.


=head2 B<REQUIRED> LastModifiedTime => Str

  The date and time the distribution was last modified.


=head2 B<REQUIRED> Status => Str

  This response element indicates the current status of the distribution.
When the status is C<Deployed>, the distribution's information is fully
propagated to all CloudFront edge locations.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

