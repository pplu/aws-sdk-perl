package Paws::MediaLive::AudioLanguageSelection;
  use Moose;
  has LanguageCode => (is => 'ro', isa => 'Str', request_name => 'languageCode', traits => ['NameInRequest'], required => 1);
  has LanguageSelectionPolicy => (is => 'ro', isa => 'Str', request_name => 'languageSelectionPolicy', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::AudioLanguageSelection

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::AudioLanguageSelection object:

  $service_obj->Method(Att1 => { LanguageCode => $value, ..., LanguageSelectionPolicy => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::AudioLanguageSelection object:

  $result = $service_obj->Method(...);
  $result->Att1->LanguageCode

=head1 DESCRIPTION

Placeholder documentation for AudioLanguageSelection

=head1 ATTRIBUTES


=head2 B<REQUIRED> LanguageCode => Str

  Selects a specific three-letter language code from within an audio
source.


=head2 LanguageSelectionPolicy => Str

  When set to "strict", the transport stream demux strictly identifies
audio streams by their language descriptor. If a PMT update occurs such
that an audio stream matching the initially selected language is no
longer present then mute will be encoded until the language returns. If
"loose", then on a PMT update the demux will choose another audio
stream in the program with the same stream type if it can't find one
with the same language.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

