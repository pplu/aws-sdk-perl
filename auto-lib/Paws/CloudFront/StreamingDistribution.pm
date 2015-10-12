package Paws::CloudFront::StreamingDistribution;
  use Moose;
  has ActiveTrustedSigners => (is => 'ro', isa => 'Paws::CloudFront::ActiveTrustedSigners', required => 1);
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has StreamingDistributionConfig => (is => 'ro', isa => 'Paws::CloudFront::StreamingDistributionConfig', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::StreamingDistribution

=head1 DESCRIPTION

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

=head1 ATTRIBUTES

=head2 B<REQUIRED> ActiveTrustedSigners => L<Paws::CloudFront::ActiveTrustedSigners>

  CloudFront automatically adds this element to the response only if
you've set up the distribution to serve private content with signed
URLs. The element lists the key pair IDs that CloudFront is aware of
for each trusted signer. The Signer child element lists the AWS account
number of the trusted signer (or an empty Self element if the signer is
you). The Signer element also includes the IDs of any active key pairs
associated with the trusted signer's AWS account. If no KeyPairId
element appears for a Signer, that signer can't create working signed
URLs.

=head2 B<REQUIRED> DomainName => Str

  The domain name corresponding to the streaming distribution. For
example: s5c39gqb8ow64r.cloudfront.net.

=head2 B<REQUIRED> Id => Str

  The identifier for the streaming distribution. For example:
EGTXBD79H29TRA8.

=head2 LastModifiedTime => Str

  The date and time the distribution was last modified.

=head2 B<REQUIRED> Status => Str

  The current status of the streaming distribution. When the status is
Deployed, the distribution's information is fully propagated throughout
the Amazon CloudFront system.

=head2 B<REQUIRED> StreamingDistributionConfig => L<Paws::CloudFront::StreamingDistributionConfig>

  The current configuration information for the streaming distribution.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

