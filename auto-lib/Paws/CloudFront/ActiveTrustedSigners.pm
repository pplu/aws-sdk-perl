package Paws::CloudFront::ActiveTrustedSigners;
  use Moose;
  has Enabled => (is => 'ro', isa => 'Bool', required => 1);
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::CloudFront::Signer]', request_name => 'Signer', traits => ['NameInRequest']);
  has Quantity => (is => 'ro', isa => 'Int', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ActiveTrustedSigners

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::ActiveTrustedSigners object:

  $service_obj->Method(Att1 => { Enabled => $value, ..., Quantity => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::ActiveTrustedSigners object:

  $result = $service_obj->Method(...);
  $result->Att1->Enabled

=head1 DESCRIPTION

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

=head1 ATTRIBUTES


=head2 B<REQUIRED> Enabled => Bool

  Enabled is C<true> if any of the AWS accounts listed in the
C<TrustedSigners> complex type for this RTMP distribution have active
CloudFront key pairs. If not, C<Enabled> is C<false>.

For more information, see ActiveTrustedSigners.


=head2 Items => ArrayRef[L<Paws::CloudFront::Signer>]

  A complex type that contains one C<Signer> complex type for each
trusted signer that is specified in the C<TrustedSigners> complex type.

For more information, see ActiveTrustedSigners.


=head2 B<REQUIRED> Quantity => Int

  A complex type that contains one C<Signer> complex type for each
trusted signer specified in the C<TrustedSigners> complex type.

For more information, see ActiveTrustedSigners.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

