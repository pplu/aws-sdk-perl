
package Paws::FraudDetector::UpdateModelVersion;
  use Moose;
  has ExternalEventsDetail => (is => 'ro', isa => 'Paws::FraudDetector::ExternalEventsDetail', traits => ['NameInRequest'], request_name => 'externalEventsDetail' );
  has MajorVersionNumber => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'majorVersionNumber' , required => 1);
  has ModelId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modelId' , required => 1);
  has ModelType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modelType' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::FraudDetector::Tag]', traits => ['NameInRequest'], request_name => 'tags' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateModelVersion');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FraudDetector::UpdateModelVersionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::UpdateModelVersion - Arguments for method UpdateModelVersion on L<Paws::FraudDetector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateModelVersion on the
L<Amazon Fraud Detector|Paws::FraudDetector> service. Use the attributes of this class
as arguments to method UpdateModelVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateModelVersion.

=head1 SYNOPSIS

    my $frauddetector = Paws->service('FraudDetector');
    my $UpdateModelVersionResult = $frauddetector->UpdateModelVersion(
      MajorVersionNumber   => 'MywholeNumberVersionString',
      ModelId              => 'MymodelIdentifier',
      ModelType            => 'ONLINE_FRAUD_INSIGHTS',
      ExternalEventsDetail => {
        DataAccessRoleArn => 'MyiamRoleArn',          # min: 1, max: 256
        DataLocation      => 'Mys3BucketLocation',    # min: 1, max: 512

      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MytagKey',      # min: 1, max: 128
          Value => 'MytagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $ModelId            = $UpdateModelVersionResult->ModelId;
    my $ModelType          = $UpdateModelVersionResult->ModelType;
    my $ModelVersionNumber = $UpdateModelVersionResult->ModelVersionNumber;
    my $Status             = $UpdateModelVersionResult->Status;

    # Returns a L<Paws::FraudDetector::UpdateModelVersionResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/frauddetector/UpdateModelVersion>

=head1 ATTRIBUTES


=head2 ExternalEventsDetail => L<Paws::FraudDetector::ExternalEventsDetail>

The event details.



=head2 B<REQUIRED> MajorVersionNumber => Str

The major version number.



=head2 B<REQUIRED> ModelId => Str

The model ID.



=head2 B<REQUIRED> ModelType => Str

The model type.

Valid values are: C<"ONLINE_FRAUD_INSIGHTS">

=head2 Tags => ArrayRef[L<Paws::FraudDetector::Tag>]

A collection of key and value pairs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateModelVersion in L<Paws::FraudDetector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

