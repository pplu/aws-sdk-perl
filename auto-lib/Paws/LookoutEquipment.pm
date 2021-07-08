package Paws::LookoutEquipment;
  use Moose;
  sub service { 'lookoutequipment' }
  sub signing_name { 'lookoutequipment' }
  sub version { '2020-12-15' }
  sub target_prefix { 'AWSLookoutEquipmentFrontendService' }
  sub json_version { "1.0" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub CreateDataset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::CreateDataset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateInferenceScheduler {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::CreateInferenceScheduler', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::CreateModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDataset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::DeleteDataset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteInferenceScheduler {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::DeleteInferenceScheduler', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::DeleteModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDataIngestionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::DescribeDataIngestionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDataset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::DescribeDataset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInferenceScheduler {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::DescribeInferenceScheduler', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::DescribeModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDataIngestionJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::ListDataIngestionJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDatasets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::ListDatasets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListInferenceExecutions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::ListInferenceExecutions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListInferenceSchedulers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::ListInferenceSchedulers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListModels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::ListModels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartDataIngestionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::StartDataIngestionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartInferenceScheduler {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::StartInferenceScheduler', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopInferenceScheduler {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::StopInferenceScheduler', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateInferenceScheduler {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::UpdateInferenceScheduler', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CreateDataset CreateInferenceScheduler CreateModel DeleteDataset DeleteInferenceScheduler DeleteModel DescribeDataIngestionJob DescribeDataset DescribeInferenceScheduler DescribeModel ListDataIngestionJobs ListDatasets ListInferenceExecutions ListInferenceSchedulers ListModels ListTagsForResource StartDataIngestionJob StartInferenceScheduler StopInferenceScheduler TagResource UntagResource UpdateInferenceScheduler / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment - Perl Interface to AWS Amazon Lookout for Equipment

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('LookoutEquipment');
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

Amazon Lookout for Equipment is a machine learning service that uses
advanced analytics to identify anomalies in machines from sensor data
for use in predictive maintenance.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15>


=head1 METHODS

=head2 CreateDataset

=over

=item ClientToken => Str

=item DatasetName => Str

=item DatasetSchema => L<Paws::LookoutEquipment::DatasetSchema>

=item [ServerSideKmsKeyId => Str]

=item [Tags => ArrayRef[L<Paws::LookoutEquipment::Tag>]]


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::CreateDataset>

Returns: a L<Paws::LookoutEquipment::CreateDatasetResponse> instance

Creates a container for a collection of data being ingested for
analysis. The dataset contains the metadata describing where the data
is and what the data actually looks like. In other words, it contains
the location of the data source, the data schema, and other
information. A dataset also contains any tags associated with the
ingested data.


=head2 CreateInferenceScheduler

=over

=item ClientToken => Str

=item DataInputConfiguration => L<Paws::LookoutEquipment::InferenceInputConfiguration>

=item DataOutputConfiguration => L<Paws::LookoutEquipment::InferenceOutputConfiguration>

=item DataUploadFrequency => Str

=item InferenceSchedulerName => Str

=item ModelName => Str

=item RoleArn => Str

=item [DataDelayOffsetInMinutes => Int]

=item [ServerSideKmsKeyId => Str]

=item [Tags => ArrayRef[L<Paws::LookoutEquipment::Tag>]]


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::CreateInferenceScheduler>

Returns: a L<Paws::LookoutEquipment::CreateInferenceSchedulerResponse> instance

Creates a scheduled inference. Scheduling an inference is setting up a
continuous real-time inference plan to analyze new measurement data.
When setting up the schedule, you provide an S3 bucket location for the
input data, assign it a delimiter between separate entries in the data,
set an offset delay if desired, and set the frequency of inferencing.
You must also provide an S3 bucket location for the output data.


=head2 CreateModel

=over

=item ClientToken => Str

=item DatasetName => Str

=item ModelName => Str

=item [DataPreProcessingConfiguration => L<Paws::LookoutEquipment::DataPreProcessingConfiguration>]

=item [DatasetSchema => L<Paws::LookoutEquipment::DatasetSchema>]

=item [EvaluationDataEndTime => Str]

=item [EvaluationDataStartTime => Str]

=item [LabelsInputConfiguration => L<Paws::LookoutEquipment::LabelsInputConfiguration>]

=item [RoleArn => Str]

=item [ServerSideKmsKeyId => Str]

=item [Tags => ArrayRef[L<Paws::LookoutEquipment::Tag>]]

=item [TrainingDataEndTime => Str]

=item [TrainingDataStartTime => Str]


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::CreateModel>

Returns: a L<Paws::LookoutEquipment::CreateModelResponse> instance

Creates an ML model for data inference.

A machine-learning (ML) model is a mathematical model that finds
patterns in your data. In Amazon Lookout for Equipment, the model
learns the patterns of normal behavior and detects abnormal behavior
that could be potential equipment failure (or maintenance events). The
models are made by analyzing normal data and abnormalities in machine
behavior that have already occurred.

Your model is trained using a portion of the data from your dataset and
uses that data to learn patterns of normal behavior and abnormal
patterns that lead to equipment failure. Another portion of the data is
used to evaluate the model's accuracy.


=head2 DeleteDataset

=over

=item DatasetName => Str


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::DeleteDataset>

Returns: nothing

Deletes a dataset and associated artifacts. The operation will check to
see if any inference scheduler or data ingestion job is currently using
the dataset, and if there isn't, the dataset, its metadata, and any
associated data stored in S3 will be deleted. This does not affect any
models that used this dataset for training and evaluation, but does
prevent it from being used in the future.


=head2 DeleteInferenceScheduler

=over

=item InferenceSchedulerName => Str


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::DeleteInferenceScheduler>

Returns: nothing

Deletes an inference scheduler that has been set up. Already processed
output results are not affected.


=head2 DeleteModel

=over

=item ModelName => Str


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::DeleteModel>

Returns: nothing

Deletes an ML model currently available for Amazon Lookout for
Equipment. This will prevent it from being used with an inference
scheduler, even one that is already set up.


=head2 DescribeDataIngestionJob

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::DescribeDataIngestionJob>

Returns: a L<Paws::LookoutEquipment::DescribeDataIngestionJobResponse> instance

Provides information on a specific data ingestion job such as creation
time, dataset ARN, status, and so on.


=head2 DescribeDataset

=over

=item DatasetName => Str


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::DescribeDataset>

Returns: a L<Paws::LookoutEquipment::DescribeDatasetResponse> instance

Provides information on a specified dataset such as the schema
location, status, and so on.


=head2 DescribeInferenceScheduler

=over

=item InferenceSchedulerName => Str


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::DescribeInferenceScheduler>

Returns: a L<Paws::LookoutEquipment::DescribeInferenceSchedulerResponse> instance

Specifies information about the inference scheduler being used,
including name, model, status, and associated metadata


=head2 DescribeModel

=over

=item ModelName => Str


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::DescribeModel>

Returns: a L<Paws::LookoutEquipment::DescribeModelResponse> instance

Provides overall information about a specific ML model, including model
name and ARN, dataset, training and evaluation information, status, and
so on.


=head2 ListDataIngestionJobs

=over

=item [DatasetName => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::ListDataIngestionJobs>

Returns: a L<Paws::LookoutEquipment::ListDataIngestionJobsResponse> instance

Provides a list of all data ingestion jobs, including dataset name and
ARN, S3 location of the input data, status, and so on.


=head2 ListDatasets

=over

=item [DatasetNameBeginsWith => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::ListDatasets>

Returns: a L<Paws::LookoutEquipment::ListDatasetsResponse> instance

Lists all datasets currently available in your account, filtering on
the dataset name.


=head2 ListInferenceExecutions

=over

=item InferenceSchedulerName => Str

=item [DataEndTimeBefore => Str]

=item [DataStartTimeAfter => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::ListInferenceExecutions>

Returns: a L<Paws::LookoutEquipment::ListInferenceExecutionsResponse> instance

Lists all inference executions that have been performed by the
specified inference scheduler.


=head2 ListInferenceSchedulers

=over

=item [InferenceSchedulerNameBeginsWith => Str]

=item [MaxResults => Int]

=item [ModelName => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::ListInferenceSchedulers>

Returns: a L<Paws::LookoutEquipment::ListInferenceSchedulersResponse> instance

Retrieves a list of all inference schedulers currently available for
your account.


=head2 ListModels

=over

=item [DatasetNameBeginsWith => Str]

=item [MaxResults => Int]

=item [ModelNameBeginsWith => Str]

=item [NextToken => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::ListModels>

Returns: a L<Paws::LookoutEquipment::ListModelsResponse> instance

Generates a list of all models in the account, including model name and
ARN, dataset, and status.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::ListTagsForResource>

Returns: a L<Paws::LookoutEquipment::ListTagsForResourceResponse> instance

Lists all the tags for a specified resource, including key and value.


=head2 StartDataIngestionJob

=over

=item ClientToken => Str

=item DatasetName => Str

=item IngestionInputConfiguration => L<Paws::LookoutEquipment::IngestionInputConfiguration>

=item RoleArn => Str


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::StartDataIngestionJob>

Returns: a L<Paws::LookoutEquipment::StartDataIngestionJobResponse> instance

Starts a data ingestion job. Amazon Lookout for Equipment returns the
job status.


=head2 StartInferenceScheduler

=over

=item InferenceSchedulerName => Str


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::StartInferenceScheduler>

Returns: a L<Paws::LookoutEquipment::StartInferenceSchedulerResponse> instance

Starts an inference scheduler.


=head2 StopInferenceScheduler

=over

=item InferenceSchedulerName => Str


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::StopInferenceScheduler>

Returns: a L<Paws::LookoutEquipment::StopInferenceSchedulerResponse> instance

Stops an inference scheduler.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::LookoutEquipment::Tag>]


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::TagResource>

Returns: a L<Paws::LookoutEquipment::TagResourceResponse> instance

Associates a given tag to a resource in your account. A tag is a
key-value pair which can be added to an Amazon Lookout for Equipment
resource as metadata. Tags can be used for organizing your resources as
well as helping you to search and filter by tag. Multiple tags can be
added to a resource, either when you create it, or later. Up to 50 tags
can be associated with each resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::UntagResource>

Returns: a L<Paws::LookoutEquipment::UntagResourceResponse> instance

Removes a specific tag from a given resource. The tag is specified by
its key.


=head2 UpdateInferenceScheduler

=over

=item InferenceSchedulerName => Str

=item [DataDelayOffsetInMinutes => Int]

=item [DataInputConfiguration => L<Paws::LookoutEquipment::InferenceInputConfiguration>]

=item [DataOutputConfiguration => L<Paws::LookoutEquipment::InferenceOutputConfiguration>]

=item [DataUploadFrequency => Str]

=item [RoleArn => Str]


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::UpdateInferenceScheduler>

Returns: nothing

Updates an inference scheduler.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

