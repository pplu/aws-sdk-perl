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

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller', 'Paws::Net::JsonResponse';

  
  sub CreateTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Discovery::CreateTags', @_);
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
  sub DescribeTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Discovery::DescribeTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExportConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Discovery::ExportConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Discovery::ListConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartDataCollectionByAgentIds {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Discovery::StartDataCollectionByAgentIds', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopDataCollectionByAgentIds {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Discovery::StopDataCollectionByAgentIds', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CreateTags DeleteTags DescribeAgents DescribeConfigurations DescribeExportConfigurations DescribeTags ExportConfigurations ListConfigurations StartDataCollectionByAgentIds StopDataCollectionByAgentIds / }

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

The AWS Application Discovery Service helps Systems Integrators quickly
and reliably plan application migration projects by automatically
identifying applications running in on-premises data centers, their
associated dependencies, and their performance profile.

Planning data center migrations can involve thousands of workloads that
are often deeply interdependent. Application discovery and dependency
mapping are important early first steps in the migration process, but
difficult to perform at scale due to the lack of automated tools.

The AWS Application Discovery Service automatically collects
configuration and usage data from servers to develop a list of
applications, how they perform, and how they are interdependent. This
information is securely retained in an AWS Application Discovery
Service database which you can export as a CSV file into your preferred
visualization tool or cloud migration solution to help reduce the
complexity and time in planning your cloud migration.

The Application Discovery Service is currently available for preview.
Only customers who are engaged with AWS Professional Services or a
certified AWS partner can use the service. To see the list of certified
partners and request access to the Application Discovery Service,
complete the following preview form.

This API reference provides descriptions, syntax, and usage examples
for each of the actions and data types for the Discovery Service. The
topic for each action shows the API request parameters and the
response. Alternatively, you can use one of the AWS SDKs to access an
API that is tailored to the programming language or platform that
you're using. For more information, see AWS SDKs.

This guide is intended for use with the I<AWS Discovery Service User
Guide> .

The following are short descriptions of each API action, organized by
function.

B<Managing AWS Agents Using the Application Discovery Service>

An AWS agent is software that you install on on-premises servers and
virtual machines that are targeted for discovery and migration. Agents
run on Linux and Windows Server and collect server configuration and
activity information about your applications and infrastructure.
Specifically, agents collect the following information and send it to
the Application Discovery Service using Secure Sockets Layer (SSL)
encryption:

=over

=item *

User information (user name, home directory)

=item *

Group information (name)

=item *

List of installed packages

=item *

List of kernel modules

=item *

All create and stop process events

=item *

DNS queries

=item *

NIC information

=item *

TCP/UDP process listening ports

=item *

TCPV4/V6 connections

=item *

Operating system information

=item *

System performance

=item *

Process performance

=back

The Application Discovery Service API includes the following actions to
manage AWS agents:

=over

=item *

I<StartDataCollectionByAgentIds>: Instructs the specified agents to
start collecting data. The Application Discovery Service takes several
minutes to receive and process data after you initiate data collection.

=item *

I<StopDataCollectionByAgentIds>: Instructs the specified agents to stop
collecting data.

=item *

I<DescribeAgents>: Lists AWS agents by ID or lists all agents
associated with your user account if you did not specify an agent ID.
The output includes agent IDs, IP addresses, media access control (MAC)
addresses, agent health, host name where the agent resides, and the
version number of each agent.

=back

B<Querying Configuration Items>

A I<configuration item> is an IT asset that was discovered in your data
center by an AWS agent. When you use the Application Discovery Service,
you can specify filters and query specific configuration items. The
service supports Server, Process, and Connection configuration items.
This means you can specify a value for the following keys and query
your IT assets:

B<Server>

=over

=item *

server.HostName

=item *

server.osName

=item *

server.osVersion

=item *

server.configurationId

=item *

server.agentId

=back

B<Process>

=over

=item *

process.name

=item *

process.CommandLine

=item *

process.configurationId

=item *

server.hostName

=item *

server.osName

=item *

server.osVersion

=item *

server.configurationId

=item *

server.agentId

=back

B<Connection>

=over

=item *

connection.sourceIp

=item *

connection.sourcePort

=item *

connection.destinationIp

=item *

connection.destinationPort

=item *

sourceProcess.configurationId

=item *

sourceProcess.commandLine

=item *

sourceProcess.name

=item *

destinationProcessId.configurationId

=item *

destinationProcess.commandLine

=item *

destinationProcess.name

=item *

sourceServer.configurationId

=item *

sourceServer.hostName

=item *

sourceServer.osName

=item *

sourceServer.osVersion

=item *

destinationServer.configurationId

=item *

destinationServer.hostName

=item *

destinationServer.osName

=item *

destinationServer.osVersion

=back

The Application Discovery Service includes the following actions for
querying configuration items.

=over

=item *

I<DescribeConfigurations>: Retrieves a list of attributes for a
specific configuration ID. For example, the output for a I<server>
configuration item includes a list of attributes about the server,
including host name, operating system, number of network cards, etc.

=item *

I<ListConfigurations>: Retrieves a list of configuration items
according to the criteria you specify in a filter. The filter criteria
identify relationship requirements. For example, you can specify filter
criteria of process.name with values of I<nginx> and I<apache>.

=back

B<Tagging Discovered Configuration Items>

You can tag discovered configuration items. Tags are metadata that help
you categorize IT assets in your data center. Tags use a
I<key>-I<value> format. For example, C<{"key": "serverType", "value":
"webServer"}>.

=over

=item *

I<CreateTags>: Creates one or more tags for a configuration items.

=item *

I<DescribeTags>: Retrieves a list of configuration items that are
tagged with a specific tag. I<Or>, retrieves a list of all tags
assigned to a specific configuration item.

=item *

I<DeleteTags>: Deletes the association between a configuration item and
one or more tags.

=back

B<Exporting Data>

You can export data as a CSV file to an Amazon S3 bucket or into your
preferred visualization tool or cloud migration solution to help reduce
the complexity and time in planning your cloud migration.

=over

=item *

I<ExportConfigurations>: Exports all discovered configuration data to
an Amazon S3 bucket. Data includes tags and tag associations,
processes, connections, servers, and system performance. This API
returns an export ID which you can query using the GetExportStatus API.

=item *

I<DescribeExportConfigurations>: Gets the status of the data export.
When the export is complete, the service returns an Amazon S3 URL where
you can download CSV files that include the data.

=back


=head1 METHODS

=head2 CreateTags(ConfigurationIds => ArrayRef[Str|Undef], Tags => ArrayRef[L<Paws::Discovery::Tag>])

Each argument is described in detail in: L<Paws::Discovery::CreateTags>

Returns: a L<Paws::Discovery::CreateTagsResponse> instance

  Creates one or more tags for configuration items. Tags are metadata
that help you categorize IT assets. This API accepts a list of multiple
configuration items.


=head2 DeleteTags(ConfigurationIds => ArrayRef[Str|Undef], [Tags => ArrayRef[L<Paws::Discovery::Tag>]])

Each argument is described in detail in: L<Paws::Discovery::DeleteTags>

Returns: a L<Paws::Discovery::DeleteTagsResponse> instance

  Deletes the association between configuration items and one or more
tags. This API accepts a list of multiple configuration items.


=head2 DescribeAgents([AgentIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::Discovery::DescribeAgents>

Returns: a L<Paws::Discovery::DescribeAgentsResponse> instance

  Lists AWS agents by ID or lists all agents associated with your user
account if you did not specify an agent ID.


=head2 DescribeConfigurations(ConfigurationIds => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::Discovery::DescribeConfigurations>

Returns: a L<Paws::Discovery::DescribeConfigurationsResponse> instance

  Retrieves a list of attributes for a specific configuration ID. For
example, the output for a I<server> configuration item includes a list
of attributes about the server, including host name, operating system,
number of network cards, etc.


=head2 DescribeExportConfigurations([ExportIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::Discovery::DescribeExportConfigurations>

Returns: a L<Paws::Discovery::DescribeExportConfigurationsResponse> instance

  Retrieves the status of a given export process. You can retrieve status
from a maximum of 100 processes.


=head2 DescribeTags([Filters => ArrayRef[L<Paws::Discovery::TagFilter>], MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::Discovery::DescribeTags>

Returns: a L<Paws::Discovery::DescribeTagsResponse> instance

  Retrieves a list of configuration items that are tagged with a specific
tag. Or retrieves a list of all tags assigned to a specific
configuration item.


=head2 ExportConfigurations( => )

Each argument is described in detail in: L<Paws::Discovery::ExportConfigurations>

Returns: a L<Paws::Discovery::ExportConfigurationsResponse> instance

  Exports all discovered configuration data to an Amazon S3 bucket or an
application that enables you to view and evaluate the data. Data
includes tags and tag associations, processes, connections, servers,
and system performance. This API returns an export ID which you can
query using the I<GetExportStatus> API. The system imposes a limit of
two configuration exports in six hours.


=head2 ListConfigurations(ConfigurationType => Str, [Filters => ArrayRef[L<Paws::Discovery::Filter>], MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::Discovery::ListConfigurations>

Returns: a L<Paws::Discovery::ListConfigurationsResponse> instance

  Retrieves a list of configurations items according to the criteria you
specify in a filter. The filter criteria identify relationship
requirements.


=head2 StartDataCollectionByAgentIds(AgentIds => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::Discovery::StartDataCollectionByAgentIds>

Returns: a L<Paws::Discovery::StartDataCollectionByAgentIdsResponse> instance

  Instructs the specified agents to start collecting data. Agents can
reside on host servers or virtual machines in your data center.


=head2 StopDataCollectionByAgentIds(AgentIds => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::Discovery::StopDataCollectionByAgentIds>

Returns: a L<Paws::Discovery::StopDataCollectionByAgentIdsResponse> instance

  Instructs the specified agents to stop collecting data.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

