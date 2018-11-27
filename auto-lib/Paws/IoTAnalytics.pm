package Paws::IoTAnalytics;
  use Moose;
  sub service { 'iotanalytics' }
  sub signing_name { 'iotanalytics' }
  sub version { '2017-11-27' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub BatchPutMessage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTAnalytics::BatchPutMessage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelPipelineReprocessing {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTAnalytics::CancelPipelineReprocessing', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTAnalytics::CreateChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDataset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTAnalytics::CreateDataset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDatasetContent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTAnalytics::CreateDatasetContent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDatastore {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTAnalytics::CreateDatastore', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePipeline {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTAnalytics::CreatePipeline', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTAnalytics::DeleteChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDataset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTAnalytics::DeleteDataset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDatasetContent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTAnalytics::DeleteDatasetContent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDatastore {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTAnalytics::DeleteDatastore', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePipeline {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTAnalytics::DeletePipeline', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTAnalytics::DescribeChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDataset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTAnalytics::DescribeDataset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDatastore {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTAnalytics::DescribeDatastore', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLoggingOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTAnalytics::DescribeLoggingOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePipeline {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTAnalytics::DescribePipeline', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDatasetContent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTAnalytics::GetDatasetContent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListChannels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTAnalytics::ListChannels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDatasetContents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTAnalytics::ListDatasetContents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDatasets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTAnalytics::ListDatasets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDatastores {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTAnalytics::ListDatastores', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPipelines {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTAnalytics::ListPipelines', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTAnalytics::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutLoggingOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTAnalytics::PutLoggingOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RunPipelineActivity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTAnalytics::RunPipelineActivity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SampleChannelData {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTAnalytics::SampleChannelData', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartPipelineReprocessing {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTAnalytics::StartPipelineReprocessing', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTAnalytics::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTAnalytics::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTAnalytics::UpdateChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDataset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTAnalytics::UpdateDataset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDatastore {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTAnalytics::UpdateDatastore', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePipeline {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTAnalytics::UpdatePipeline', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/BatchPutMessage CancelPipelineReprocessing CreateChannel CreateDataset CreateDatasetContent CreateDatastore CreatePipeline DeleteChannel DeleteDataset DeleteDatasetContent DeleteDatastore DeletePipeline DescribeChannel DescribeDataset DescribeDatastore DescribeLoggingOptions DescribePipeline GetDatasetContent ListChannels ListDatasetContents ListDatasets ListDatastores ListPipelines ListTagsForResource PutLoggingOptions RunPipelineActivity SampleChannelData StartPipelineReprocessing TagResource UntagResource UpdateChannel UpdateDataset UpdateDatastore UpdatePipeline / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics - Perl Interface to AWS AWS IoT Analytics

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('IoTAnalytics');
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

AWS IoT Analytics allows you to collect large amounts of device data,
process messages, and store them. You can then query the data and run
sophisticated analytics on it. AWS IoT Analytics enables advanced data
exploration through integration with Jupyter Notebooks and data
visualization through integration with Amazon QuickSight.

Traditional analytics and business intelligence tools are designed to
process structured data. IoT data often comes from devices that record
noisy processes (such as temperature, motion, or sound). As a result
the data from these devices can have significant gaps, corrupted
messages, and false readings that must be cleaned up before analysis
can occur. Also, IoT data is often only meaningful in the context of
other data from external sources.

AWS IoT Analytics automates the steps required to analyze data from IoT
devices. AWS IoT Analytics filters, transforms, and enriches IoT data
before storing it in a time-series data store for analysis. You can set
up the service to collect only the data you need from your devices,
apply mathematical transforms to process the data, and enrich the data
with device-specific metadata such as device type and location before
storing it. Then, you can analyze your data by running queries using
the built-in SQL query engine, or perform more complex analytics and
machine learning inference. AWS IoT Analytics includes pre-built models
for common IoT use cases so you can answer questions like which devices
are about to fail or which customers are at risk of abandoning their
wearable devices.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotanalytics-2017-11-27>


=head1 METHODS

=head2 BatchPutMessage

=over

=item ChannelName => Str

=item Messages => ArrayRef[L<Paws::IoTAnalytics::Message>]


=back

Each argument is described in detail in: L<Paws::IoTAnalytics::BatchPutMessage>

Returns: a L<Paws::IoTAnalytics::BatchPutMessageResponse> instance

Sends messages to a channel.


=head2 CancelPipelineReprocessing

=over

=item PipelineName => Str

=item ReprocessingId => Str


=back

Each argument is described in detail in: L<Paws::IoTAnalytics::CancelPipelineReprocessing>

Returns: a L<Paws::IoTAnalytics::CancelPipelineReprocessingResponse> instance

Cancels the reprocessing of data through the pipeline.


=head2 CreateChannel

=over

=item ChannelName => Str

=item [RetentionPeriod => L<Paws::IoTAnalytics::RetentionPeriod>]

=item [Tags => ArrayRef[L<Paws::IoTAnalytics::Tag>]]


=back

Each argument is described in detail in: L<Paws::IoTAnalytics::CreateChannel>

Returns: a L<Paws::IoTAnalytics::CreateChannelResponse> instance

Creates a channel. A channel collects data from an MQTT topic and
archives the raw, unprocessed messages before publishing the data to a
pipeline.


=head2 CreateDataset

=over

=item Actions => ArrayRef[L<Paws::IoTAnalytics::DatasetAction>]

=item DatasetName => Str

=item [ContentDeliveryRules => ArrayRef[L<Paws::IoTAnalytics::DatasetContentDeliveryRule>]]

=item [RetentionPeriod => L<Paws::IoTAnalytics::RetentionPeriod>]

=item [Tags => ArrayRef[L<Paws::IoTAnalytics::Tag>]]

=item [Triggers => ArrayRef[L<Paws::IoTAnalytics::DatasetTrigger>]]


=back

Each argument is described in detail in: L<Paws::IoTAnalytics::CreateDataset>

Returns: a L<Paws::IoTAnalytics::CreateDatasetResponse> instance

Creates a data set. A data set stores data retrieved from a data store
by applying a "queryAction" (a SQL query) or a "containerAction"
(executing a containerized application). This operation creates the
skeleton of a data set. The data set can be populated manually by
calling "CreateDatasetContent" or automatically according to a
"trigger" you specify.


=head2 CreateDatasetContent

=over

=item DatasetName => Str


=back

Each argument is described in detail in: L<Paws::IoTAnalytics::CreateDatasetContent>

Returns: a L<Paws::IoTAnalytics::CreateDatasetContentResponse> instance

Creates the content of a data set by applying a SQL action.


=head2 CreateDatastore

=over

=item DatastoreName => Str

=item [RetentionPeriod => L<Paws::IoTAnalytics::RetentionPeriod>]

=item [Tags => ArrayRef[L<Paws::IoTAnalytics::Tag>]]


=back

Each argument is described in detail in: L<Paws::IoTAnalytics::CreateDatastore>

Returns: a L<Paws::IoTAnalytics::CreateDatastoreResponse> instance

Creates a data store, which is a repository for messages.


=head2 CreatePipeline

=over

=item PipelineActivities => ArrayRef[L<Paws::IoTAnalytics::PipelineActivity>]

=item PipelineName => Str

=item [Tags => ArrayRef[L<Paws::IoTAnalytics::Tag>]]


=back

Each argument is described in detail in: L<Paws::IoTAnalytics::CreatePipeline>

Returns: a L<Paws::IoTAnalytics::CreatePipelineResponse> instance

Creates a pipeline. A pipeline consumes messages from one or more
channels and allows you to process the messages before storing them in
a data store.


=head2 DeleteChannel

=over

=item ChannelName => Str


=back

Each argument is described in detail in: L<Paws::IoTAnalytics::DeleteChannel>

Returns: nothing

Deletes the specified channel.


=head2 DeleteDataset

=over

=item DatasetName => Str


=back

Each argument is described in detail in: L<Paws::IoTAnalytics::DeleteDataset>

Returns: nothing

Deletes the specified data set.

You do not have to delete the content of the data set before you
perform this operation.


=head2 DeleteDatasetContent

=over

=item DatasetName => Str

=item [VersionId => Str]


=back

Each argument is described in detail in: L<Paws::IoTAnalytics::DeleteDatasetContent>

Returns: nothing

Deletes the content of the specified data set.


=head2 DeleteDatastore

=over

=item DatastoreName => Str


=back

Each argument is described in detail in: L<Paws::IoTAnalytics::DeleteDatastore>

Returns: nothing

Deletes the specified data store.


=head2 DeletePipeline

=over

=item PipelineName => Str


=back

Each argument is described in detail in: L<Paws::IoTAnalytics::DeletePipeline>

Returns: nothing

Deletes the specified pipeline.


=head2 DescribeChannel

=over

=item ChannelName => Str

=item [IncludeStatistics => Bool]


=back

Each argument is described in detail in: L<Paws::IoTAnalytics::DescribeChannel>

Returns: a L<Paws::IoTAnalytics::DescribeChannelResponse> instance

Retrieves information about a channel.


=head2 DescribeDataset

=over

=item DatasetName => Str


=back

Each argument is described in detail in: L<Paws::IoTAnalytics::DescribeDataset>

Returns: a L<Paws::IoTAnalytics::DescribeDatasetResponse> instance

Retrieves information about a data set.


=head2 DescribeDatastore

=over

=item DatastoreName => Str

=item [IncludeStatistics => Bool]


=back

Each argument is described in detail in: L<Paws::IoTAnalytics::DescribeDatastore>

Returns: a L<Paws::IoTAnalytics::DescribeDatastoreResponse> instance

Retrieves information about a data store.


=head2 DescribeLoggingOptions






Each argument is described in detail in: L<Paws::IoTAnalytics::DescribeLoggingOptions>

Returns: a L<Paws::IoTAnalytics::DescribeLoggingOptionsResponse> instance

Retrieves the current settings of the AWS IoT Analytics logging
options.


=head2 DescribePipeline

=over

=item PipelineName => Str


=back

Each argument is described in detail in: L<Paws::IoTAnalytics::DescribePipeline>

Returns: a L<Paws::IoTAnalytics::DescribePipelineResponse> instance

Retrieves information about a pipeline.


=head2 GetDatasetContent

=over

=item DatasetName => Str

=item [VersionId => Str]


=back

Each argument is described in detail in: L<Paws::IoTAnalytics::GetDatasetContent>

Returns: a L<Paws::IoTAnalytics::GetDatasetContentResponse> instance

Retrieves the contents of a data set as pre-signed URIs.


=head2 ListChannels

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTAnalytics::ListChannels>

Returns: a L<Paws::IoTAnalytics::ListChannelsResponse> instance

Retrieves a list of channels.


=head2 ListDatasetContents

=over

=item DatasetName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTAnalytics::ListDatasetContents>

Returns: a L<Paws::IoTAnalytics::ListDatasetContentsResponse> instance

Lists information about data set contents that have been created.


=head2 ListDatasets

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTAnalytics::ListDatasets>

Returns: a L<Paws::IoTAnalytics::ListDatasetsResponse> instance

Retrieves information about data sets.


=head2 ListDatastores

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTAnalytics::ListDatastores>

Returns: a L<Paws::IoTAnalytics::ListDatastoresResponse> instance

Retrieves a list of data stores.


=head2 ListPipelines

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTAnalytics::ListPipelines>

Returns: a L<Paws::IoTAnalytics::ListPipelinesResponse> instance

Retrieves a list of pipelines.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::IoTAnalytics::ListTagsForResource>

Returns: a L<Paws::IoTAnalytics::ListTagsForResourceResponse> instance

Lists the tags (metadata) which you have assigned to the resource.


=head2 PutLoggingOptions

=over

=item LoggingOptions => L<Paws::IoTAnalytics::LoggingOptions>


=back

Each argument is described in detail in: L<Paws::IoTAnalytics::PutLoggingOptions>

Returns: nothing

Sets or updates the AWS IoT Analytics logging options.

Note that if you update the value of any C<loggingOptions> field, it
takes up to one minute for the change to take effect. Also, if you
change the policy attached to the role you specified in the roleArn
field (for example, to correct an invalid policy) it takes up to 5
minutes for that change to take effect.


=head2 RunPipelineActivity

=over

=item Payloads => ArrayRef[Str|Undef]

=item PipelineActivity => L<Paws::IoTAnalytics::PipelineActivity>


=back

Each argument is described in detail in: L<Paws::IoTAnalytics::RunPipelineActivity>

Returns: a L<Paws::IoTAnalytics::RunPipelineActivityResponse> instance

Simulates the results of running a pipeline activity on a message
payload.


=head2 SampleChannelData

=over

=item ChannelName => Str

=item [EndTime => Str]

=item [MaxMessages => Int]

=item [StartTime => Str]


=back

Each argument is described in detail in: L<Paws::IoTAnalytics::SampleChannelData>

Returns: a L<Paws::IoTAnalytics::SampleChannelDataResponse> instance

Retrieves a sample of messages from the specified channel ingested
during the specified timeframe. Up to 10 messages can be retrieved.


=head2 StartPipelineReprocessing

=over

=item PipelineName => Str

=item [EndTime => Str]

=item [StartTime => Str]


=back

Each argument is described in detail in: L<Paws::IoTAnalytics::StartPipelineReprocessing>

Returns: a L<Paws::IoTAnalytics::StartPipelineReprocessingResponse> instance

Starts the reprocessing of raw message data through the pipeline.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::IoTAnalytics::Tag>]


=back

Each argument is described in detail in: L<Paws::IoTAnalytics::TagResource>

Returns: a L<Paws::IoTAnalytics::TagResourceResponse> instance

Adds to or modifies the tags of the given resource. Tags are metadata
which can be used to manage a resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::IoTAnalytics::UntagResource>

Returns: a L<Paws::IoTAnalytics::UntagResourceResponse> instance

Removes the given tags (metadata) from the resource.


=head2 UpdateChannel

=over

=item ChannelName => Str

=item [RetentionPeriod => L<Paws::IoTAnalytics::RetentionPeriod>]


=back

Each argument is described in detail in: L<Paws::IoTAnalytics::UpdateChannel>

Returns: nothing

Updates the settings of a channel.


=head2 UpdateDataset

=over

=item Actions => ArrayRef[L<Paws::IoTAnalytics::DatasetAction>]

=item DatasetName => Str

=item [ContentDeliveryRules => ArrayRef[L<Paws::IoTAnalytics::DatasetContentDeliveryRule>]]

=item [RetentionPeriod => L<Paws::IoTAnalytics::RetentionPeriod>]

=item [Triggers => ArrayRef[L<Paws::IoTAnalytics::DatasetTrigger>]]


=back

Each argument is described in detail in: L<Paws::IoTAnalytics::UpdateDataset>

Returns: nothing

Updates the settings of a data set.


=head2 UpdateDatastore

=over

=item DatastoreName => Str

=item [RetentionPeriod => L<Paws::IoTAnalytics::RetentionPeriod>]


=back

Each argument is described in detail in: L<Paws::IoTAnalytics::UpdateDatastore>

Returns: nothing

Updates the settings of a data store.


=head2 UpdatePipeline

=over

=item PipelineActivities => ArrayRef[L<Paws::IoTAnalytics::PipelineActivity>]

=item PipelineName => Str


=back

Each argument is described in detail in: L<Paws::IoTAnalytics::UpdatePipeline>

Returns: nothing

Updates the settings of a pipeline.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

