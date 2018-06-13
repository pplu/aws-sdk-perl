
package Paws::Discovery::StartDataCollectionByAgentIds;
  use Moose;
  has AgentIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'agentIds' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartDataCollectionByAgentIds');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Discovery::StartDataCollectionByAgentIdsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::StartDataCollectionByAgentIds - Arguments for method StartDataCollectionByAgentIds on L<Paws::Discovery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartDataCollectionByAgentIds on the
L<AWS Application Discovery Service|Paws::Discovery> service. Use the attributes of this class
as arguments to method StartDataCollectionByAgentIds.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartDataCollectionByAgentIds.

=head1 SYNOPSIS

    my $discovery = Paws->service('Discovery');
    my $StartDataCollectionByAgentIdsResponse =
      $discovery->StartDataCollectionByAgentIds(
      AgentIds => [ 'MyAgentId', ... ],

      );

    # Results:
    my $AgentsConfigurationStatus =
      $StartDataCollectionByAgentIdsResponse->AgentsConfigurationStatus;

   # Returns a L<Paws::Discovery::StartDataCollectionByAgentIdsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/discovery/StartDataCollectionByAgentIds>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AgentIds => ArrayRef[Str|Undef]

The IDs of the agents or connectors from which to start collecting
data. If you send a request to an agent/connector ID that you do not
have permission to contact, according to your AWS account, the service
does not throw an exception. Instead, it returns the error in the
I<Description> field. If you send a request to multiple
agents/connectors and you do not have permission to contact some of
those agents/connectors, the system does not throw an exception.
Instead, the system shows C<Failed> in the I<Description> field.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartDataCollectionByAgentIds in L<Paws::Discovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

