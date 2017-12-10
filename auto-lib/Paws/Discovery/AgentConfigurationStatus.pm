package Paws::Discovery::AgentConfigurationStatus;
  use Moose;
  has AgentId => (is => 'ro', isa => 'Str', request_name => 'agentId', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has OperationSucceeded => (is => 'ro', isa => 'Bool', request_name => 'operationSucceeded', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::AgentConfigurationStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Discovery::AgentConfigurationStatus object:

  $service_obj->Method(Att1 => { AgentId => $value, ..., OperationSucceeded => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Discovery::AgentConfigurationStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->AgentId

=head1 DESCRIPTION

Information about agents or connectors that were instructed to start
collecting data. Information includes the agent/connector ID, a
description of the operation, and whether the agent/connector
configuration was updated.

=head1 ATTRIBUTES


=head2 AgentId => Str

  The agent/connector ID.


=head2 Description => Str

  A description of the operation performed.


=head2 OperationSucceeded => Bool

  Information about the status of the C<StartDataCollection> and
C<StopDataCollection> operations. The system has recorded the data
collection operation. The agent/connector receives this command the
next time it polls for a new command.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Discovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

