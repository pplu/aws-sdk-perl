package Paws::Discovery::CustomerAgentInfo;
  use Moose;
  has ActiveAgents => (is => 'ro', isa => 'Int', xmlname => 'activeAgents', request_name => 'activeAgents', traits => ['Unwrapped','NameInRequest'], required => 1);
  has BlackListedAgents => (is => 'ro', isa => 'Int', xmlname => 'blackListedAgents', request_name => 'blackListedAgents', traits => ['Unwrapped','NameInRequest'], required => 1);
  has HealthyAgents => (is => 'ro', isa => 'Int', xmlname => 'healthyAgents', request_name => 'healthyAgents', traits => ['Unwrapped','NameInRequest'], required => 1);
  has ShutdownAgents => (is => 'ro', isa => 'Int', xmlname => 'shutdownAgents', request_name => 'shutdownAgents', traits => ['Unwrapped','NameInRequest'], required => 1);
  has TotalAgents => (is => 'ro', isa => 'Int', xmlname => 'totalAgents', request_name => 'totalAgents', traits => ['Unwrapped','NameInRequest'], required => 1);
  has UnhealthyAgents => (is => 'ro', isa => 'Int', xmlname => 'unhealthyAgents', request_name => 'unhealthyAgents', traits => ['Unwrapped','NameInRequest'], required => 1);
  has UnknownAgents => (is => 'ro', isa => 'Int', xmlname => 'unknownAgents', request_name => 'unknownAgents', traits => ['Unwrapped','NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::CustomerAgentInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Discovery::CustomerAgentInfo object:

  $service_obj->Method(Att1 => { ActiveAgents => $value, ..., UnknownAgents => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Discovery::CustomerAgentInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->ActiveAgents

=head1 DESCRIPTION

Inventory data for installed discovery agents.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActiveAgents => Int

  Number of active discovery agents.


=head2 B<REQUIRED> BlackListedAgents => Int

  Number of blacklisted discovery agents.


=head2 B<REQUIRED> HealthyAgents => Int

  Number of healthy discovery agents


=head2 B<REQUIRED> ShutdownAgents => Int

  Number of discovery agents with status SHUTDOWN.


=head2 B<REQUIRED> TotalAgents => Int

  Total number of discovery agents.


=head2 B<REQUIRED> UnhealthyAgents => Int

  Number of unhealthy discovery agents.


=head2 B<REQUIRED> UnknownAgents => Int

  Number of unknown discovery agents.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Discovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

