
package Paws::FraudDetector::GetDetectorVersionResult;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn' );
  has CreatedTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdTime' );
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has DetectorId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'detectorId' );
  has DetectorVersionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'detectorVersionId' );
  has ExternalModelEndpoints => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'externalModelEndpoints' );
  has LastUpdatedTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedTime' );
  has ModelVersions => (is => 'ro', isa => 'ArrayRef[Paws::FraudDetector::ModelVersion]', traits => ['NameInRequest'], request_name => 'modelVersions' );
  has RuleExecutionMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ruleExecutionMode' );
  has Rules => (is => 'ro', isa => 'ArrayRef[Paws::FraudDetector::Rule]', traits => ['NameInRequest'], request_name => 'rules' );
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::GetDetectorVersionResult

=head1 ATTRIBUTES


=head2 Arn => Str

The detector version ARN.


=head2 CreatedTime => Str

The timestamp when the detector version was created.


=head2 Description => Str

The detector version description.


=head2 DetectorId => Str

The detector ID.


=head2 DetectorVersionId => Str

The detector version ID.


=head2 ExternalModelEndpoints => ArrayRef[Str|Undef]

The Amazon SageMaker model endpoints included in the detector version.


=head2 LastUpdatedTime => Str

The timestamp when the detector version was last updated.


=head2 ModelVersions => ArrayRef[L<Paws::FraudDetector::ModelVersion>]

The model versions included in the detector version.


=head2 RuleExecutionMode => Str

The execution mode of the rule in the dectector

C<FIRST_MATCHED> indicates that Amazon Fraud Detector evaluates rules
sequentially, first to last, stopping at the first matched rule. Amazon
Fraud dectector then provides the outcomes for that single rule.

C<ALL_MATCHED> indicates that Amazon Fraud Detector evaluates all rules
and returns the outcomes for all matched rules. You can define and edit
the rule mode at the detector version level, when it is in draft
status.

Valid values are: C<"ALL_MATCHED">, C<"FIRST_MATCHED">
=head2 Rules => ArrayRef[L<Paws::FraudDetector::Rule>]

The rules included in the detector version.


=head2 Status => Str

The status of the detector version.

Valid values are: C<"DRAFT">, C<"ACTIVE">, C<"INACTIVE">
=head2 _request_id => Str


=cut

1;