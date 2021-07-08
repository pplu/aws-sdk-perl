
package Paws::FraudDetector::GetKMSEncryptionKey;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetKMSEncryptionKey');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FraudDetector::GetKMSEncryptionKeyResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::GetKMSEncryptionKey - Arguments for method GetKMSEncryptionKey on L<Paws::FraudDetector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetKMSEncryptionKey on the
L<Amazon Fraud Detector|Paws::FraudDetector> service. Use the attributes of this class
as arguments to method GetKMSEncryptionKey.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetKMSEncryptionKey.

=head1 SYNOPSIS

    my $frauddetector = Paws->service('FraudDetector');
    my $GetKMSEncryptionKeyResult = $frauddetector->GetKMSEncryptionKey();

    # Results:
    my $KmsKey = $GetKMSEncryptionKeyResult->KmsKey;

    # Returns a L<Paws::FraudDetector::GetKMSEncryptionKeyResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/frauddetector/GetKMSEncryptionKey>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetKMSEncryptionKey in L<Paws::FraudDetector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

