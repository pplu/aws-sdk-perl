
package Paws::FraudDetector::PutKMSEncryptionKey;
  use Moose;
  has KmsEncryptionKeyArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsEncryptionKeyArn' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutKMSEncryptionKey');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FraudDetector::PutKMSEncryptionKeyResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::PutKMSEncryptionKey - Arguments for method PutKMSEncryptionKey on L<Paws::FraudDetector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutKMSEncryptionKey on the
L<Amazon Fraud Detector|Paws::FraudDetector> service. Use the attributes of this class
as arguments to method PutKMSEncryptionKey.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutKMSEncryptionKey.

=head1 SYNOPSIS

    my $frauddetector = Paws->service('FraudDetector');
    my $PutKMSEncryptionKeyResult = $frauddetector->PutKMSEncryptionKey(
      KmsEncryptionKeyArn => 'MyKmsEncryptionKeyArn',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/frauddetector/PutKMSEncryptionKey>

=head1 ATTRIBUTES


=head2 B<REQUIRED> KmsEncryptionKeyArn => Str

The KMS encryption key ARN.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutKMSEncryptionKey in L<Paws::FraudDetector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

