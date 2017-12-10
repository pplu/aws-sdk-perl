package Paws::CloudFront::Signer;
  use Moose;
  has AwsAccountNumber => (is => 'ro', isa => 'Str');
  has KeyPairIds => (is => 'ro', isa => 'Paws::CloudFront::KeyPairIds');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::Signer

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::Signer object:

  $service_obj->Method(Att1 => { AwsAccountNumber => $value, ..., KeyPairIds => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::Signer object:

  $result = $service_obj->Method(...);
  $result->Att1->AwsAccountNumber

=head1 DESCRIPTION

A complex type that lists the AWS accounts that were included in the
C<TrustedSigners> complex type, as well as their active CloudFront key
pair IDs, if any.

=head1 ATTRIBUTES


=head2 AwsAccountNumber => Str

  An AWS account that is included in the C<TrustedSigners> complex type
for this RTMP distribution. Valid values include:

=over

=item *

C<self>, which is the AWS account used to create the distribution.

=item *

An AWS account number.

=back



=head2 KeyPairIds => L<Paws::CloudFront::KeyPairIds>

  A complex type that lists the active CloudFront key pairs, if any, that
are associated with C<AwsAccountNumber>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

