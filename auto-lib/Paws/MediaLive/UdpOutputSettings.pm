package Paws::MediaLive::UdpOutputSettings;
  use Moose;
  has BufferMsec => (is => 'ro', isa => 'Int', request_name => 'bufferMsec', traits => ['NameInRequest']);
  has ContainerSettings => (is => 'ro', isa => 'Paws::MediaLive::UdpContainerSettings', request_name => 'containerSettings', traits => ['NameInRequest'], required => 1);
  has Destination => (is => 'ro', isa => 'Paws::MediaLive::OutputLocationRef', request_name => 'destination', traits => ['NameInRequest'], required => 1);
  has FecOutputSettings => (is => 'ro', isa => 'Paws::MediaLive::FecOutputSettings', request_name => 'fecOutputSettings', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::UdpOutputSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::UdpOutputSettings object:

  $service_obj->Method(Att1 => { BufferMsec => $value, ..., FecOutputSettings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::UdpOutputSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->BufferMsec

=head1 DESCRIPTION

Placeholder documentation for UdpOutputSettings

=head1 ATTRIBUTES


=head2 BufferMsec => Int

  UDP output buffering in milliseconds. Larger values increase latency
through the transcoder but simultaneously assist the transcoder in
maintaining a constant, low-jitter UDP/RTP output while accommodating
clock recovery, input switching, input disruptions, picture reordering,
etc.


=head2 B<REQUIRED> ContainerSettings => L<Paws::MediaLive::UdpContainerSettings>

  


=head2 B<REQUIRED> Destination => L<Paws::MediaLive::OutputLocationRef>

  Destination address and port number for RTP or UDP packets. Can be
unicast or multicast RTP or UDP (eg. rtp://239.10.10.10:5001 or
udp://10.100.100.100:5002).


=head2 FecOutputSettings => L<Paws::MediaLive::FecOutputSettings>

  Settings for enabling and adjusting Forward Error Correction on UDP
outputs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

