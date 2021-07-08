package Paws::FraudDetector;
  use Moose;
  sub service { 'frauddetector' }
  sub signing_name { 'frauddetector' }
  sub version { '2019-11-15' }
  sub target_prefix { 'AWSHawksNestServiceFacade' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub BatchCreateVariable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::BatchCreateVariable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetVariable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::BatchGetVariable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelBatchPredictionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::CancelBatchPredictionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateBatchPredictionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::CreateBatchPredictionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDetectorVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::CreateDetectorVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::CreateModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateModelVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::CreateModelVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::CreateRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVariable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::CreateVariable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBatchPredictionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::DeleteBatchPredictionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDetector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::DeleteDetector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDetectorVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::DeleteDetectorVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEntityType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::DeleteEntityType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEvent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::DeleteEvent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEventType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::DeleteEventType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteExternalModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::DeleteExternalModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLabel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::DeleteLabel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::DeleteModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteModelVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::DeleteModelVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteOutcome {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::DeleteOutcome', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::DeleteRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVariable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::DeleteVariable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDetector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::DescribeDetector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeModelVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::DescribeModelVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBatchPredictionJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::GetBatchPredictionJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDetectors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::GetDetectors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDetectorVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::GetDetectorVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEntityTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::GetEntityTypes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEventPrediction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::GetEventPrediction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEventTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::GetEventTypes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetExternalModels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::GetExternalModels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetKMSEncryptionKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::GetKMSEncryptionKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLabels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::GetLabels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetModels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::GetModels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetModelVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::GetModelVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetOutcomes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::GetOutcomes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRules {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::GetRules', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetVariables {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::GetVariables', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutDetector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::PutDetector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutEntityType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::PutEntityType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutEventType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::PutEventType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutExternalModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::PutExternalModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutKMSEncryptionKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::PutKMSEncryptionKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutLabel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::PutLabel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutOutcome {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::PutOutcome', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDetectorVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::UpdateDetectorVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDetectorVersionMetadata {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::UpdateDetectorVersionMetadata', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDetectorVersionStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::UpdateDetectorVersionStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::UpdateModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateModelVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::UpdateModelVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateModelVersionStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::UpdateModelVersionStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRuleMetadata {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::UpdateRuleMetadata', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRuleVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::UpdateRuleVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateVariable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::UpdateVariable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/BatchCreateVariable BatchGetVariable CancelBatchPredictionJob CreateBatchPredictionJob CreateDetectorVersion CreateModel CreateModelVersion CreateRule CreateVariable DeleteBatchPredictionJob DeleteDetector DeleteDetectorVersion DeleteEntityType DeleteEvent DeleteEventType DeleteExternalModel DeleteLabel DeleteModel DeleteModelVersion DeleteOutcome DeleteRule DeleteVariable DescribeDetector DescribeModelVersions GetBatchPredictionJobs GetDetectors GetDetectorVersion GetEntityTypes GetEventPrediction GetEventTypes GetExternalModels GetKMSEncryptionKey GetLabels GetModels GetModelVersion GetOutcomes GetRules GetVariables ListTagsForResource PutDetector PutEntityType PutEventType PutExternalModel PutKMSEncryptionKey PutLabel PutOutcome TagResource UntagResource UpdateDetectorVersion UpdateDetectorVersionMetadata UpdateDetectorVersionStatus UpdateModel UpdateModelVersion UpdateModelVersionStatus UpdateRuleMetadata UpdateRuleVersion UpdateVariable / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector - Perl Interface to AWS Amazon Fraud Detector

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('FraudDetector');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

This is the Amazon Fraud Detector API Reference. This guide is for
developers who need detailed information about Amazon Fraud Detector
API actions, data types, and errors. For more information about Amazon
Fraud Detector features, see the Amazon Fraud Detector User Guide
(https://docs.aws.amazon.com/frauddetector/latest/ug/).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15>


=head1 METHODS

=head2 BatchCreateVariable

=over

=item VariableEntries => ArrayRef[L<Paws::FraudDetector::VariableEntry>]

=item [Tags => ArrayRef[L<Paws::FraudDetector::Tag>]]


=back

Each argument is described in detail in: L<Paws::FraudDetector::BatchCreateVariable>

Returns: a L<Paws::FraudDetector::BatchCreateVariableResult> instance

Creates a batch of variables.


=head2 BatchGetVariable

=over

=item Names => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::FraudDetector::BatchGetVariable>

Returns: a L<Paws::FraudDetector::BatchGetVariableResult> instance

Gets a batch of variables.


=head2 CancelBatchPredictionJob

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::FraudDetector::CancelBatchPredictionJob>

Returns: a L<Paws::FraudDetector::CancelBatchPredictionJobResult> instance

Cancels the specified batch prediction job.


=head2 CreateBatchPredictionJob

=over

=item DetectorName => Str

=item EventTypeName => Str

=item IamRoleArn => Str

=item InputPath => Str

=item JobId => Str

=item OutputPath => Str

=item [DetectorVersion => Str]

=item [Tags => ArrayRef[L<Paws::FraudDetector::Tag>]]


=back

Each argument is described in detail in: L<Paws::FraudDetector::CreateBatchPredictionJob>

Returns: a L<Paws::FraudDetector::CreateBatchPredictionJobResult> instance

Creates a batch prediction job.


=head2 CreateDetectorVersion

=over

=item DetectorId => Str

=item Rules => ArrayRef[L<Paws::FraudDetector::Rule>]

=item [Description => Str]

=item [ExternalModelEndpoints => ArrayRef[Str|Undef]]

=item [ModelVersions => ArrayRef[L<Paws::FraudDetector::ModelVersion>]]

=item [RuleExecutionMode => Str]

=item [Tags => ArrayRef[L<Paws::FraudDetector::Tag>]]


=back

Each argument is described in detail in: L<Paws::FraudDetector::CreateDetectorVersion>

Returns: a L<Paws::FraudDetector::CreateDetectorVersionResult> instance

Creates a detector version. The detector version starts in a C<DRAFT>
status.


=head2 CreateModel

=over

=item EventTypeName => Str

=item ModelId => Str

=item ModelType => Str

=item [Description => Str]

=item [Tags => ArrayRef[L<Paws::FraudDetector::Tag>]]


=back

Each argument is described in detail in: L<Paws::FraudDetector::CreateModel>

Returns: a L<Paws::FraudDetector::CreateModelResult> instance

Creates a model using the specified model type.


=head2 CreateModelVersion

=over

=item ModelId => Str

=item ModelType => Str

=item TrainingDataSchema => L<Paws::FraudDetector::TrainingDataSchema>

=item TrainingDataSource => Str

=item [ExternalEventsDetail => L<Paws::FraudDetector::ExternalEventsDetail>]

=item [Tags => ArrayRef[L<Paws::FraudDetector::Tag>]]


=back

Each argument is described in detail in: L<Paws::FraudDetector::CreateModelVersion>

Returns: a L<Paws::FraudDetector::CreateModelVersionResult> instance

Creates a version of the model using the specified model type and model
id.


=head2 CreateRule

=over

=item DetectorId => Str

=item Expression => Str

=item Language => Str

=item Outcomes => ArrayRef[Str|Undef]

=item RuleId => Str

=item [Description => Str]

=item [Tags => ArrayRef[L<Paws::FraudDetector::Tag>]]


=back

Each argument is described in detail in: L<Paws::FraudDetector::CreateRule>

Returns: a L<Paws::FraudDetector::CreateRuleResult> instance

Creates a rule for use with the specified detector.


=head2 CreateVariable

=over

=item DataSource => Str

=item DataType => Str

=item DefaultValue => Str

=item Name => Str

=item [Description => Str]

=item [Tags => ArrayRef[L<Paws::FraudDetector::Tag>]]

=item [VariableType => Str]


=back

Each argument is described in detail in: L<Paws::FraudDetector::CreateVariable>

Returns: a L<Paws::FraudDetector::CreateVariableResult> instance

Creates a variable.


=head2 DeleteBatchPredictionJob

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::FraudDetector::DeleteBatchPredictionJob>

Returns: a L<Paws::FraudDetector::DeleteBatchPredictionJobResult> instance

Deletes a batch prediction job.


=head2 DeleteDetector

=over

=item DetectorId => Str


=back

Each argument is described in detail in: L<Paws::FraudDetector::DeleteDetector>

Returns: a L<Paws::FraudDetector::DeleteDetectorResult> instance

Deletes the detector. Before deleting a detector, you must first delete
all detector versions and rule versions associated with the detector.

When you delete a detector, Amazon Fraud Detector permanently deletes
the detector and the data is no longer stored in Amazon Fraud Detector.


=head2 DeleteDetectorVersion

=over

=item DetectorId => Str

=item DetectorVersionId => Str


=back

Each argument is described in detail in: L<Paws::FraudDetector::DeleteDetectorVersion>

Returns: a L<Paws::FraudDetector::DeleteDetectorVersionResult> instance

Deletes the detector version. You cannot delete detector versions that
are in C<ACTIVE> status.

When you delete a detector version, Amazon Fraud Detector permanently
deletes the detector and the data is no longer stored in Amazon Fraud
Detector.


=head2 DeleteEntityType

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::FraudDetector::DeleteEntityType>

Returns: a L<Paws::FraudDetector::DeleteEntityTypeResult> instance

Deletes an entity type.

You cannot delete an entity type that is included in an event type.

When you delete an entity type, Amazon Fraud Detector permanently
deletes that entity type and the data is no longer stored in Amazon
Fraud Detector.


=head2 DeleteEvent

=over

=item EventId => Str

=item EventTypeName => Str


=back

Each argument is described in detail in: L<Paws::FraudDetector::DeleteEvent>

Returns: a L<Paws::FraudDetector::DeleteEventResult> instance

Deletes the specified event.

When you delete an event, Amazon Fraud Detector permanently deletes
that event and the event data is no longer stored in Amazon Fraud
Detector.


=head2 DeleteEventType

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::FraudDetector::DeleteEventType>

Returns: a L<Paws::FraudDetector::DeleteEventTypeResult> instance

Deletes an event type.

You cannot delete an event type that is used in a detector or a model.

When you delete an entity type, Amazon Fraud Detector permanently
deletes that entity type and the data is no longer stored in Amazon
Fraud Detector.


=head2 DeleteExternalModel

=over

=item ModelEndpoint => Str


=back

Each argument is described in detail in: L<Paws::FraudDetector::DeleteExternalModel>

Returns: a L<Paws::FraudDetector::DeleteExternalModelResult> instance

Removes a SageMaker model from Amazon Fraud Detector.

You can remove an Amazon SageMaker model if it is not associated with a
detector version. Removing a SageMaker model disconnects it from Amazon
Fraud Detector, but the model remains available in SageMaker.


=head2 DeleteLabel

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::FraudDetector::DeleteLabel>

Returns: a L<Paws::FraudDetector::DeleteLabelResult> instance

Deletes a label.

You cannot delete labels that are included in an event type in Amazon
Fraud Detector.

You cannot delete a label assigned to an event ID. You must first
delete the relevant event ID.

When you delete a label, Amazon Fraud Detector permanently deletes that
label and the data is no longer stored in Amazon Fraud Detector.


=head2 DeleteModel

=over

=item ModelId => Str

=item ModelType => Str


=back

Each argument is described in detail in: L<Paws::FraudDetector::DeleteModel>

Returns: a L<Paws::FraudDetector::DeleteModelResult> instance

Deletes a model.

You can delete models and model versions in Amazon Fraud Detector,
provided that they are not associated with a detector version.

When you delete a model, Amazon Fraud Detector permanently deletes that
model and the data is no longer stored in Amazon Fraud Detector.


=head2 DeleteModelVersion

=over

=item ModelId => Str

=item ModelType => Str

=item ModelVersionNumber => Str


=back

Each argument is described in detail in: L<Paws::FraudDetector::DeleteModelVersion>

Returns: a L<Paws::FraudDetector::DeleteModelVersionResult> instance

Deletes a model version.

You can delete models and model versions in Amazon Fraud Detector,
provided that they are not associated with a detector version.

When you delete a model version, Amazon Fraud Detector permanently
deletes that model version and the data is no longer stored in Amazon
Fraud Detector.


=head2 DeleteOutcome

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::FraudDetector::DeleteOutcome>

Returns: a L<Paws::FraudDetector::DeleteOutcomeResult> instance

Deletes an outcome.

You cannot delete an outcome that is used in a rule version.

When you delete an outcome, Amazon Fraud Detector permanently deletes
that outcome and the data is no longer stored in Amazon Fraud Detector.


=head2 DeleteRule

=over

=item Rule => L<Paws::FraudDetector::Rule>


=back

Each argument is described in detail in: L<Paws::FraudDetector::DeleteRule>

Returns: a L<Paws::FraudDetector::DeleteRuleResult> instance

Deletes the rule. You cannot delete a rule if it is used by an
C<ACTIVE> or C<INACTIVE> detector version.

When you delete a rule, Amazon Fraud Detector permanently deletes that
rule and the data is no longer stored in Amazon Fraud Detector.


=head2 DeleteVariable

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::FraudDetector::DeleteVariable>

Returns: a L<Paws::FraudDetector::DeleteVariableResult> instance

Deletes a variable.

You can't delete variables that are included in an event type in Amazon
Fraud Detector.

Amazon Fraud Detector automatically deletes model output variables and
SageMaker model output variables when you delete the model. You can't
delete these variables manually.

When you delete a variable, Amazon Fraud Detector permanently deletes
that variable and the data is no longer stored in Amazon Fraud
Detector.


=head2 DescribeDetector

=over

=item DetectorId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::FraudDetector::DescribeDetector>

Returns: a L<Paws::FraudDetector::DescribeDetectorResult> instance

Gets all versions for a specified detector.


=head2 DescribeModelVersions

=over

=item [MaxResults => Int]

=item [ModelId => Str]

=item [ModelType => Str]

=item [ModelVersionNumber => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::FraudDetector::DescribeModelVersions>

Returns: a L<Paws::FraudDetector::DescribeModelVersionsResult> instance

Gets all of the model versions for the specified model type or for the
specified model type and model ID. You can also get details for a
single, specified model version.


=head2 GetBatchPredictionJobs

=over

=item [JobId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::FraudDetector::GetBatchPredictionJobs>

Returns: a L<Paws::FraudDetector::GetBatchPredictionJobsResult> instance

Gets all batch prediction jobs or a specific job if you specify a job
ID. This is a paginated API. If you provide a null maxResults, this
action retrieves a maximum of 50 records per page. If you provide a
maxResults, the value must be between 1 and 50. To get the next page
results, provide the pagination token from the
GetBatchPredictionJobsResponse as part of your request. A null
pagination token fetches the records from the beginning.


=head2 GetDetectors

=over

=item [DetectorId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::FraudDetector::GetDetectors>

Returns: a L<Paws::FraudDetector::GetDetectorsResult> instance

Gets all detectors or a single detector if a C<detectorId> is
specified. This is a paginated API. If you provide a null
C<maxResults>, this action retrieves a maximum of 10 records per page.
If you provide a C<maxResults>, the value must be between 5 and 10. To
get the next page results, provide the pagination token from the
C<GetDetectorsResponse> as part of your request. A null pagination
token fetches the records from the beginning.


=head2 GetDetectorVersion

=over

=item DetectorId => Str

=item DetectorVersionId => Str


=back

Each argument is described in detail in: L<Paws::FraudDetector::GetDetectorVersion>

Returns: a L<Paws::FraudDetector::GetDetectorVersionResult> instance

Gets a particular detector version.


=head2 GetEntityTypes

=over

=item [MaxResults => Int]

=item [Name => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::FraudDetector::GetEntityTypes>

Returns: a L<Paws::FraudDetector::GetEntityTypesResult> instance

Gets all entity types or a specific entity type if a name is specified.
This is a paginated API. If you provide a null C<maxResults>, this
action retrieves a maximum of 10 records per page. If you provide a
C<maxResults>, the value must be between 5 and 10. To get the next page
results, provide the pagination token from the
C<GetEntityTypesResponse> as part of your request. A null pagination
token fetches the records from the beginning.


=head2 GetEventPrediction

=over

=item DetectorId => Str

=item Entities => ArrayRef[L<Paws::FraudDetector::Entity>]

=item EventId => Str

=item EventTimestamp => Str

=item EventTypeName => Str

=item EventVariables => L<Paws::FraudDetector::EventVariableMap>

=item [DetectorVersionId => Str]

=item [ExternalModelEndpointDataBlobs => L<Paws::FraudDetector::ExternalModelEndpointDataBlobMap>]


=back

Each argument is described in detail in: L<Paws::FraudDetector::GetEventPrediction>

Returns: a L<Paws::FraudDetector::GetEventPredictionResult> instance

Evaluates an event against a detector version. If a version ID is not
provided, the detectorE<rsquo>s (C<ACTIVE>) version is used.


=head2 GetEventTypes

=over

=item [MaxResults => Int]

=item [Name => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::FraudDetector::GetEventTypes>

Returns: a L<Paws::FraudDetector::GetEventTypesResult> instance

Gets all event types or a specific event type if name is provided. This
is a paginated API. If you provide a null C<maxResults>, this action
retrieves a maximum of 10 records per page. If you provide a
C<maxResults>, the value must be between 5 and 10. To get the next page
results, provide the pagination token from the C<GetEventTypesResponse>
as part of your request. A null pagination token fetches the records
from the beginning.


=head2 GetExternalModels

=over

=item [MaxResults => Int]

=item [ModelEndpoint => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::FraudDetector::GetExternalModels>

Returns: a L<Paws::FraudDetector::GetExternalModelsResult> instance

Gets the details for one or more Amazon SageMaker models that have been
imported into the service. This is a paginated API. If you provide a
null C<maxResults>, this actions retrieves a maximum of 10 records per
page. If you provide a C<maxResults>, the value must be between 5 and
10. To get the next page results, provide the pagination token from the
C<GetExternalModelsResult> as part of your request. A null pagination
token fetches the records from the beginning.


=head2 GetKMSEncryptionKey

=over

=item  => 


=back

Each argument is described in detail in: L<Paws::FraudDetector::GetKMSEncryptionKey>

Returns: a L<Paws::FraudDetector::GetKMSEncryptionKeyResult> instance

Gets the encryption key if a Key Management Service (KMS) customer
master key (CMK) has been specified to be used to encrypt content in
Amazon Fraud Detector.


=head2 GetLabels

=over

=item [MaxResults => Int]

=item [Name => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::FraudDetector::GetLabels>

Returns: a L<Paws::FraudDetector::GetLabelsResult> instance

Gets all labels or a specific label if name is provided. This is a
paginated API. If you provide a null C<maxResults>, this action
retrieves a maximum of 50 records per page. If you provide a
C<maxResults>, the value must be between 10 and 50. To get the next
page results, provide the pagination token from the
C<GetGetLabelsResponse> as part of your request. A null pagination
token fetches the records from the beginning.


=head2 GetModels

=over

=item [MaxResults => Int]

=item [ModelId => Str]

=item [ModelType => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::FraudDetector::GetModels>

Returns: a L<Paws::FraudDetector::GetModelsResult> instance

Gets one or more models. Gets all models for the AWS account if no
model type and no model id provided. Gets all models for the AWS
account and model type, if the model type is specified but model id is
not provided. Gets a specific model if (model type, model id) tuple is
specified.

This is a paginated API. If you provide a null C<maxResults>, this
action retrieves a maximum of 10 records per page. If you provide a
C<maxResults>, the value must be between 1 and 10. To get the next page
results, provide the pagination token from the response as part of your
request. A null pagination token fetches the records from the
beginning.


=head2 GetModelVersion

=over

=item ModelId => Str

=item ModelType => Str

=item ModelVersionNumber => Str


=back

Each argument is described in detail in: L<Paws::FraudDetector::GetModelVersion>

Returns: a L<Paws::FraudDetector::GetModelVersionResult> instance

Gets the details of the specified model version.


=head2 GetOutcomes

=over

=item [MaxResults => Int]

=item [Name => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::FraudDetector::GetOutcomes>

Returns: a L<Paws::FraudDetector::GetOutcomesResult> instance

Gets one or more outcomes. This is a paginated API. If you provide a
null C<maxResults>, this actions retrieves a maximum of 100 records per
page. If you provide a C<maxResults>, the value must be between 50 and
100. To get the next page results, provide the pagination token from
the C<GetOutcomesResult> as part of your request. A null pagination
token fetches the records from the beginning.


=head2 GetRules

=over

=item DetectorId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [RuleId => Str]

=item [RuleVersion => Str]


=back

Each argument is described in detail in: L<Paws::FraudDetector::GetRules>

Returns: a L<Paws::FraudDetector::GetRulesResult> instance

Get all rules for a detector (paginated) if C<ruleId> and
C<ruleVersion> are not specified. Gets all rules for the detector and
the C<ruleId> if present (paginated). Gets a specific rule if both the
C<ruleId> and the C<ruleVersion> are specified.

This is a paginated API. Providing null maxResults results in
retrieving maximum of 100 records per page. If you provide maxResults
the value must be between 50 and 100. To get the next page result, a
provide a pagination token from GetRulesResult as part of your request.
Null pagination token fetches the records from the beginning.


=head2 GetVariables

=over

=item [MaxResults => Int]

=item [Name => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::FraudDetector::GetVariables>

Returns: a L<Paws::FraudDetector::GetVariablesResult> instance

Gets all of the variables or the specific variable. This is a paginated
API. Providing null C<maxSizePerPage> results in retrieving maximum of
100 records per page. If you provide C<maxSizePerPage> the value must
be between 50 and 100. To get the next page result, a provide a
pagination token from C<GetVariablesResult> as part of your request.
Null pagination token fetches the records from the beginning.


=head2 ListTagsForResource

=over

=item ResourceARN => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::FraudDetector::ListTagsForResource>

Returns: a L<Paws::FraudDetector::ListTagsForResourceResult> instance

Lists all tags associated with the resource. This is a paginated API.
To get the next page results, provide the pagination token from the
response as part of your request. A null pagination token fetches the
records from the beginning.


=head2 PutDetector

=over

=item DetectorId => Str

=item EventTypeName => Str

=item [Description => Str]

=item [Tags => ArrayRef[L<Paws::FraudDetector::Tag>]]


=back

Each argument is described in detail in: L<Paws::FraudDetector::PutDetector>

Returns: a L<Paws::FraudDetector::PutDetectorResult> instance

Creates or updates a detector.


=head2 PutEntityType

=over

=item Name => Str

=item [Description => Str]

=item [Tags => ArrayRef[L<Paws::FraudDetector::Tag>]]


=back

Each argument is described in detail in: L<Paws::FraudDetector::PutEntityType>

Returns: a L<Paws::FraudDetector::PutEntityTypeResult> instance

Creates or updates an entity type. An entity represents who is
performing the event. As part of a fraud prediction, you pass the
entity ID to indicate the specific entity who performed the event. An
entity type classifies the entity. Example classifications include
customer, merchant, or account.


=head2 PutEventType

=over

=item EntityTypes => ArrayRef[Str|Undef]

=item EventVariables => ArrayRef[Str|Undef]

=item Name => Str

=item [Description => Str]

=item [Labels => ArrayRef[Str|Undef]]

=item [Tags => ArrayRef[L<Paws::FraudDetector::Tag>]]


=back

Each argument is described in detail in: L<Paws::FraudDetector::PutEventType>

Returns: a L<Paws::FraudDetector::PutEventTypeResult> instance

Creates or updates an event type. An event is a business activity that
is evaluated for fraud risk. With Amazon Fraud Detector, you generate
fraud predictions for events. An event type defines the structure for
an event sent to Amazon Fraud Detector. This includes the variables
sent as part of the event, the entity performing the event (such as a
customer), and the labels that classify the event. Example event types
include online payment transactions, account registrations, and
authentications.


=head2 PutExternalModel

=over

=item InputConfiguration => L<Paws::FraudDetector::ModelInputConfiguration>

=item InvokeModelEndpointRoleArn => Str

=item ModelEndpoint => Str

=item ModelEndpointStatus => Str

=item ModelSource => Str

=item OutputConfiguration => L<Paws::FraudDetector::ModelOutputConfiguration>

=item [Tags => ArrayRef[L<Paws::FraudDetector::Tag>]]


=back

Each argument is described in detail in: L<Paws::FraudDetector::PutExternalModel>

Returns: a L<Paws::FraudDetector::PutExternalModelResult> instance

Creates or updates an Amazon SageMaker model endpoint. You can also use
this action to update the configuration of the model endpoint,
including the IAM role and/or the mapped variables.


=head2 PutKMSEncryptionKey

=over

=item KmsEncryptionKeyArn => Str


=back

Each argument is described in detail in: L<Paws::FraudDetector::PutKMSEncryptionKey>

Returns: a L<Paws::FraudDetector::PutKMSEncryptionKeyResult> instance

Specifies the Key Management Service (KMS) customer master key (CMK) to
be used to encrypt content in Amazon Fraud Detector.


=head2 PutLabel

=over

=item Name => Str

=item [Description => Str]

=item [Tags => ArrayRef[L<Paws::FraudDetector::Tag>]]


=back

Each argument is described in detail in: L<Paws::FraudDetector::PutLabel>

Returns: a L<Paws::FraudDetector::PutLabelResult> instance

Creates or updates label. A label classifies an event as fraudulent or
legitimate. Labels are associated with event types and used to train
supervised machine learning models in Amazon Fraud Detector.


=head2 PutOutcome

=over

=item Name => Str

=item [Description => Str]

=item [Tags => ArrayRef[L<Paws::FraudDetector::Tag>]]


=back

Each argument is described in detail in: L<Paws::FraudDetector::PutOutcome>

Returns: a L<Paws::FraudDetector::PutOutcomeResult> instance

Creates or updates an outcome.


=head2 TagResource

=over

=item ResourceARN => Str

=item Tags => ArrayRef[L<Paws::FraudDetector::Tag>]


=back

Each argument is described in detail in: L<Paws::FraudDetector::TagResource>

Returns: a L<Paws::FraudDetector::TagResourceResult> instance

Assigns tags to a resource.


=head2 UntagResource

=over

=item ResourceARN => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::FraudDetector::UntagResource>

Returns: a L<Paws::FraudDetector::UntagResourceResult> instance

Removes tags from a resource.


=head2 UpdateDetectorVersion

=over

=item DetectorId => Str

=item DetectorVersionId => Str

=item ExternalModelEndpoints => ArrayRef[Str|Undef]

=item Rules => ArrayRef[L<Paws::FraudDetector::Rule>]

=item [Description => Str]

=item [ModelVersions => ArrayRef[L<Paws::FraudDetector::ModelVersion>]]

=item [RuleExecutionMode => Str]


=back

Each argument is described in detail in: L<Paws::FraudDetector::UpdateDetectorVersion>

Returns: a L<Paws::FraudDetector::UpdateDetectorVersionResult> instance

Updates a detector version. The detector version attributes that you
can update include models, external model endpoints, rules, rule
execution mode, and description. You can only update a C<DRAFT>
detector version.


=head2 UpdateDetectorVersionMetadata

=over

=item Description => Str

=item DetectorId => Str

=item DetectorVersionId => Str


=back

Each argument is described in detail in: L<Paws::FraudDetector::UpdateDetectorVersionMetadata>

Returns: a L<Paws::FraudDetector::UpdateDetectorVersionMetadataResult> instance

Updates the detector version's description. You can update the metadata
for any detector version (C<DRAFT, ACTIVE,> or C<INACTIVE>).


=head2 UpdateDetectorVersionStatus

=over

=item DetectorId => Str

=item DetectorVersionId => Str

=item Status => Str


=back

Each argument is described in detail in: L<Paws::FraudDetector::UpdateDetectorVersionStatus>

Returns: a L<Paws::FraudDetector::UpdateDetectorVersionStatusResult> instance

Updates the detector versionE<rsquo>s status. You can perform the
following promotions or demotions using C<UpdateDetectorVersionStatus>:
C<DRAFT> to C<ACTIVE>, C<ACTIVE> to C<INACTIVE>, and C<INACTIVE> to
C<ACTIVE>.


=head2 UpdateModel

=over

=item ModelId => Str

=item ModelType => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::FraudDetector::UpdateModel>

Returns: a L<Paws::FraudDetector::UpdateModelResult> instance

Updates a model. You can update the description attribute using this
action.


=head2 UpdateModelVersion

=over

=item MajorVersionNumber => Str

=item ModelId => Str

=item ModelType => Str

=item [ExternalEventsDetail => L<Paws::FraudDetector::ExternalEventsDetail>]

=item [Tags => ArrayRef[L<Paws::FraudDetector::Tag>]]


=back

Each argument is described in detail in: L<Paws::FraudDetector::UpdateModelVersion>

Returns: a L<Paws::FraudDetector::UpdateModelVersionResult> instance

Updates a model version. Updating a model version retrains an existing
model version using updated training data and produces a new minor
version of the model. You can update the training data set location and
data access role attributes using this action. This action creates and
trains a new minor version of the model, for example version 1.01,
1.02, 1.03.


=head2 UpdateModelVersionStatus

=over

=item ModelId => Str

=item ModelType => Str

=item ModelVersionNumber => Str

=item Status => Str


=back

Each argument is described in detail in: L<Paws::FraudDetector::UpdateModelVersionStatus>

Returns: a L<Paws::FraudDetector::UpdateModelVersionStatusResult> instance

Updates the status of a model version.

You can perform the following status updates:

=over

=item 1.

Change the C<TRAINING_COMPLETE> status to C<ACTIVE>.

=item 2.

Change C<ACTIVE>to C<INACTIVE>.

=back



=head2 UpdateRuleMetadata

=over

=item Description => Str

=item Rule => L<Paws::FraudDetector::Rule>


=back

Each argument is described in detail in: L<Paws::FraudDetector::UpdateRuleMetadata>

Returns: a L<Paws::FraudDetector::UpdateRuleMetadataResult> instance

Updates a rule's metadata. The description attribute can be updated.


=head2 UpdateRuleVersion

=over

=item Expression => Str

=item Language => Str

=item Outcomes => ArrayRef[Str|Undef]

=item Rule => L<Paws::FraudDetector::Rule>

=item [Description => Str]

=item [Tags => ArrayRef[L<Paws::FraudDetector::Tag>]]


=back

Each argument is described in detail in: L<Paws::FraudDetector::UpdateRuleVersion>

Returns: a L<Paws::FraudDetector::UpdateRuleVersionResult> instance

Updates a rule version resulting in a new rule version. Updates a rule
version resulting in a new rule version (version 1, 2, 3 ...).


=head2 UpdateVariable

=over

=item Name => Str

=item [DefaultValue => Str]

=item [Description => Str]

=item [VariableType => Str]


=back

Each argument is described in detail in: L<Paws::FraudDetector::UpdateVariable>

Returns: a L<Paws::FraudDetector::UpdateVariableResult> instance

Updates a variable.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

