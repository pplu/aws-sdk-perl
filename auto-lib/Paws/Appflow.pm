package Paws::Appflow;
  use Moose;
  sub service { 'appflow' }
  sub signing_name { 'appflow' }
  sub version { '2020-08-23' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateConnectorProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Appflow::CreateConnectorProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFlow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Appflow::CreateFlow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteConnectorProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Appflow::DeleteConnectorProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFlow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Appflow::DeleteFlow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeConnectorEntity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Appflow::DescribeConnectorEntity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeConnectorProfiles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Appflow::DescribeConnectorProfiles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeConnectors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Appflow::DescribeConnectors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFlow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Appflow::DescribeFlow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFlowExecutionRecords {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Appflow::DescribeFlowExecutionRecords', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListConnectorEntities {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Appflow::ListConnectorEntities', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFlows {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Appflow::ListFlows', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Appflow::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartFlow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Appflow::StartFlow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopFlow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Appflow::StopFlow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Appflow::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Appflow::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateConnectorProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Appflow::UpdateConnectorProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFlow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Appflow::UpdateFlow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CreateConnectorProfile CreateFlow DeleteConnectorProfile DeleteFlow DescribeConnectorEntity DescribeConnectorProfiles DescribeConnectors DescribeFlow DescribeFlowExecutionRecords ListConnectorEntities ListFlows ListTagsForResource StartFlow StopFlow TagResource UntagResource UpdateConnectorProfile UpdateFlow / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Appflow - Perl Interface to AWS Amazon Appflow

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Appflow');
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

Welcome to the Amazon AppFlow API reference. This guide is for
developers who need detailed information about the Amazon AppFlow API
operations, data types, and errors.

Amazon AppFlow is a fully managed integration service that enables you
to securely transfer data between software as a service (SaaS)
applications like Salesforce, Marketo, Slack, and ServiceNow, and AWS
services like Amazon S3 and Amazon Redshift.

Use the following links to get started on the Amazon AppFlow API:

=over

=item *

Actions
(https://docs.aws.amazon.com/appflow/1.0/APIReference/API_Operations.html):
An alphabetical list of all Amazon AppFlow API operations.

=item *

Data types
(https://docs.aws.amazon.com/appflow/1.0/APIReference/API_Types.html):
An alphabetical list of all Amazon AppFlow data types.

=item *

Common parameters
(https://docs.aws.amazon.com/appflow/1.0/APIReference/CommonParameters.html):
Parameters that all Query operations can use.

=item *

Common errors
(https://docs.aws.amazon.com/appflow/1.0/APIReference/CommonErrors.html):
Client and server errors that all operations can return.

=back

If you're new to Amazon AppFlow, we recommend that you review the
Amazon AppFlow User Guide
(https://docs.aws.amazon.com/appflow/latest/userguide/what-is-appflow.html).

Amazon AppFlow API users can use vendor-specific mechanisms for OAuth,
and include applicable OAuth attributes (such as C<auth-code> and
C<redirecturi>) with the connector-specific
C<ConnectorProfileProperties> when creating a new connector profile
using Amazon AppFlow API operations. For example, Salesforce users can
refer to the I<Authorize Apps with OAuth>
(https://help.salesforce.com/articleView?id=remoteaccess_authenticate.htm)
documentation.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23>


=head1 METHODS

=head2 CreateConnectorProfile

=over

=item ConnectionMode => Str

=item ConnectorProfileConfig => L<Paws::Appflow::ConnectorProfileConfig>

=item ConnectorProfileName => Str

=item ConnectorType => Str

=item [KmsArn => Str]


=back

Each argument is described in detail in: L<Paws::Appflow::CreateConnectorProfile>

Returns: a L<Paws::Appflow::CreateConnectorProfileResponse> instance

Creates a new connector profile associated with your AWS account. There
is a soft quota of 100 connector profiles per AWS account. If you need
more connector profiles than this quota allows, you can submit a
request to the Amazon AppFlow team through the Amazon AppFlow support
channel.


=head2 CreateFlow

=over

=item DestinationFlowConfigList => ArrayRef[L<Paws::Appflow::DestinationFlowConfig>]

=item FlowName => Str

=item SourceFlowConfig => L<Paws::Appflow::SourceFlowConfig>

=item Tasks => ArrayRef[L<Paws::Appflow::Task>]

=item TriggerConfig => L<Paws::Appflow::TriggerConfig>

=item [Description => Str]

=item [KmsArn => Str]

=item [Tags => L<Paws::Appflow::TagMap>]


=back

Each argument is described in detail in: L<Paws::Appflow::CreateFlow>

Returns: a L<Paws::Appflow::CreateFlowResponse> instance

Enables your application to create a new flow using Amazon AppFlow. You
must create a connector profile before calling this API. Please note
that the Request Syntax below shows syntax for multiple destinations,
however, you can only transfer data to one item in this list at a time.
Amazon AppFlow does not currently support flows to multiple
destinations at once.


=head2 DeleteConnectorProfile

=over

=item ConnectorProfileName => Str

=item [ForceDelete => Bool]


=back

Each argument is described in detail in: L<Paws::Appflow::DeleteConnectorProfile>

Returns: a L<Paws::Appflow::DeleteConnectorProfileResponse> instance

Enables you to delete an existing connector profile.


=head2 DeleteFlow

=over

=item FlowName => Str

=item [ForceDelete => Bool]


=back

Each argument is described in detail in: L<Paws::Appflow::DeleteFlow>

Returns: a L<Paws::Appflow::DeleteFlowResponse> instance

Enables your application to delete an existing flow. Before deleting
the flow, Amazon AppFlow validates the request by checking the flow
configuration and status. You can delete flows one at a time.


=head2 DescribeConnectorEntity

=over

=item ConnectorEntityName => Str

=item [ConnectorProfileName => Str]

=item [ConnectorType => Str]


=back

Each argument is described in detail in: L<Paws::Appflow::DescribeConnectorEntity>

Returns: a L<Paws::Appflow::DescribeConnectorEntityResponse> instance

Provides details regarding the entity used with the connector, with a
description of the data model for each entity.


=head2 DescribeConnectorProfiles

=over

=item [ConnectorProfileNames => ArrayRef[Str|Undef]]

=item [ConnectorType => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Appflow::DescribeConnectorProfiles>

Returns: a L<Paws::Appflow::DescribeConnectorProfilesResponse> instance

Returns a list of C<connector-profile> details matching the provided
C<connector-profile> names and C<connector-types>. Both input lists are
optional, and you can use them to filter the result.

If no names or C<connector-types> are provided, returns all connector
profiles in a paginated form. If there is no match, this operation
returns an empty list.


=head2 DescribeConnectors

=over

=item [ConnectorTypes => ArrayRef[Str|Undef]]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Appflow::DescribeConnectors>

Returns: a L<Paws::Appflow::DescribeConnectorsResponse> instance

Describes the connectors vended by Amazon AppFlow for specified
connector types. If you don't specify a connector type, this operation
describes all connectors vended by Amazon AppFlow. If there are more
connectors than can be returned in one page, the response contains a
C<nextToken> object, which can be be passed in to the next call to the
C<DescribeConnectors> API operation to retrieve the next page.


=head2 DescribeFlow

=over

=item FlowName => Str


=back

Each argument is described in detail in: L<Paws::Appflow::DescribeFlow>

Returns: a L<Paws::Appflow::DescribeFlowResponse> instance

Provides a description of the specified flow.


=head2 DescribeFlowExecutionRecords

=over

=item FlowName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Appflow::DescribeFlowExecutionRecords>

Returns: a L<Paws::Appflow::DescribeFlowExecutionRecordsResponse> instance

Fetches the execution history of the flow.


=head2 ListConnectorEntities

=over

=item [ConnectorProfileName => Str]

=item [ConnectorType => Str]

=item [EntitiesPath => Str]


=back

Each argument is described in detail in: L<Paws::Appflow::ListConnectorEntities>

Returns: a L<Paws::Appflow::ListConnectorEntitiesResponse> instance

Returns the list of available connector entities supported by Amazon
AppFlow. For example, you can query Salesforce for I<Account> and
I<Opportunity> entities, or query ServiceNow for the I<Incident>
entity.


=head2 ListFlows

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Appflow::ListFlows>

Returns: a L<Paws::Appflow::ListFlowsResponse> instance

Lists all of the flows associated with your account.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Appflow::ListTagsForResource>

Returns: a L<Paws::Appflow::ListTagsForResourceResponse> instance

Retrieves the tags that are associated with a specified flow.


=head2 StartFlow

=over

=item FlowName => Str


=back

Each argument is described in detail in: L<Paws::Appflow::StartFlow>

Returns: a L<Paws::Appflow::StartFlowResponse> instance

Activates an existing flow. For on-demand flows, this operation runs
the flow immediately. For schedule and event-triggered flows, this
operation activates the flow.


=head2 StopFlow

=over

=item FlowName => Str


=back

Each argument is described in detail in: L<Paws::Appflow::StopFlow>

Returns: a L<Paws::Appflow::StopFlowResponse> instance

Deactivates the existing flow. For on-demand flows, this operation
returns an C<unsupportedOperationException> error message. For schedule
and event-triggered flows, this operation deactivates the flow.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::Appflow::TagMap>


=back

Each argument is described in detail in: L<Paws::Appflow::TagResource>

Returns: a L<Paws::Appflow::TagResourceResponse> instance

Applies a tag to the specified flow.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Appflow::UntagResource>

Returns: a L<Paws::Appflow::UntagResourceResponse> instance

Removes a tag from the specified flow.


=head2 UpdateConnectorProfile

=over

=item ConnectionMode => Str

=item ConnectorProfileConfig => L<Paws::Appflow::ConnectorProfileConfig>

=item ConnectorProfileName => Str


=back

Each argument is described in detail in: L<Paws::Appflow::UpdateConnectorProfile>

Returns: a L<Paws::Appflow::UpdateConnectorProfileResponse> instance

Updates a given connector profile associated with your account.


=head2 UpdateFlow

=over

=item DestinationFlowConfigList => ArrayRef[L<Paws::Appflow::DestinationFlowConfig>]

=item FlowName => Str

=item Tasks => ArrayRef[L<Paws::Appflow::Task>]

=item TriggerConfig => L<Paws::Appflow::TriggerConfig>

=item [Description => Str]

=item [SourceFlowConfig => L<Paws::Appflow::SourceFlowConfig>]


=back

Each argument is described in detail in: L<Paws::Appflow::UpdateFlow>

Returns: a L<Paws::Appflow::UpdateFlowResponse> instance

Updates an existing flow.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

