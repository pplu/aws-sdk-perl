package Paws::Discovery;
  use Moose;
  sub service { 'discovery' }
  sub signing_name { 'discovery' }
  sub version { '2015-11-01' }
  sub target_prefix { 'AWSPoseidonService_V2015_11_01' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AssociateConfigurationItemsToApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Discovery::AssociateConfigurationItemsToApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDeleteImportData {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Discovery::BatchDeleteImportData', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Discovery::CreateApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Discovery::CreateTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteApplications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Discovery::DeleteApplications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Discovery::DeleteTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAgents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Discovery::DescribeAgents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Discovery::DescribeConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeContinuousExports {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Discovery::DescribeContinuousExports', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeExportConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Discovery::DescribeExportConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeExportTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Discovery::DescribeExportTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeImportTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Discovery::DescribeImportTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Discovery::DescribeTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateConfigurationItemsFromApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Discovery::DisassociateConfigurationItemsFromApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExportConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Discovery::ExportConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDiscoverySummary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Discovery::GetDiscoverySummary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Discovery::ListConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListServerNeighbors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Discovery::ListServerNeighbors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartContinuousExport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Discovery::StartContinuousExport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartDataCollectionByAgentIds {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Discovery::StartDataCollectionByAgentIds', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartExportTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Discovery::StartExportTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartImportTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Discovery::StartImportTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopContinuousExport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Discovery::StopContinuousExport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopDataCollectionByAgentIds {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Discovery::StopDataCollectionByAgentIds', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Discovery::UpdateApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllAgents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeAgents(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeAgents(@_, nextToken => $next_result->nextToken);
        push @{ $result->agentsInfo }, @{ $next_result->agentsInfo };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'agentsInfo') foreach (@{ $result->agentsInfo });
        $result = $self->DescribeAgents(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'agentsInfo') foreach (@{ $result->agentsInfo });
    }

    return undef
  }
  sub DescribeAllContinuousExports {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeContinuousExports(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeContinuousExports(@_, nextToken => $next_result->nextToken);
        push @{ $result->descriptions }, @{ $next_result->descriptions };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'descriptions') foreach (@{ $result->descriptions });
        $result = $self->DescribeContinuousExports(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'descriptions') foreach (@{ $result->descriptions });
    }

    return undef
  }
  sub DescribeAllExportConfigurations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeExportConfigurations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeExportConfigurations(@_, nextToken => $next_result->nextToken);
        push @{ $result->exportsInfo }, @{ $next_result->exportsInfo };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'exportsInfo') foreach (@{ $result->exportsInfo });
        $result = $self->DescribeExportConfigurations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'exportsInfo') foreach (@{ $result->exportsInfo });
    }

    return undef
  }
  sub DescribeAllExportTasks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeExportTasks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeExportTasks(@_, nextToken => $next_result->nextToken);
        push @{ $result->exportsInfo }, @{ $next_result->exportsInfo };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'exportsInfo') foreach (@{ $result->exportsInfo });
        $result = $self->DescribeExportTasks(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'exportsInfo') foreach (@{ $result->exportsInfo });
    }

    return undef
  }
  sub DescribeAllTags {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeTags(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeTags(@_, nextToken => $next_result->nextToken);
        push @{ $result->tags }, @{ $next_result->tags };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'tags') foreach (@{ $result->tags });
        $result = $self->DescribeTags(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'tags') foreach (@{ $result->tags });
    }

    return undef
  }
  sub ListAllConfigurations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListConfigurations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListConfigurations(@_, nextToken => $next_result->nextToken);
        push @{ $result->configurations }, @{ $next_result->configurations };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'configurations') foreach (@{ $result->configurations });
        $result = $self->ListConfigurations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'configurations') foreach (@{ $result->configurations });
    }

    return undef
  }


  sub operations { qw/AssociateConfigurationItemsToApplication BatchDeleteImportData CreateApplication CreateTags DeleteApplications DeleteTags DescribeAgents DescribeConfigurations DescribeContinuousExports DescribeExportConfigurations DescribeExportTasks DescribeImportTasks DescribeTags DisassociateConfigurationItemsFromApplication ExportConfigurations GetDiscoverySummary ListConfigurations ListServerNeighbors StartContinuousExport StartDataCollectionByAgentIds StartExportTask StartImportTask StopContinuousExport StopDataCollectionByAgentIds UpdateApplication / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Discovery - Perl Interface to AWS AWS Application Discovery Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Discovery');
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

AWS Application Discovery Service

AWS Application Discovery Service helps you plan application migration
projects by automatically identifying servers, virtual machines (VMs),
software, and software dependencies running in your on-premises data
centers. Application Discovery Service also collects application
performance data, which can help you assess the outcome of your
migration. The data collected by Application Discovery Service is
securely retained in an AWS-hosted and managed database in the cloud.
You can export the data as a CSV or XML file into your preferred
visualization tool or cloud-migration solution to plan your migration.
For more information, see AWS Application Discovery Service FAQ
(http://aws.amazon.com/application-discovery/faqs/).

Application Discovery Service offers two modes of operation:

=over

=item *

B<Agentless discovery> mode is recommended for environments that use
VMware vCenter Server. This mode doesn't require you to install an
agent on each host. Agentless discovery gathers server information
regardless of the operating systems, which minimizes the time required
for initial on-premises infrastructure assessment. Agentless discovery
doesn't collect information about software and software dependencies.
It also doesn't work in non-VMware environments.

=item *

B<Agent-based discovery> mode collects a richer set of data than
agentless discovery by using the AWS Application Discovery Agent, which
you install on one or more hosts in your data center. The agent
captures infrastructure and application information, including an
inventory of installed software applications, system and process
performance, resource utilization, and network dependencies between
workloads. The information collected by agents is secured at rest and
in transit to the Application Discovery Service database in the cloud.

=back

We recommend that you use agent-based discovery for non-VMware
environments and to collect information about software and software
dependencies. You can also run agent-based and agentless discovery
simultaneously. Use agentless discovery to quickly complete the initial
infrastructure assessment and then install agents on select hosts.

Application Discovery Service integrates with application discovery
solutions from AWS Partner Network (APN) partners. Third-party
application discovery tools can query Application Discovery Service and
write to the Application Discovery Service database using a public API.
You can then import the data into either a visualization tool or
cloud-migration solution.

Application Discovery Service doesn't gather sensitive information. All
data is handled according to the AWS Privacy Policy
(http://aws.amazon.com/privacy/). You can operate Application Discovery
Service offline to inspect collected data before it is shared with the
service.

This API reference provides descriptions, syntax, and usage examples
for each of the actions and data types for Application Discovery
Service. The topic for each action shows the API request parameters and
the response. Alternatively, you can use one of the AWS SDKs to access
an API that is tailored to the programming language or platform that
you're using. For more information, see AWS SDKs
(http://aws.amazon.com/tools/#SDKs).

This guide is intended for use with the I<AWS Application Discovery
Service User Guide>
(http://docs.aws.amazon.com/application-discovery/latest/userguide/).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/discovery-2015-11-01>


=head1 METHODS

=head2 AssociateConfigurationItemsToApplication

=over

=item ApplicationConfigurationId => Str

=item ConfigurationIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Discovery::AssociateConfigurationItemsToApplication>

Returns: a L<Paws::Discovery::AssociateConfigurationItemsToApplicationResponse> instance

Associates one or more configuration items with an application.


=head2 BatchDeleteImportData

=over

=item ImportTaskIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Discovery::BatchDeleteImportData>

Returns: a L<Paws::Discovery::BatchDeleteImportDataResponse> instance

Deletes one or more import tasks, each identified by their import ID.
Each import task has a number of records that can identify servers or
applications.

AWS Application Discovery Service has built-in matching logic that will
identify when discovered servers match existing entries that you've
previously discovered, the information for the already-existing
discovered server is updated. When you delete an import task that
contains records that were used to match, the information in those
matched records that comes from the deleted records will also be
deleted.


=head2 CreateApplication

=over

=item Name => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::Discovery::CreateApplication>

Returns: a L<Paws::Discovery::CreateApplicationResponse> instance

Creates an application with the given name and description.


=head2 CreateTags

=over

=item ConfigurationIds => ArrayRef[Str|Undef]

=item Tags => ArrayRef[L<Paws::Discovery::Tag>]


=back

Each argument is described in detail in: L<Paws::Discovery::CreateTags>

Returns: a L<Paws::Discovery::CreateTagsResponse> instance

Creates one or more tags for configuration items. Tags are metadata
that help you categorize IT assets. This API accepts a list of multiple
configuration items.


=head2 DeleteApplications

=over

=item ConfigurationIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Discovery::DeleteApplications>

Returns: a L<Paws::Discovery::DeleteApplicationsResponse> instance

Deletes a list of applications and their associations with
configuration items.


=head2 DeleteTags

=over

=item ConfigurationIds => ArrayRef[Str|Undef]

=item [Tags => ArrayRef[L<Paws::Discovery::Tag>]]


=back

Each argument is described in detail in: L<Paws::Discovery::DeleteTags>

Returns: a L<Paws::Discovery::DeleteTagsResponse> instance

Deletes the association between configuration items and one or more
tags. This API accepts a list of multiple configuration items.


=head2 DescribeAgents

=over

=item [AgentIds => ArrayRef[Str|Undef]]

=item [Filters => ArrayRef[L<Paws::Discovery::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Discovery::DescribeAgents>

Returns: a L<Paws::Discovery::DescribeAgentsResponse> instance

Lists agents or connectors as specified by ID or other filters. All
agents/connectors associated with your user account can be listed if
you call C<DescribeAgents> as is without passing any parameters.


=head2 DescribeConfigurations

=over

=item ConfigurationIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Discovery::DescribeConfigurations>

Returns: a L<Paws::Discovery::DescribeConfigurationsResponse> instance

Retrieves attributes for a list of configuration item IDs.

All of the supplied IDs must be for the same asset type from one of the
following:

=over

=item *

server

=item *

application

=item *

process

=item *

connection

=back

Output fields are specific to the asset type specified. For example,
the output for a I<server> configuration item includes a list of
attributes about the server, such as host name, operating system,
number of network cards, etc.

For a complete list of outputs for each asset type, see Using the
DescribeConfigurations Action
(http://docs.aws.amazon.com/application-discovery/latest/APIReference/discovery-api-queries.html#DescribeConfigurations).


=head2 DescribeContinuousExports

=over

=item [ExportIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Discovery::DescribeContinuousExports>

Returns: a L<Paws::Discovery::DescribeContinuousExportsResponse> instance

Lists exports as specified by ID. All continuous exports associated
with your user account can be listed if you call
C<DescribeContinuousExports> as is without passing any parameters.


=head2 DescribeExportConfigurations

=over

=item [ExportIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Discovery::DescribeExportConfigurations>

Returns: a L<Paws::Discovery::DescribeExportConfigurationsResponse> instance

C<DescribeExportConfigurations> is deprecated.

Use instead C<DescribeExportTasks>
(http://docs.aws.amazon.com/application-discovery/latest/APIReference/API_DescribeExportTasks.html).


=head2 DescribeExportTasks

=over

=item [ExportIds => ArrayRef[Str|Undef]]

=item [Filters => ArrayRef[L<Paws::Discovery::ExportFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Discovery::DescribeExportTasks>

Returns: a L<Paws::Discovery::DescribeExportTasksResponse> instance

Retrieve status of one or more export tasks. You can retrieve the
status of up to 100 export tasks.


=head2 DescribeImportTasks

=over

=item [Filters => ArrayRef[L<Paws::Discovery::ImportTaskFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Discovery::DescribeImportTasks>

Returns: a L<Paws::Discovery::DescribeImportTasksResponse> instance

Returns an array of import tasks for your account, including status
information, times, IDs, the Amazon S3 Object URL for the import file,
and more.


=head2 DescribeTags

=over

=item [Filters => ArrayRef[L<Paws::Discovery::TagFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Discovery::DescribeTags>

Returns: a L<Paws::Discovery::DescribeTagsResponse> instance

Retrieves a list of configuration items that have tags as specified by
the key-value pairs, name and value, passed to the optional parameter
C<filters>.

There are three valid tag filter names:

=over

=item *

tagKey

=item *

tagValue

=item *

configurationId

=back

Also, all configuration items associated with your user account that
have tags can be listed if you call C<DescribeTags> as is without
passing any parameters.


=head2 DisassociateConfigurationItemsFromApplication

=over

=item ApplicationConfigurationId => Str

=item ConfigurationIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Discovery::DisassociateConfigurationItemsFromApplication>

Returns: a L<Paws::Discovery::DisassociateConfigurationItemsFromApplicationResponse> instance

Disassociates one or more configuration items from an application.


=head2 ExportConfigurations

=over

=item  => 


=back

Each argument is described in detail in: L<Paws::Discovery::ExportConfigurations>

Returns: a L<Paws::Discovery::ExportConfigurationsResponse> instance

Deprecated. Use C<StartExportTask> instead.

Exports all discovered configuration data to an Amazon S3 bucket or an
application that enables you to view and evaluate the data. Data
includes tags and tag associations, processes, connections, servers,
and system performance. This API returns an export ID that you can
query using the I<DescribeExportConfigurations> API. The system imposes
a limit of two configuration exports in six hours.


=head2 GetDiscoverySummary






Each argument is described in detail in: L<Paws::Discovery::GetDiscoverySummary>

Returns: a L<Paws::Discovery::GetDiscoverySummaryResponse> instance

Retrieves a short summary of discovered assets.

This API operation takes no request parameters and is called as is at
the command prompt as shown in the example.


=head2 ListConfigurations

=over

=item ConfigurationType => Str

=item [Filters => ArrayRef[L<Paws::Discovery::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [OrderBy => ArrayRef[L<Paws::Discovery::OrderByElement>]]


=back

Each argument is described in detail in: L<Paws::Discovery::ListConfigurations>

Returns: a L<Paws::Discovery::ListConfigurationsResponse> instance

Retrieves a list of configuration items as specified by the value
passed to the required paramater C<configurationType>. Optional
filtering may be applied to refine search results.


=head2 ListServerNeighbors

=over

=item ConfigurationId => Str

=item [MaxResults => Int]

=item [NeighborConfigurationIds => ArrayRef[Str|Undef]]

=item [NextToken => Str]

=item [PortInformationNeeded => Bool]


=back

Each argument is described in detail in: L<Paws::Discovery::ListServerNeighbors>

Returns: a L<Paws::Discovery::ListServerNeighborsResponse> instance

Retrieves a list of servers that are one network hop away from a
specified server.


=head2 StartContinuousExport






Each argument is described in detail in: L<Paws::Discovery::StartContinuousExport>

Returns: a L<Paws::Discovery::StartContinuousExportResponse> instance

Start the continuous flow of agent's discovered data into Amazon
Athena.


=head2 StartDataCollectionByAgentIds

=over

=item AgentIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Discovery::StartDataCollectionByAgentIds>

Returns: a L<Paws::Discovery::StartDataCollectionByAgentIdsResponse> instance

Instructs the specified agents or connectors to start collecting data.


=head2 StartExportTask

=over

=item [EndTime => Str]

=item [ExportDataFormat => ArrayRef[Str|Undef]]

=item [Filters => ArrayRef[L<Paws::Discovery::ExportFilter>]]

=item [StartTime => Str]


=back

Each argument is described in detail in: L<Paws::Discovery::StartExportTask>

Returns: a L<Paws::Discovery::StartExportTaskResponse> instance

Begins the export of discovered data to an S3 bucket.

If you specify C<agentIds> in a filter, the task exports up to 72 hours
of detailed data collected by the identified Application Discovery
Agent, including network, process, and performance details. A time
range for exported agent data may be set by using C<startTime> and
C<endTime>. Export of detailed agent data is limited to five
concurrently running exports.

If you do not include an C<agentIds> filter, summary data is exported
that includes both AWS Agentless Discovery Connector data and summary
data from AWS Discovery Agents. Export of summary data is limited to
two exports per day.


=head2 StartImportTask

=over

=item ImportUrl => Str

=item Name => Str

=item [ClientRequestToken => Str]


=back

Each argument is described in detail in: L<Paws::Discovery::StartImportTask>

Returns: a L<Paws::Discovery::StartImportTaskResponse> instance

Starts an import task, which allows you to import details of your
on-premises environment directly into AWS without having to use the
Application Discovery Service (ADS) tools such as the Discovery
Connector or Discovery Agent. This gives you the option to perform
migration assessment and planning directly from your imported data,
including the ability to group your devices as applications and track
their migration status.

To start an import request, do this:

=over

=item 1.

Download the specially formatted comma separated value (CSV) import
template, which you can find here:
https://s3-us-west-2.amazonaws.com/templates-7cffcf56-bd96-4b1c-b45b-a5b42f282e46/import_template.csv
(https://s3-us-west-2.amazonaws.com/templates-7cffcf56-bd96-4b1c-b45b-a5b42f282e46/import_template.csv).

=item 2.

Fill out the template with your server and application data.

=item 3.

Upload your import file to an Amazon S3 bucket, and make a note of it's
Object URL. Your import file must be in the CSV format.

=item 4.

Use the console or the C<StartImportTask> command with the AWS CLI or
one of the AWS SDKs to import the records from your file.

=back

For more information, including step-by-step procedures, see Migration
Hub Import
(https://docs.aws.amazon.com/application-discovery/latest/userguide/discovery-import.html)
in the I<AWS Application Discovery Service User Guide>.

There are limits to the number of import tasks you can create (and
delete) in an AWS account. For more information, see AWS Application
Discovery Service Limits
(https://docs.aws.amazon.com/application-discovery/latest/userguide/ads_service_limits.html)
in the I<AWS Application Discovery Service User Guide>.


=head2 StopContinuousExport

=over

=item ExportId => Str


=back

Each argument is described in detail in: L<Paws::Discovery::StopContinuousExport>

Returns: a L<Paws::Discovery::StopContinuousExportResponse> instance

Stop the continuous flow of agent's discovered data into Amazon Athena.


=head2 StopDataCollectionByAgentIds

=over

=item AgentIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Discovery::StopDataCollectionByAgentIds>

Returns: a L<Paws::Discovery::StopDataCollectionByAgentIdsResponse> instance

Instructs the specified agents or connectors to stop collecting data.


=head2 UpdateApplication

=over

=item ConfigurationId => Str

=item [Description => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::Discovery::UpdateApplication>

Returns: a L<Paws::Discovery::UpdateApplicationResponse> instance

Updates metadata about an application.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllAgents(sub { },[AgentIds => ArrayRef[Str|Undef], Filters => ArrayRef[L<Paws::Discovery::Filter>], MaxResults => Int, NextToken => Str])

=head2 DescribeAllAgents([AgentIds => ArrayRef[Str|Undef], Filters => ArrayRef[L<Paws::Discovery::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - agentsInfo, passing the object as the first parameter, and the string 'agentsInfo' as the second parameter 

If not, it will return a a L<Paws::Discovery::DescribeAgentsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllContinuousExports(sub { },[ExportIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllContinuousExports([ExportIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - descriptions, passing the object as the first parameter, and the string 'descriptions' as the second parameter 

If not, it will return a a L<Paws::Discovery::DescribeContinuousExportsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllExportConfigurations(sub { },[ExportIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllExportConfigurations([ExportIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - exportsInfo, passing the object as the first parameter, and the string 'exportsInfo' as the second parameter 

If not, it will return a a L<Paws::Discovery::DescribeExportConfigurationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllExportTasks(sub { },[ExportIds => ArrayRef[Str|Undef], Filters => ArrayRef[L<Paws::Discovery::ExportFilter>], MaxResults => Int, NextToken => Str])

=head2 DescribeAllExportTasks([ExportIds => ArrayRef[Str|Undef], Filters => ArrayRef[L<Paws::Discovery::ExportFilter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - exportsInfo, passing the object as the first parameter, and the string 'exportsInfo' as the second parameter 

If not, it will return a a L<Paws::Discovery::DescribeExportTasksResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllTags(sub { },[Filters => ArrayRef[L<Paws::Discovery::TagFilter>], MaxResults => Int, NextToken => Str])

=head2 DescribeAllTags([Filters => ArrayRef[L<Paws::Discovery::TagFilter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - tags, passing the object as the first parameter, and the string 'tags' as the second parameter 

If not, it will return a a L<Paws::Discovery::DescribeTagsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllConfigurations(sub { },ConfigurationType => Str, [Filters => ArrayRef[L<Paws::Discovery::Filter>], MaxResults => Int, NextToken => Str, OrderBy => ArrayRef[L<Paws::Discovery::OrderByElement>]])

=head2 ListAllConfigurations(ConfigurationType => Str, [Filters => ArrayRef[L<Paws::Discovery::Filter>], MaxResults => Int, NextToken => Str, OrderBy => ArrayRef[L<Paws::Discovery::OrderByElement>]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - configurations, passing the object as the first parameter, and the string 'configurations' as the second parameter 

If not, it will return a a L<Paws::Discovery::ListConfigurationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

