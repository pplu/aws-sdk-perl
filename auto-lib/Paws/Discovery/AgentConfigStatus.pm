package Paws::Discovery::AgentConfigStatus;
  use Moose;
  has AgentId => (is => 'ro', isa => 'Str', xmlname => 'agentId', request_name => 'agentId', traits => ['Unwrapped','NameInRequest']);
  has ConfigUpdated => (is => 'ro', isa => 'Bool', xmlname => 'configUpdated', request_name => 'configUpdated', traits => ['Unwrapped','NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', xmlname => 'description', request_name => 'description', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::AgentConfigStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Discovery::AgentConfigStatus object:

  $service_obj->Method(Att1 => { AgentId => $value, ..., Description => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Discovery::AgentConfigStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->AgentId

=head1 DESCRIPTION

Information about agents that were instructed to start collecting data.
Information includes the agent ID, a description of the operation, and
whether or not the agent configuration was updated.

=head1 ATTRIBUTES


=head2 AgentId => Str

  The agent ID.


=head2 ConfigUpdated => Bool

  Information about whether or not the agent configuration was updated.


=head2 Description => Str

  A description of the operation performed.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Discovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

