package Paws::MediaLive::InputSettings;
  use Moose;
  has AudioSelectors => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::AudioSelector]', request_name => 'audioSelectors', traits => ['NameInRequest']);
  has CaptionSelectors => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::CaptionSelector]', request_name => 'captionSelectors', traits => ['NameInRequest']);
  has DeblockFilter => (is => 'ro', isa => 'Str', request_name => 'deblockFilter', traits => ['NameInRequest']);
  has DenoiseFilter => (is => 'ro', isa => 'Str', request_name => 'denoiseFilter', traits => ['NameInRequest']);
  has FilterStrength => (is => 'ro', isa => 'Int', request_name => 'filterStrength', traits => ['NameInRequest']);
  has InputFilter => (is => 'ro', isa => 'Str', request_name => 'inputFilter', traits => ['NameInRequest']);
  has NetworkInputSettings => (is => 'ro', isa => 'Paws::MediaLive::NetworkInputSettings', request_name => 'networkInputSettings', traits => ['NameInRequest']);
  has SourceEndBehavior => (is => 'ro', isa => 'Str', request_name => 'sourceEndBehavior', traits => ['NameInRequest']);
  has VideoSelector => (is => 'ro', isa => 'Paws::MediaLive::VideoSelector', request_name => 'videoSelector', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::InputSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::InputSettings object:

  $service_obj->Method(Att1 => { AudioSelectors => $value, ..., VideoSelector => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::InputSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->AudioSelectors

=head1 DESCRIPTION

Live Event input parameters. There can be multiple inputs in a single
Live Event.

=head1 ATTRIBUTES


=head2 AudioSelectors => ArrayRef[L<Paws::MediaLive::AudioSelector>]

  Used to select the audio stream to decode for inputs that have multiple
available.


=head2 CaptionSelectors => ArrayRef[L<Paws::MediaLive::CaptionSelector>]

  Used to select the caption input to use for inputs that have multiple
available.


=head2 DeblockFilter => Str

  Enable or disable the deblock filter when filtering.


=head2 DenoiseFilter => Str

  Enable or disable the denoise filter when filtering.


=head2 FilterStrength => Int

  Adjusts the magnitude of filtering from 1 (minimal) to 5 (strongest).


=head2 InputFilter => Str

  Turns on the filter for this input. MPEG-2 inputs have the deblocking
filter enabled by default. 1) auto - filtering will be applied
depending on input type/quality 2) disabled - no filtering will be
applied to the input 3) forced - filtering will be applied regardless
of input type


=head2 NetworkInputSettings => L<Paws::MediaLive::NetworkInputSettings>

  Input settings.


=head2 SourceEndBehavior => Str

  Loop input if it is a file. This allows a file input to be streamed
indefinitely.


=head2 VideoSelector => L<Paws::MediaLive::VideoSelector>

  Informs which video elementary stream to decode for input types that
have multiple available.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

