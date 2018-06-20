package Paws::MediaConvert::HlsCaptionLanguageMapping;
  use Moose;
  has CaptionChannel => (is => 'ro', isa => 'Int', request_name => 'captionChannel', traits => ['NameInRequest']);
  has CustomLanguageCode => (is => 'ro', isa => 'Str', request_name => 'customLanguageCode', traits => ['NameInRequest']);
  has LanguageCode => (is => 'ro', isa => 'Str', request_name => 'languageCode', traits => ['NameInRequest']);
  has LanguageDescription => (is => 'ro', isa => 'Str', request_name => 'languageDescription', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::HlsCaptionLanguageMapping

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::HlsCaptionLanguageMapping object:

  $service_obj->Method(Att1 => { CaptionChannel => $value, ..., LanguageDescription => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::HlsCaptionLanguageMapping object:

  $result = $service_obj->Method(...);
  $result->Att1->CaptionChannel

=head1 DESCRIPTION

Caption Language Mapping

=head1 ATTRIBUTES


=head2 CaptionChannel => Int

  Caption channel.


=head2 CustomLanguageCode => Str

  Specify the language for this caption channel, using the ISO 639-2 or
ISO 639-3 three-letter language code


=head2 LanguageCode => Str

  


=head2 LanguageDescription => Str

  Caption language description.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

