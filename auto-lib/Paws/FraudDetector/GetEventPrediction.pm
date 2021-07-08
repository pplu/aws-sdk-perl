
package Paws::FraudDetector::GetEventPrediction;
  use Moose;
  has DetectorId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'detectorId' , required => 1);
  has DetectorVersionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'detectorVersionId' );
  has Entities => (is => 'ro', isa => 'ArrayRef[Paws::FraudDetector::Entity]', traits => ['NameInRequest'], request_name => 'entities' , required => 1);
  has EventId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'eventId' , required => 1);
  has EventTimestamp => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'eventTimestamp' , required => 1);
  has EventTypeName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'eventTypeName' , required => 1);
  has EventVariables => (is => 'ro', isa => 'Paws::FraudDetector::EventVariableMap', traits => ['NameInRequest'], request_name => 'eventVariables' , required => 1);
  has ExternalModelEndpointDataBlobs => (is => 'ro', isa => 'Paws::FraudDetector::ExternalModelEndpointDataBlobMap', traits => ['NameInRequest'], request_name => 'externalModelEndpointDataBlobs' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetEventPrediction');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FraudDetector::GetEventPredictionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::GetEventPrediction - Arguments for method GetEventPrediction on L<Paws::FraudDetector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetEventPrediction on the
L<Amazon Fraud Detector|Paws::FraudDetector> service. Use the attributes of this class
as arguments to method GetEventPrediction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetEventPrediction.

=head1 SYNOPSIS

    my $frauddetector = Paws->service('FraudDetector');
    my $GetEventPredictionResult = $frauddetector->GetEventPrediction(
      DetectorId => 'Mystring',
      Entities   => [
        {
          EntityId   => 'Myidentifier',    # min: 1, max: 64
          EntityType => 'Mystring',

        },
        ...
      ],
      EventId        => 'Mystring',
      EventTimestamp => 'Mystring',
      EventTypeName  => 'Mystring',
      EventVariables => {
        'MyvariableName' =>
          'MyvariableValue',    # key: min: 1, max: 64, value: min: 1, max: 1024
      },
      DetectorVersionId              => 'MywholeNumberVersionString', # OPTIONAL
      ExternalModelEndpointDataBlobs => {
        'Mystring' => {
          ByteBuffer  => 'Blobblob',         # OPTIONAL
          ContentType => 'MycontentType',    # min: 1, max: 1024; OPTIONAL
        },
      },    # OPTIONAL
    );

    # Results:
    my $ModelScores = $GetEventPredictionResult->ModelScores;
    my $RuleResults = $GetEventPredictionResult->RuleResults;

    # Returns a L<Paws::FraudDetector::GetEventPredictionResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/frauddetector/GetEventPrediction>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DetectorId => Str

The detector ID.



=head2 DetectorVersionId => Str

The detector version ID.



=head2 B<REQUIRED> Entities => ArrayRef[L<Paws::FraudDetector::Entity>]

The entity type (associated with the detector's event type) and
specific entity ID representing who performed the event. If an entity
id is not available, use "UNKNOWN."



=head2 B<REQUIRED> EventId => Str

The unique ID used to identify the event.



=head2 B<REQUIRED> EventTimestamp => Str

Timestamp that defines when the event under evaluation occurred.



=head2 B<REQUIRED> EventTypeName => Str

The event type associated with the detector specified for the
prediction.



=head2 B<REQUIRED> EventVariables => L<Paws::FraudDetector::EventVariableMap>

Names of the event type's variables you defined in Amazon Fraud
Detector to represent data elements and their corresponding values for
the event you are sending for evaluation.



=head2 ExternalModelEndpointDataBlobs => L<Paws::FraudDetector::ExternalModelEndpointDataBlobMap>

The Amazon SageMaker model endpoint input data blobs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetEventPrediction in L<Paws::FraudDetector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

