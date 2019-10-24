# Generated from default/object.tt
package Paws::MediaLive::InputSettings;
  use Moo;
  use Types::Standard qw/ArrayRef Str Int/;
  use Paws::MediaLive::Types qw/MediaLive_CaptionSelector MediaLive_AudioSelector MediaLive_NetworkInputSettings MediaLive_VideoSelector/;
  has AudioSelectors => (is => 'ro', isa => ArrayRef[MediaLive_AudioSelector]);
  has CaptionSelectors => (is => 'ro', isa => ArrayRef[MediaLive_CaptionSelector]);
  has DeblockFilter => (is => 'ro', isa => Str);
  has DenoiseFilter => (is => 'ro', isa => Str);
  has FilterStrength => (is => 'ro', isa => Int);
  has InputFilter => (is => 'ro', isa => Str);
  has NetworkInputSettings => (is => 'ro', isa => MediaLive_NetworkInputSettings);
  has SourceEndBehavior => (is => 'ro', isa => Str);
  has VideoSelector => (is => 'ro', isa => MediaLive_VideoSelector);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NetworkInputSettings' => {
                                           'class' => 'Paws::MediaLive::NetworkInputSettings',
                                           'type' => 'MediaLive_NetworkInputSettings'
                                         },
               'VideoSelector' => {
                                    'class' => 'Paws::MediaLive::VideoSelector',
                                    'type' => 'MediaLive_VideoSelector'
                                  },
               'InputFilter' => {
                                  'type' => 'Str'
                                },
               'DenoiseFilter' => {
                                    'type' => 'Str'
                                  },
               'AudioSelectors' => {
                                     'class' => 'Paws::MediaLive::AudioSelector',
                                     'type' => 'ArrayRef[MediaLive_AudioSelector]'
                                   },
               'DeblockFilter' => {
                                    'type' => 'Str'
                                  },
               'CaptionSelectors' => {
                                       'class' => 'Paws::MediaLive::CaptionSelector',
                                       'type' => 'ArrayRef[MediaLive_CaptionSelector]'
                                     },
               'SourceEndBehavior' => {
                                        'type' => 'Str'
                                      },
               'FilterStrength' => {
                                     'type' => 'Int'
                                   }
             },
  'NameInRequest' => {
                       'NetworkInputSettings' => 'networkInputSettings',
                       'VideoSelector' => 'videoSelector',
                       'InputFilter' => 'inputFilter',
                       'DenoiseFilter' => 'denoiseFilter',
                       'AudioSelectors' => 'audioSelectors',
                       'DeblockFilter' => 'deblockFilter',
                       'CaptionSelectors' => 'captionSelectors',
                       'SourceEndBehavior' => 'sourceEndBehavior',
                       'FilterStrength' => 'filterStrength'
                     }
}
;
    return $Params_map;
  }


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


=head2 AudioSelectors => ArrayRef[MediaLive_AudioSelector]

  Used to select the audio stream to decode for inputs that have multiple
available.


=head2 CaptionSelectors => ArrayRef[MediaLive_CaptionSelector]

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


=head2 NetworkInputSettings => MediaLive_NetworkInputSettings

  Input settings.


=head2 SourceEndBehavior => Str

  Loop input if it is a file. This allows a file input to be streamed
indefinitely.


=head2 VideoSelector => MediaLive_VideoSelector

  Informs which video elementary stream to decode for input types that
have multiple available.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

