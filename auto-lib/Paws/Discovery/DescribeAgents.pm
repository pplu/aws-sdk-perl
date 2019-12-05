
package Paws::Discovery::DescribeAgents;
  use Moose;
  has AgentIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'agentIds' );
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::Discovery::Filter]', traits => ['NameInRequest'], request_name => 'filters' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAgents');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Discovery::DescribeAgentsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::DescribeAgents - Arguments for method DescribeAgents on L<Paws::Discovery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAgents on the
L<AWS Application Discovery Service|Paws::Discovery> service. Use the attributes of this class
as arguments to method DescribeAgents.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAgents.

=head1 SYNOPSIS

    my $discovery = Paws->service('Discovery');
    my $DescribeAgentsResponse = $discovery->DescribeAgents(
      AgentIds => [ 'MyAgentId', ... ],    # OPTIONAL
      Filters  => [
        {
          Condition => 'MyCondition',
          Name      => 'MyString',
          Values    => [ 'MyFilterValue', ... ],

        },
        ...
      ],                                   # OPTIONAL
      MaxResults => 1,                     # OPTIONAL
      NextToken  => 'MyNextToken',         # OPTIONAL
    );

    # Results:
    my $AgentsInfo = $DescribeAgentsResponse->AgentsInfo;
    my $NextToken  = $DescribeAgentsResponse->NextToken;

    # Returns a L<Paws::Discovery::DescribeAgentsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/discovery/DescribeAgents>

=head1 ATTRIBUTES


=head2 AgentIds => ArrayRef[Str|Undef]

The agent or the Connector IDs for which you want information. If you
specify no IDs, the system returns information about all
agents/Connectors associated with your AWS user account.



=head2 Filters => ArrayRef[L<Paws::Discovery::Filter>]

You can filter the request using various logical operators and a
I<key>-I<value> format. For example:

C<{"key": "collectionStatus", "value": "STARTED"}>



=head2 MaxResults => Int

The total number of agents/Connectors to return in a single page of
output. The maximum value is 100.



=head2 NextToken => Str

Token to retrieve the next set of results. For example, if you
previously specified 100 IDs for C<DescribeAgentsRequest$agentIds> but
set C<DescribeAgentsRequest$maxResults> to 10, you received a set of 10
results along with a token. Use that token in this query to get the
next set of 10.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAgents in L<Paws::Discovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

