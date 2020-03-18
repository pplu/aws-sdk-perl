package Paws::MediaLive::MultiplexProgram;
  use Moose;
  has ChannelId => (is => 'ro', isa => 'Str', request_name => 'channelId', traits => ['NameInRequest']);
  has MultiplexProgramSettings => (is => 'ro', isa => 'Paws::MediaLive::MultiplexProgramSettings', request_name => 'multiplexProgramSettings', traits => ['NameInRequest']);
  has PacketIdentifiersMap => (is => 'ro', isa => 'Paws::MediaLive::MultiplexProgramPacketIdentifiersMap', request_name => 'packetIdentifiersMap', traits => ['NameInRequest']);
  has ProgramName => (is => 'ro', isa => 'Str', request_name => 'programName', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::MultiplexProgram

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::MultiplexProgram object:

  $service_obj->Method(Att1 => { ChannelId => $value, ..., ProgramName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::MultiplexProgram object:

  $result = $service_obj->Method(...);
  $result->Att1->ChannelId

=head1 DESCRIPTION

The multiplex program object.

=head1 ATTRIBUTES


=head2 ChannelId => Str

  The MediaLive channel associated with the program.


=head2 MultiplexProgramSettings => L<Paws::MediaLive::MultiplexProgramSettings>

  The settings for this multiplex program.


=head2 PacketIdentifiersMap => L<Paws::MediaLive::MultiplexProgramPacketIdentifiersMap>

  The packet identifier map for this multiplex program.


=head2 ProgramName => Str

  The name of the multiplex program.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

