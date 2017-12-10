package Paws::Inspector::AgentFilter;
  use Moose;
  has AgentHealthCodes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'agentHealthCodes', traits => ['NameInRequest'], required => 1);
  has AgentHealths => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'agentHealths', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::AgentFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Inspector::AgentFilter object:

  $service_obj->Method(Att1 => { AgentHealthCodes => $value, ..., AgentHealths => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Inspector::AgentFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->AgentHealthCodes

=head1 DESCRIPTION

Contains information about an Amazon Inspector agent. This data type is
used as a request parameter in the ListAssessmentRunAgents action.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AgentHealthCodes => ArrayRef[Str|Undef]

  The detailed health state of the agent. Values can be set to B<IDLE>,
B<RUNNING>, B<SHUTDOWN>, B<UNHEALTHY>, B<THROTTLED>, and B<UNKNOWN>.


=head2 B<REQUIRED> AgentHealths => ArrayRef[Str|Undef]

  The current health state of the agent. Values can be set to B<HEALTHY>
or B<UNHEALTHY>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

