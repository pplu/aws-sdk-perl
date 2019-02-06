package Paws::MediaConvert::CaptionDescription;
  use Moose;
  has CaptionSelectorName => (is => 'ro', isa => 'Str', request_name => 'captionSelectorName', traits => ['NameInRequest']);
  has CustomLanguageCode => (is => 'ro', isa => 'Str', request_name => 'customLanguageCode', traits => ['NameInRequest']);
  has DestinationSettings => (is => 'ro', isa => 'Paws::MediaConvert::CaptionDestinationSettings', request_name => 'destinationSettings', traits => ['NameInRequest']);
  has LanguageCode => (is => 'ro', isa => 'Str', request_name => 'languageCode', traits => ['NameInRequest']);
  has LanguageDescription => (is => 'ro', isa => 'Str', request_name => 'languageDescription', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::CaptionDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::CaptionDescription object:

  $service_obj->Method(Att1 => { CaptionSelectorName => $value, ..., LanguageDescription => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::CaptionDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->CaptionSelectorName

=head1 DESCRIPTION

Description of Caption output

=head1 ATTRIBUTES


=head2 CaptionSelectorName => Str

  Specifies which "Caption Selector":#inputs-caption_selector to use from
each input when generating captions. The name should be of the format
"Caption Selector ", which denotes that the Nth Caption Selector will
be used from each input.


=head2 CustomLanguageCode => Str

  Indicates the language of the caption output track, using the ISO 639-2
or ISO 639-3 three-letter language code. For most captions output
formats, the encoder puts this language information in the output
captions metadata. If your output captions format is DVB-Sub or Burn
in, the encoder uses this language information to choose the font
language for rendering the captions text.


=head2 DestinationSettings => L<Paws::MediaConvert::CaptionDestinationSettings>

  


=head2 LanguageCode => Str

  Specify the language of this captions output track. For most captions
output formats, the encoder puts this language information in the
output captions metadata. If your output captions format is DVB-Sub or
Burn in, the encoder uses this language information to choose the font
language for rendering the captions text.


=head2 LanguageDescription => Str

  Human readable information to indicate captions available for players
(eg. English, or Spanish). Alphanumeric characters, spaces, and
underscore are legal.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

