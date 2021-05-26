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
  sub CreateDetectorVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::CreateDetectorVersion', @_);
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
  sub DeleteDetectorVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::DeleteDetectorVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEvent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::DeleteEvent', @_);
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
  sub GetExternalModels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::GetExternalModels', @_);
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
  sub GetPrediction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::GetPrediction', @_);
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
  sub PutDetector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::PutDetector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutExternalModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::PutExternalModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::PutModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutOutcome {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::PutOutcome', @_);
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
  sub UpdateModelVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FraudDetector::UpdateModelVersion', @_);
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
  


  sub operations { qw/BatchCreateVariable BatchGetVariable CreateDetectorVersion CreateModelVersion CreateRule CreateVariable DeleteDetectorVersion DeleteEvent DescribeDetector DescribeModelVersions GetDetectors GetDetectorVersion GetExternalModels GetModels GetModelVersion GetOutcomes GetPrediction GetRules GetVariables PutDetector PutExternalModel PutModel PutOutcome UpdateDetectorVersion UpdateDetectorVersionMetadata UpdateDetectorVersionStatus UpdateModelVersion UpdateRuleMetadata UpdateRuleVersion UpdateVariable / }

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


=head2 CreateDetectorVersion

=over

=item DetectorId => Str

=item Rules => ArrayRef[L<Paws::FraudDetector::Rule>]

=item [Description => Str]

=item [ExternalModelEndpoints => ArrayRef[Str|Undef]]

=item [ModelVersions => ArrayRef[L<Paws::FraudDetector::ModelVersion>]]


=back

Each argument is described in detail in: L<Paws::FraudDetector::CreateDetectorVersion>

Returns: a L<Paws::FraudDetector::CreateDetectorVersionResult> instance

Creates a detector version. The detector version starts in a C<DRAFT>
status.


=head2 CreateModelVersion

=over

=item ModelId => Str

=item ModelType => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::FraudDetector::CreateModelVersion>

Returns: a L<Paws::FraudDetector::CreateModelVersionResult> instance

Creates a version of the model using the specified model type.


=head2 CreateRule

=over

=item DetectorId => Str

=item Expression => Str

=item Language => Str

=item Outcomes => ArrayRef[Str|Undef]

=item RuleId => Str

=item [Description => Str]


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

=item [VariableType => Str]


=back

Each argument is described in detail in: L<Paws::FraudDetector::CreateVariable>

Returns: a L<Paws::FraudDetector::CreateVariableResult> instance

Creates a variable.


=head2 DeleteDetectorVersion

=over

=item DetectorId => Str

=item DetectorVersionId => Str


=back

Each argument is described in detail in: L<Paws::FraudDetector::DeleteDetectorVersion>

Returns: a L<Paws::FraudDetector::DeleteDetectorVersionResult> instance

Deletes the detector version.


=head2 DeleteEvent

=over

=item EventId => Str


=back

Each argument is described in detail in: L<Paws::FraudDetector::DeleteEvent>

Returns: a L<Paws::FraudDetector::DeleteEventResult> instance

Deletes the specified event.


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


=head2 GetDetectors

=over

=item [DetectorId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::FraudDetector::GetDetectors>

Returns: a L<Paws::FraudDetector::GetDetectorsResult> instance

Gets all of detectors. This is a paginated API. If you provide a null
C<maxSizePerPage>, this actions retrieves a maximum of 10 records per
page. If you provide a C<maxSizePerPage>, the value must be between 5
and 10. To get the next page results, provide the pagination token from
the C<GetEventTypesResponse> as part of your request. A null pagination
token fetches the records from the beginning.


=head2 GetDetectorVersion

=over

=item DetectorId => Str

=item DetectorVersionId => Str


=back

Each argument is described in detail in: L<Paws::FraudDetector::GetDetectorVersion>

Returns: a L<Paws::FraudDetector::GetDetectorVersionResult> instance

Gets a particular detector version.


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
null C<maxSizePerPage>, this actions retrieves a maximum of 10 records
per page. If you provide a C<maxSizePerPage>, the value must be between
5 and 10. To get the next page results, provide the pagination token
from the C<GetExternalModelsResult> as part of your request. A null
pagination token fetches the records from the beginning.


=head2 GetModels

=over

=item [MaxResults => Int]

=item [ModelId => Str]

=item [ModelType => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::FraudDetector::GetModels>

Returns: a L<Paws::FraudDetector::GetModelsResult> instance

Gets all of the models for the AWS account, or the specified model
type, or gets a single model for the specified model type, model ID
combination.


=head2 GetModelVersion

=over

=item ModelId => Str

=item ModelType => Str

=item ModelVersionNumber => Str


=back

Each argument is described in detail in: L<Paws::FraudDetector::GetModelVersion>

Returns: a L<Paws::FraudDetector::GetModelVersionResult> instance

Gets a model version.


=head2 GetOutcomes

=over

=item [MaxResults => Int]

=item [Name => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::FraudDetector::GetOutcomes>

Returns: a L<Paws::FraudDetector::GetOutcomesResult> instance

Gets one or more outcomes. This is a paginated API. If you provide a
null C<maxSizePerPage>, this actions retrieves a maximum of 10 records
per page. If you provide a C<maxSizePerPage>, the value must be between
50 and 100. To get the next page results, provide the pagination token
from the C<GetOutcomesResult> as part of your request. A null
pagination token fetches the records from the beginning.


=head2 GetPrediction

=over

=item DetectorId => Str

=item EventId => Str

=item [DetectorVersionId => Str]

=item [EventAttributes => L<Paws::FraudDetector::EventAttributeMap>]

=item [ExternalModelEndpointDataBlobs => L<Paws::FraudDetector::ExternalModelEndpointDataBlobMap>]


=back

Each argument is described in detail in: L<Paws::FraudDetector::GetPrediction>

Returns: a L<Paws::FraudDetector::GetPredictionResult> instance

Evaluates an event against a detector version. If a version ID is not
provided, the detectorE<rsquo>s (C<ACTIVE>) version is used.


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

Gets all rules available for the specified detector.


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


=head2 PutDetector

=over

=item DetectorId => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::FraudDetector::PutDetector>

Returns: a L<Paws::FraudDetector::PutDetectorResult> instance

Creates or updates a detector.


=head2 PutExternalModel

=over

=item InputConfiguration => L<Paws::FraudDetector::ModelInputConfiguration>

=item ModelEndpoint => Str

=item ModelEndpointStatus => Str

=item ModelSource => Str

=item OutputConfiguration => L<Paws::FraudDetector::ModelOutputConfiguration>

=item Role => L<Paws::FraudDetector::Role>


=back

Each argument is described in detail in: L<Paws::FraudDetector::PutExternalModel>

Returns: a L<Paws::FraudDetector::PutExternalModelResult> instance

Creates or updates an Amazon SageMaker model endpoint. You can also use
this action to update the configuration of the model endpoint,
including the IAM role and/or the mapped variables.


=head2 PutModel

=over

=item LabelSchema => L<Paws::FraudDetector::LabelSchema>

=item ModelId => Str

=item ModelType => Str

=item ModelVariables => ArrayRef[L<Paws::FraudDetector::ModelVariable>]

=item TrainingDataSource => L<Paws::FraudDetector::TrainingDataSource>

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::FraudDetector::PutModel>

Returns: a L<Paws::FraudDetector::PutModelResult> instance

Creates or updates a model.


=head2 PutOutcome

=over

=item Name => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::FraudDetector::PutOutcome>

Returns: a L<Paws::FraudDetector::PutOutcomeResult> instance

Creates or updates an outcome.


=head2 UpdateDetectorVersion

=over

=item DetectorId => Str

=item DetectorVersionId => Str

=item ExternalModelEndpoints => ArrayRef[Str|Undef]

=item Rules => ArrayRef[L<Paws::FraudDetector::Rule>]

=item [Description => Str]

=item [ModelVersions => ArrayRef[L<Paws::FraudDetector::ModelVersion>]]


=back

Each argument is described in detail in: L<Paws::FraudDetector::UpdateDetectorVersion>

Returns: a L<Paws::FraudDetector::UpdateDetectorVersionResult> instance

Updates a detector version. The detector version attributes that you
can update include models, external model endpoints, rules, and
description. You can only update a C<DRAFT> detector version.


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


=head2 UpdateModelVersion

=over

=item Description => Str

=item ModelId => Str

=item ModelType => Str

=item ModelVersionNumber => Str

=item Status => Str


=back

Each argument is described in detail in: L<Paws::FraudDetector::UpdateModelVersion>

Returns: a L<Paws::FraudDetector::UpdateModelVersionResult> instance

Updates a model version. You can update the description and status
attributes using this action. You can perform the following status
updates:

=over

=item 1.

Change the C<TRAINING_COMPLETE> status to C<ACTIVE>

=item 2.

Change C<ACTIVE> back to C<TRAINING_COMPLETE>

=back



=head2 UpdateRuleMetadata

=over

=item Description => Str

=item Rule => L<Paws::FraudDetector::Rule>


=back

Each argument is described in detail in: L<Paws::FraudDetector::UpdateRuleMetadata>

Returns: a L<Paws::FraudDetector::UpdateRuleMetadataResult> instance

Updates a rule's metadata.


=head2 UpdateRuleVersion

=over

=item Expression => Str

=item Language => Str

=item Outcomes => ArrayRef[Str|Undef]

=item Rule => L<Paws::FraudDetector::Rule>

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::FraudDetector::UpdateRuleVersion>

Returns: a L<Paws::FraudDetector::UpdateRuleVersionResult> instance

Updates a rule version resulting in a new rule version.


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

