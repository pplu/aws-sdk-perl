
package Paws::CloudHSM::DescribeLunaClient;
  use Moose;
  has CertificateFingerprint => (is => 'ro', isa => 'Str');
  has ClientArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLunaClient');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudHSM::DescribeLunaClientResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudHSM::DescribeLunaClient - Arguments for method DescribeLunaClient on L<Paws::CloudHSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeLunaClient on the 
L<Amazon CloudHSM|Paws::CloudHSM> service. Use the attributes of this class
as arguments to method DescribeLunaClient.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeLunaClient.

As an example:

  $service_obj->DescribeLunaClient(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudhsm/DescribeLunaClient>
=head1 ATTRIBUTES


=head2 CertificateFingerprint => Str

The certificate fingerprint.



=head2 ClientArn => Str

The ARN of the client.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeLunaClient in L<Paws::CloudHSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

