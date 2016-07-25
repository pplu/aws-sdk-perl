
package Paws::Discovery::StartDataCollectionByAgentIds;
  use Moose;
  has AgentIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'agentIds' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartDataCollectionByAgentIds');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Discovery::StartDataCollectionByAgentIdsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::StartDataCollectionByAgentIds - Arguments for method StartDataCollectionByAgentIds on Paws::Discovery

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartDataCollectionByAgentIds on the 
AWS Application Discovery Service service. Use the attributes of this class
as arguments to method StartDataCollectionByAgentIds.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartDataCollectionByAgentIds.

As an example:

  $service_obj->StartDataCollectionByAgentIds(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AgentIds => ArrayRef[Str]

The IDs of the agents that you want to start collecting data. If you
send a request to an AWS agent ID that you do not have permission to
contact, according to your AWS account, the service does not throw an
exception. Instead, it returns the error in the I<Description> field.
If you send a request to multiple agents and you do not have permission
to contact some of those agents, the system does not throw an
exception. Instead, the system shows C<Failed> in the I<Description>
field.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartDataCollectionByAgentIds in L<Paws::Discovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

