package Paws::GuardDuty::PortProbeDetail;
  use Moose;
  has LocalPortDetails => (is => 'ro', isa => 'Paws::GuardDuty::LocalPortDetails', request_name => 'localPortDetails', traits => ['NameInRequest']);
  has RemoteIpDetails => (is => 'ro', isa => 'Paws::GuardDuty::RemoteIpDetails', request_name => 'remoteIpDetails', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::PortProbeDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GuardDuty::PortProbeDetail object:

  $service_obj->Method(Att1 => { LocalPortDetails => $value, ..., RemoteIpDetails => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GuardDuty::PortProbeDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->LocalPortDetails

=head1 DESCRIPTION

Details about the port probe finding.

=head1 ATTRIBUTES


=head2 LocalPortDetails => L<Paws::GuardDuty::LocalPortDetails>

  Local port information of the connection.


=head2 RemoteIpDetails => L<Paws::GuardDuty::RemoteIpDetails>

  Remote IP information of the connection.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

