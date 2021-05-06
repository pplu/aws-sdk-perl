
package Paws::FraudDetector::CreateModelVersion;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has ModelId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modelId' , required => 1);
  has ModelType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modelType' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateModelVersion');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FraudDetector::CreateModelVersionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::CreateModelVersion - Arguments for method CreateModelVersion on L<Paws::FraudDetector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateModelVersion on the
L<Amazon Fraud Detector|Paws::FraudDetector> service. Use the attributes of this class
as arguments to method CreateModelVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateModelVersion.

=head1 SYNOPSIS

    my $frauddetector = Paws->service('FraudDetector');
    my $CreateModelVersionResult = $frauddetector->CreateModelVersion(
      ModelId     => 'Myidentifier',
      ModelType   => 'ONLINE_FRAUD_INSIGHTS',
      Description => 'Mydescription',           # OPTIONAL
    );

    # Results:
    my $ModelId            = $CreateModelVersionResult->ModelId;
    my $ModelType          = $CreateModelVersionResult->ModelType;
    my $ModelVersionNumber = $CreateModelVersionResult->ModelVersionNumber;
    my $Status             = $CreateModelVersionResult->Status;

    # Returns a L<Paws::FraudDetector::CreateModelVersionResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/frauddetector/CreateModelVersion>

=head1 ATTRIBUTES


=head2 Description => Str

The model version description.



=head2 B<REQUIRED> ModelId => Str

The model ID.



=head2 B<REQUIRED> ModelType => Str

The model type.

Valid values are: C<"ONLINE_FRAUD_INSIGHTS">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateModelVersion in L<Paws::FraudDetector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

