package Paws::IoTAnalytics;
  use Moose;
  sub service { 'iotanalytics' }
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
  


  sub operations { qw/BatchPutMessage CancelPipelineReprocessing CreateChannel CreateDataset CreateDatasetContent CreateDatastore CreatePipeline DeleteChannel DeleteDataset DeleteDatasetContent DeleteDatastore DeletePipeline DescribeChannel DescribeDataset DescribeDatastore DescribeLoggingOptions DescribePipeline GetDatasetContent ListChannels ListDatasets ListDatastores ListPipelines PutLoggingOptions RunPipelineActivity SampleChannelData StartPipelineReprocessing UpdateChannel UpdateDataset UpdateDatastore UpdatePipeline / }

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

AWS IoT Analytics provides advanced data analysis for AWS IoT. It
allows you to collect large amounts of device data, process messages,
store them, and then query the data and run sophisticated analytics to
make accurate decisions in your IoT applications and machine learning
use cases. AWS IoT Analytics enables advanced data exploration through
integration with Jupyter Notebooks and data visualization through
integration with Amazon QuickSight.

Traditional analytics and business intelligence tools are designed to
process structured data. IoT data often comes from devices that record
noisy processes (such as temperature, motion, or sound). As a result,
the data from these devices can have significant gaps, corrupted
messages, and false readings that must be cleaned up before analysis
can occur. Also, IoT data is often only meaningful in the context of
other data from external sources.

AWS IoT Analytics automates each of the steps required to analyze data
from IoT devices. AWS IoT Analytics filters, transforms, and enriches
IoT data before storing it in a time-series data store for analysis.
You can set up the service to collect only the data you need from your
devices, apply mathematical transforms to process the data, and enrich
the data with device-specific metadata such as device type and location
before storing it. Then, you can analyze your data by running queries
using the built-in SQL query engine, or perform more complex analytics
and machine learning inference. AWS IoT Analytics includes models for
common IoT use cases so you can answer questions like which devices are
about to fail or which customers are at risk of abandoning their
wearable devices.

=head1 METHODS

=head2 BatchPutMessage(ChannelName => Str, Messages => ArrayRef[L<Paws::IoTAnalytics::Message>])

Each argument is described in detail in: L<Paws::IoTAnalytics::BatchPutMessage>

Returns: a L<Paws::IoTAnalytics::BatchPutMessageResponse> instance

Sends messages to a channel.


=head2 CancelPipelineReprocessing(PipelineName => Str, ReprocessingId => Str)

Each argument is described in detail in: L<Paws::IoTAnalytics::CancelPipelineReprocessing>

Returns: a L<Paws::IoTAnalytics::CancelPipelineReprocessingResponse> instance

Cancels the reprocessing of data through the pipeline.


=head2 CreateChannel(ChannelName => Str, [RetentionPeriod => L<Paws::IoTAnalytics::RetentionPeriod>])

Each argument is described in detail in: L<Paws::IoTAnalytics::CreateChannel>

Returns: a L<Paws::IoTAnalytics::CreateChannelResponse> instance

Creates a channel. A channel collects data from an MQTT topic and
archives the raw, unprocessed messages before publishing the data to a
pipeline.


=head2 CreateDataset(Actions => ArrayRef[L<Paws::IoTAnalytics::DatasetAction>], DatasetName => Str, [Triggers => ArrayRef[L<Paws::IoTAnalytics::DatasetTrigger>]])

Each argument is described in detail in: L<Paws::IoTAnalytics::CreateDataset>

Returns: a L<Paws::IoTAnalytics::CreateDatasetResponse> instance

Creates a data set. A data set stores data retrieved from a data store
by applying an SQL action.

This operation creates the skeleton of a data set. To populate the data
set, call "CreateDatasetContent".


=head2 CreateDatasetContent(DatasetName => Str)

Each argument is described in detail in: L<Paws::IoTAnalytics::CreateDatasetContent>

Returns: nothing

Creates the content of a data set by applying an SQL action.


=head2 CreateDatastore(DatastoreName => Str, [RetentionPeriod => L<Paws::IoTAnalytics::RetentionPeriod>])

Each argument is described in detail in: L<Paws::IoTAnalytics::CreateDatastore>

Returns: a L<Paws::IoTAnalytics::CreateDatastoreResponse> instance

Creates a data store, which is a repository for messages.


=head2 CreatePipeline(PipelineActivities => ArrayRef[L<Paws::IoTAnalytics::PipelineActivity>], PipelineName => Str)

Each argument is described in detail in: L<Paws::IoTAnalytics::CreatePipeline>

Returns: a L<Paws::IoTAnalytics::CreatePipelineResponse> instance

Creates a pipeline. A pipeline consumes messages from one or more
channels and allows you to process the messages before storing them in
a data store.


=head2 DeleteChannel(ChannelName => Str)

Each argument is described in detail in: L<Paws::IoTAnalytics::DeleteChannel>

Returns: nothing

Deletes the specified channel.


=head2 DeleteDataset(DatasetName => Str)

Each argument is described in detail in: L<Paws::IoTAnalytics::DeleteDataset>

Returns: nothing

Deletes the specified data set.

You do not have to delete the content of the data set before you
perform this operation.


=head2 DeleteDatasetContent(DatasetName => Str, [VersionId => Str])

Each argument is described in detail in: L<Paws::IoTAnalytics::DeleteDatasetContent>

Returns: nothing

Deletes the content of the specified data set.


=head2 DeleteDatastore(DatastoreName => Str)

Each argument is described in detail in: L<Paws::IoTAnalytics::DeleteDatastore>

Returns: nothing

Deletes the specified data store.


=head2 DeletePipeline(PipelineName => Str)

Each argument is described in detail in: L<Paws::IoTAnalytics::DeletePipeline>

Returns: nothing

Deletes the specified pipeline.


=head2 DescribeChannel(ChannelName => Str)

Each argument is described in detail in: L<Paws::IoTAnalytics::DescribeChannel>

Returns: a L<Paws::IoTAnalytics::DescribeChannelResponse> instance

Retrieves information about a channel.


=head2 DescribeDataset(DatasetName => Str)

Each argument is described in detail in: L<Paws::IoTAnalytics::DescribeDataset>

Returns: a L<Paws::IoTAnalytics::DescribeDatasetResponse> instance

Retrieves information about a data set.


=head2 DescribeDatastore(DatastoreName => Str)

Each argument is described in detail in: L<Paws::IoTAnalytics::DescribeDatastore>

Returns: a L<Paws::IoTAnalytics::DescribeDatastoreResponse> instance

Retrieves information about a data store.


=head2 DescribeLoggingOptions()

Each argument is described in detail in: L<Paws::IoTAnalytics::DescribeLoggingOptions>

Returns: a L<Paws::IoTAnalytics::DescribeLoggingOptionsResponse> instance

Retrieves the current settings of the AWS IoT Analytics logging
options.


=head2 DescribePipeline(PipelineName => Str)

Each argument is described in detail in: L<Paws::IoTAnalytics::DescribePipeline>

Returns: a L<Paws::IoTAnalytics::DescribePipelineResponse> instance

Retrieves information about a pipeline.


=head2 GetDatasetContent(DatasetName => Str, [VersionId => Str])

Each argument is described in detail in: L<Paws::IoTAnalytics::GetDatasetContent>

Returns: a L<Paws::IoTAnalytics::GetDatasetContentResponse> instance

Retrieves the contents of a data set as pre-signed URIs.


=head2 ListChannels([MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::IoTAnalytics::ListChannels>

Returns: a L<Paws::IoTAnalytics::ListChannelsResponse> instance

Retrieves a list of channels.


=head2 ListDatasets([MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::IoTAnalytics::ListDatasets>

Returns: a L<Paws::IoTAnalytics::ListDatasetsResponse> instance

Retrieves information about data sets.


=head2 ListDatastores([MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::IoTAnalytics::ListDatastores>

Returns: a L<Paws::IoTAnalytics::ListDatastoresResponse> instance

Retrieves a list of data stores.


=head2 ListPipelines([MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::IoTAnalytics::ListPipelines>

Returns: a L<Paws::IoTAnalytics::ListPipelinesResponse> instance

Retrieves a list of pipelines.


=head2 PutLoggingOptions(LoggingOptions => L<Paws::IoTAnalytics::LoggingOptions>)

Each argument is described in detail in: L<Paws::IoTAnalytics::PutLoggingOptions>

Returns: nothing

Sets or updates the AWS IoT Analytics logging options.


=head2 RunPipelineActivity(Payloads => ArrayRef[Str|Undef], PipelineActivity => L<Paws::IoTAnalytics::PipelineActivity>)

Each argument is described in detail in: L<Paws::IoTAnalytics::RunPipelineActivity>

Returns: a L<Paws::IoTAnalytics::RunPipelineActivityResponse> instance

Simulates the results of running a pipeline activity on a message
payload.


=head2 SampleChannelData(ChannelName => Str, [EndTime => Str, MaxMessages => Int, StartTime => Str])

Each argument is described in detail in: L<Paws::IoTAnalytics::SampleChannelData>

Returns: a L<Paws::IoTAnalytics::SampleChannelDataResponse> instance

Retrieves a sample of messages from the specified channel ingested
during the specified timeframe. Up to 10 messages can be retrieved.


=head2 StartPipelineReprocessing(PipelineName => Str, [EndTime => Str, StartTime => Str])

Each argument is described in detail in: L<Paws::IoTAnalytics::StartPipelineReprocessing>

Returns: a L<Paws::IoTAnalytics::StartPipelineReprocessingResponse> instance

Starts the reprocessing of raw message data through the pipeline.


=head2 UpdateChannel(ChannelName => Str, [RetentionPeriod => L<Paws::IoTAnalytics::RetentionPeriod>])

Each argument is described in detail in: L<Paws::IoTAnalytics::UpdateChannel>

Returns: nothing

Updates the settings of a channel.


=head2 UpdateDataset(Actions => ArrayRef[L<Paws::IoTAnalytics::DatasetAction>], DatasetName => Str, [Triggers => ArrayRef[L<Paws::IoTAnalytics::DatasetTrigger>]])

Each argument is described in detail in: L<Paws::IoTAnalytics::UpdateDataset>

Returns: nothing

Updates the settings of a data set.


=head2 UpdateDatastore(DatastoreName => Str, [RetentionPeriod => L<Paws::IoTAnalytics::RetentionPeriod>])

Each argument is described in detail in: L<Paws::IoTAnalytics::UpdateDatastore>

Returns: nothing

Updates the settings of a data store.


=head2 UpdatePipeline(PipelineActivities => ArrayRef[L<Paws::IoTAnalytics::PipelineActivity>], PipelineName => Str)

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

