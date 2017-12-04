package Paws::Discovery::AgentNetworkInfo;
  use Moose;
  has IpAddress => (is => 'ro', isa => 'Str', request_name => 'ipAddress', traits => ['NameInRequest']);
  has MacAddress => (is => 'ro', isa => 'Str', request_name => 'macAddress', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::AgentNetworkInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Discovery::AgentNetworkInfo object:

  $service_obj->Method(Att1 => { IpAddress => $value, ..., MacAddress => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Discovery::AgentNetworkInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->IpAddress

=head1 DESCRIPTION

Network details about the host where the agent/connector resides.

=head1 ATTRIBUTES


=head2 IpAddress => Str

  The IP address for the host where the agent/connector resides.


=head2 MacAddress => Str

  The MAC address for the host where the agent/connector resides.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Discovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

