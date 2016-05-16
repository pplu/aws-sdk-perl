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
  sub GetConfigurationAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Discovery::GetConfigurationAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetExportStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Discovery::GetExportStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Discovery::ListConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Discovery::RemoveConfiguration', @_);
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

  sub operations { qw/CreateTags DeleteTags DescribeAgents DescribeTags ExportConfigurations GetConfigurationAttributes GetExportStatus ListConfigurations RemoveConfiguration StartDataCollectionByAgentIds StopDataCollectionByAgentIds / }

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

This is the AWS Discovery Service API Reference. The AWS Discovery
Service streamlines the process of migrating to Amazon Web Services by
helping you identify assets in your data center, including servers,
virtual machines, applications, application dependencies, and network
infrastructure. You can use this information to find the workloads that
make up an application, analyze dependencies, and build migration
strategies. The service also collects performance data about your
workloads which you can use to assess migration outcomes.

This API reference provides descriptions, syntax, and usage examples
for each of the actions and data types for the Discovery Service. The
topic for each action shows the API request parameters and the
response. Alternatively, you can use one of the AWS SDKs to access an
API that's tailored to the programming language or platform that you're
using. For more information, see AWS SDKs.

This guide is intended for use with the AWS Discovery Service user
guide.

The following are short descriptions of each API action, organized by
function.

B<Managing AWS Agents>

The AWS agent is an Amazon application that you install on servers and
virtual machines in your data center or on Amazon EC2 instances. The
agent captures server configuration and activity information (including
hardware profile, network, file system, and process activity) and sends
this data to the AWS Application Discovery Service. The Discovery
Service processes this data and maps the application dependencies for
your workloads.

=over

=item *

I<StartDataCollectionByAgentIds>: Instructs the specified agents to
start collecting data. Agents can reside on host servers or virtual
machines in your data center or on AWS EC2 instances.

=item *

I<StopDataCollectionByAgentIds>: Instructs the specified agents to stop
collecting data.

=item *

I<DescribeAgents>: Lists AWS agents by ID or lists all agents
associated with your user account if you did not specify an agent ID.
The output includes agent IDs, IP addresses, MAC addresses, agent
health, host name where the agent resides, and the version number of
each agent.

=back

B<Querying Configuration Items>

A I<configuration item> is an IT asset that was discovered in your data
center by an AWS agent. With the Discovery Service, you can specify
filters and query specific configuration items. For example, using this
API, you could create a filter to query for a process configuration
item named apache and an operating system configuration item named
Ubuntu.

=over

=item *

I<GetConfigurationAttributes>: Retrieves a list of attributes for a
specific configuration ID. For example, the output for a I<server>
configuration item includes a list of attributes about the server,
including host name, operating system, number of network cards, etc.

=item *

I<ListConfigurations>: Retrieves a list of configurations items
according to the criteria you specify in a filter. The filter criteria
identify relationship requirements. For example, the following filter
specifies criteria of process.name and values of I<nginx> and
I<apache>.

C<ConfigurationType = Process Filters = [WebServerCriteria]
WebServerCriteria = { E<lsquo>keyE<rsquo> : process.name,
E<lsquo>valuesE<rsquo> : [ E<lsquo>nginxE<rsquo>,
E<lsquo>apacheE<rsquo> ], E<lsquo>conditionE<rsquo> :
E<lsquo>containsE<rsquo> }>

=back

B<Tagging Discovered Configuration Items>

You can tag discovered configuration items. Tags are metadata that help
you categorize IT assets in your data center. Tags use a
I<key>,I<value> format. For example, C<{"key": "serverType", "value":
"webServer"}>.

=over

=item *

I<CreateTags>: Creates one or more tags for a configuration item. Tags
are metadata that help you categorize IT assets.

=item *

I<DescribeTags>: Retrieve a list of configuration items that are tagged
with a specific tag. Or retrieve a list all tags assigned to a specific
configuration item.

=item *

I<DeleteTags>: Deletes one or more tags associated with a configuration
item.

=back

B<Exporting Data>

You can export discovered data to an Amazon S3 bucket in the form of
CSV files.

=over

=item *

I<ExportConfigurations>: Exports all discovered configuration data to
an Amazon S3 bucket. Data includes processes, connections, servers, and
system performance.

=item *

I<GetExportStatus>: Gets the status of the data export. When the export
is complete, the service returns an Amazon S3 URL where you can
download CSV files that include the data.

=back


=head1 METHODS

=head2 CreateTags(ConfigurationIds => ArrayRef[Str], Tags => ArrayRef[L<Paws::Discovery::Tag>])

Each argument is described in detail in: L<Paws::Discovery::CreateTags>

Returns: a L<Paws::Discovery::CreateTagsResponse> instance

  Creates one or more tags for a configuration item. Tags are metadata
that help you categorize IT assets.


=head2 DeleteTags(ConfigurationIds => ArrayRef[Str], [Tags => ArrayRef[L<Paws::Discovery::Tag>]])

Each argument is described in detail in: L<Paws::Discovery::DeleteTags>

Returns: a L<Paws::Discovery::DeleteTagsResponse> instance

  Deletes one or more tags associated with a configuration item.


=head2 DescribeAgents([AgentIds => ArrayRef[Str], MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::Discovery::DescribeAgents>

Returns: a L<Paws::Discovery::DescribeAgentsResponse> instance

  Lists AWS agents by ID or lists all agents associated with your user
account if you did not specify an agent ID.


=head2 DescribeTags([Filter => ArrayRef[L<Paws::Discovery::TagFilter>], MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::Discovery::DescribeTags>

Returns: a L<Paws::Discovery::DescribeTagsResponse> instance

  Retrieve a list of configuration items that are tagged with a specific
tag. Or retrieve a list all tags assigned to a specific configuration
item.


=head2 ExportConfigurations( => )

Each argument is described in detail in: L<Paws::Discovery::ExportConfigurations>

Returns: a L<Paws::Discovery::ExportConfigurationsResponse> instance

  Exports the selected configurations to an Amazon S3 bucket.


=head2 GetConfigurationAttributes(ConfigurationIds => ArrayRef[Str])

Each argument is described in detail in: L<Paws::Discovery::GetConfigurationAttributes>

Returns: a L<Paws::Discovery::GetConfigurationAttributesResponse> instance

  Retrieve a list of attributes for a specific configuration ID. For
example, the output for a I<server> configuration item includes a list
of attributes about the server, including host name, operating system,
number of network cards, etc.


=head2 GetExportStatus(ExportId => Str)

Each argument is described in detail in: L<Paws::Discovery::GetExportStatus>

Returns: a L<Paws::Discovery::GetExportStatusResponse> instance

  Retrieves the status of a given export process.


=head2 ListConfigurations(ConfigurationType => Str, [Filters => ArrayRef[L<Paws::Discovery::Filter>], MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::Discovery::ListConfigurations>

Returns: a L<Paws::Discovery::ListConfigurationsResponse> instance

  Retrieve a list of configurations items according to the criteria you
specify in a filter. The filter criteria identify relationship
requirements.


=head2 RemoveConfiguration(ConfigurationId => Str)

Each argument is described in detail in: L<Paws::Discovery::RemoveConfiguration>

Returns: a L<Paws::Discovery::RemoveConfigurationResponse> instance

  


=head2 StartDataCollectionByAgentIds(AgentIds => ArrayRef[Str])

Each argument is described in detail in: L<Paws::Discovery::StartDataCollectionByAgentIds>

Returns: a L<Paws::Discovery::StartDataCollectionByAgentIdsResponse> instance

  Instructs the specified agents to start collecting data. Agents can
reside on host servers or virtual machines in your data center or on
AWS EC2 instances.


=head2 StopDataCollectionByAgentIds(AgentIds => ArrayRef[Str])

Each argument is described in detail in: L<Paws::Discovery::StopDataCollectionByAgentIds>

Returns: a L<Paws::Discovery::StopDataCollectionByAgentIdsResponse> instance

  Instructs the specified agents to stop collecting data.


=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

