package Paws::MediaLive::UdpGroupSettings;
  use Moose;
  has InputLossAction => (is => 'ro', isa => 'Str', request_name => 'inputLossAction', traits => ['NameInRequest']);
  has TimedMetadataId3Frame => (is => 'ro', isa => 'Str', request_name => 'timedMetadataId3Frame', traits => ['NameInRequest']);
  has TimedMetadataId3Period => (is => 'ro', isa => 'Int', request_name => 'timedMetadataId3Period', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::UdpGroupSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::UdpGroupSettings object:

  $service_obj->Method(Att1 => { InputLossAction => $value, ..., TimedMetadataId3Period => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::UdpGroupSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->InputLossAction

=head1 DESCRIPTION

Placeholder documentation for UdpGroupSettings

=head1 ATTRIBUTES


=head2 InputLossAction => Str

  Specifies behavior of last resort when input video is lost, and no more
backup inputs are available. When dropTs is selected the entire
transport stream will stop being emitted. When dropProgram is selected
the program can be dropped from the transport stream (and replaced with
null packets to meet the TS bitrate requirement). Or, when emitProgram
is chosen the transport stream will continue to be produced normally
with repeat frames, black frames, or slate frames substituted for the
absent input video.


=head2 TimedMetadataId3Frame => Str

  Indicates ID3 frame that has the timecode.


=head2 TimedMetadataId3Period => Int

  Timed Metadata interval in seconds.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

