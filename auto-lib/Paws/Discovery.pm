package Paws::Discovery;
  use Moose;
  sub service { 'discovery' }
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
  


  sub operations { qw/AssociateConfigurationItemsToApplication CreateApplication CreateTags DeleteApplications DeleteTags DescribeAgents DescribeConfigurations DescribeExportConfigurations DescribeExportTasks DescribeTags DisassociateConfigurationItemsFromApplication ExportConfigurations GetDiscoverySummary ListConfigurations ListServerNeighbors StartDataCollectionByAgentIds StartExportTask StopDataCollectionByAgentIds UpdateApplication / }

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

Your AWS account must be granted access to Application Discovery
Service, a process called I<whitelisting>. This is true for AWS
partners and customers alike. To request access, sign up for
Application Discovery Service
(http://aws.amazon.com/application-discovery/).

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

=head1 METHODS

=head2 AssociateConfigurationItemsToApplication

=over

=item ApplicationConfigurationId => Str

=item ConfigurationIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Discovery::AssociateConfigurationItemsToApplication>

Returns: a L<Paws::Discovery::AssociateConfigurationItemsToApplicationResponse> instance

Associates one or more configuration items with an application.


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

Lists agents or the Connector by ID or lists all agents/Connectors
associated with your user account if you did not specify an ID.


=head2 DescribeConfigurations

=over

=item ConfigurationIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Discovery::DescribeConfigurations>

Returns: a L<Paws::Discovery::DescribeConfigurationsResponse> instance

Retrieves attributes for a list of configuration item IDs. All of the
supplied IDs must be for the same asset type (server, application,
process, or connection). Output fields are specific to the asset type
selected. For example, the output for a I<server> configuration item
includes a list of attributes about the server, such as host name,
operating system, and number of network cards.

For a complete list of outputs for each asset type, see Using the
DescribeConfigurations Action
(http://docs.aws.amazon.com/application-discovery/latest/APIReference/discovery-api-queries.html#DescribeConfigurations).


=head2 DescribeExportConfigurations

=over

=item [ExportIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Discovery::DescribeExportConfigurations>

Returns: a L<Paws::Discovery::DescribeExportConfigurationsResponse> instance

Deprecated. Use C<DescribeExportTasks> instead.

Retrieves the status of a given export process. You can retrieve status
from a maximum of 100 processes.


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


=head2 DescribeTags

=over

=item [Filters => ArrayRef[L<Paws::Discovery::TagFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Discovery::DescribeTags>

Returns: a L<Paws::Discovery::DescribeTagsResponse> instance

Retrieves a list of configuration items that are tagged with a specific
tag. Or retrieves a list of all tags assigned to a specific
configuration item.


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

Retrieves a list of configuration items according to criteria that you
specify in a filter. The filter criteria identifies the relationship
requirements.


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




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

