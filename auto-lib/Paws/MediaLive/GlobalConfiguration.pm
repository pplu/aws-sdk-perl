package Paws::MediaLive::GlobalConfiguration;
  use Moose;
  has InitialAudioGain => (is => 'ro', isa => 'Int', request_name => 'initialAudioGain', traits => ['NameInRequest']);
  has InputEndAction => (is => 'ro', isa => 'Str', request_name => 'inputEndAction', traits => ['NameInRequest']);
  has InputLossBehavior => (is => 'ro', isa => 'Paws::MediaLive::InputLossBehavior', request_name => 'inputLossBehavior', traits => ['NameInRequest']);
  has OutputTimingSource => (is => 'ro', isa => 'Str', request_name => 'outputTimingSource', traits => ['NameInRequest']);
  has SupportLowFramerateInputs => (is => 'ro', isa => 'Str', request_name => 'supportLowFramerateInputs', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::GlobalConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::GlobalConfiguration object:

  $service_obj->Method(Att1 => { InitialAudioGain => $value, ..., SupportLowFramerateInputs => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::GlobalConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->InitialAudioGain

=head1 DESCRIPTION

Placeholder documentation for GlobalConfiguration

=head1 ATTRIBUTES


=head2 InitialAudioGain => Int

  Value to set the initial audio gain for the Live Event.


=head2 InputEndAction => Str

  Indicates the action to take when the current input completes (e.g.
end-of-file). When switchAndLoopInputs is configured the encoder will
restart at the beginning of the first input. When "none" is configured
the encoder will transcode either black, a solid color, or a user
specified slate images per the "Input Loss Behavior" configuration
until the next input switch occurs (which is controlled through the
Channel Schedule API).


=head2 InputLossBehavior => L<Paws::MediaLive::InputLossBehavior>

  Settings for system actions when input is lost.


=head2 OutputTimingSource => Str

  Indicates whether the rate of frames emitted by the Live encoder should
be paced by its system clock (which optionally may be locked to another
source via NTP) or should be locked to the clock of the source that is
providing the input stream.


=head2 SupportLowFramerateInputs => Str

  Adjusts video input buffer for streams with very low video framerates.
This is commonly set to enabled for music channels with less than one
video frame per second.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

