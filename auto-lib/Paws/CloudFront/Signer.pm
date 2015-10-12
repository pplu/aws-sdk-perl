package Paws::CloudFront::Signer;
  use Moose;
  has AwsAccountNumber => (is => 'ro', isa => 'Str');
  has KeyPairIds => (is => 'ro', isa => 'Paws::CloudFront::KeyPairIds');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::Signer

=head1 DESCRIPTION

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

=head1 ATTRIBUTES

=head2 AwsAccountNumber => Str

  Specifies an AWS account that can create signed URLs. Values: self,
which indicates that the AWS account that was used to create the
distribution can created signed URLs, or an AWS account number. Omit
the dashes in the account number.

=head2 KeyPairIds => Paws::CloudFront::KeyPairIds

  A complex type that lists the active CloudFront key pairs, if any, that
are associated with AwsAccountNumber.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

