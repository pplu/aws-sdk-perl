# Generated from default/object.tt
package Paws::MediaLive::AudioSelectorSettings;
  use Moo;
  use Types::Standard qw//;
  use Paws::MediaLive::Types qw/MediaLive_AudioLanguageSelection MediaLive_AudioPidSelection/;
  has AudioLanguageSelection => (is => 'ro', isa => MediaLive_AudioLanguageSelection);
  has AudioPidSelection => (is => 'ro', isa => MediaLive_AudioPidSelection);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AudioPidSelection' => {
                                        'class' => 'Paws::MediaLive::AudioPidSelection',
                                        'type' => 'MediaLive_AudioPidSelection'
                                      },
               'AudioLanguageSelection' => {
                                             'class' => 'Paws::MediaLive::AudioLanguageSelection',
                                             'type' => 'MediaLive_AudioLanguageSelection'
                                           }
             },
  'NameInRequest' => {
                       'AudioPidSelection' => 'audioPidSelection',
                       'AudioLanguageSelection' => 'audioLanguageSelection'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::AudioSelectorSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::AudioSelectorSettings object:

  $service_obj->Method(Att1 => { AudioLanguageSelection => $value, ..., AudioPidSelection => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::AudioSelectorSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->AudioLanguageSelection

=head1 DESCRIPTION

Audio Selector Settings

=head1 ATTRIBUTES


=head2 AudioLanguageSelection => MediaLive_AudioLanguageSelection

  


=head2 AudioPidSelection => MediaLive_AudioPidSelection

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

