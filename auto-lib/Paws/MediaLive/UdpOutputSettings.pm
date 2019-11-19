# Generated from default/object.tt
package Paws::MediaLive::UdpOutputSettings;
  use Moo;
  use Types::Standard qw/Int/;
  use Paws::MediaLive::Types qw/MediaLive_OutputLocationRef MediaLive_UdpContainerSettings MediaLive_FecOutputSettings/;
  has BufferMsec => (is => 'ro', isa => Int);
  has ContainerSettings => (is => 'ro', isa => MediaLive_UdpContainerSettings, required => 1);
  has Destination => (is => 'ro', isa => MediaLive_OutputLocationRef, required => 1);
  has FecOutputSettings => (is => 'ro', isa => MediaLive_FecOutputSettings);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Destination' => {
                                  'class' => 'Paws::MediaLive::OutputLocationRef',
                                  'type' => 'MediaLive_OutputLocationRef'
                                },
               'FecOutputSettings' => {
                                        'type' => 'MediaLive_FecOutputSettings',
                                        'class' => 'Paws::MediaLive::FecOutputSettings'
                                      },
               'BufferMsec' => {
                                 'type' => 'Int'
                               },
               'ContainerSettings' => {
                                        'class' => 'Paws::MediaLive::UdpContainerSettings',
                                        'type' => 'MediaLive_UdpContainerSettings'
                                      }
             },
  'IsRequired' => {
                    'Destination' => 1,
                    'ContainerSettings' => 1
                  },
  'NameInRequest' => {
                       'Destination' => 'destination',
                       'FecOutputSettings' => 'fecOutputSettings',
                       'BufferMsec' => 'bufferMsec',
                       'ContainerSettings' => 'containerSettings'
                     }
}
;
    return $Params_map;
  }


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

Udp Output Settings

=head1 ATTRIBUTES


=head2 BufferMsec => Int

  UDP output buffering in milliseconds. Larger values increase latency
through the transcoder but simultaneously assist the transcoder in
maintaining a constant, low-jitter UDP/RTP output while accommodating
clock recovery, input switching, input disruptions, picture reordering,
etc.


=head2 B<REQUIRED> ContainerSettings => MediaLive_UdpContainerSettings

  


=head2 B<REQUIRED> Destination => MediaLive_OutputLocationRef

  Destination address and port number for RTP or UDP packets. Can be
unicast or multicast RTP or UDP (eg. rtp://239.10.10.10:5001 or
udp://10.100.100.100:5002).


=head2 FecOutputSettings => MediaLive_FecOutputSettings

  Settings for enabling and adjusting Forward Error Correction on UDP
outputs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

