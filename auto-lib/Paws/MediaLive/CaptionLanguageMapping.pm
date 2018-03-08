package Paws::MediaLive::CaptionLanguageMapping;
  use Moose;
  has CaptionChannel => (is => 'ro', isa => 'Int', request_name => 'captionChannel', traits => ['NameInRequest'], required => 1);
  has LanguageCode => (is => 'ro', isa => 'Str', request_name => 'languageCode', traits => ['NameInRequest'], required => 1);
  has LanguageDescription => (is => 'ro', isa => 'Str', request_name => 'languageDescription', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::CaptionLanguageMapping

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::CaptionLanguageMapping object:

  $service_obj->Method(Att1 => { CaptionChannel => $value, ..., LanguageDescription => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::CaptionLanguageMapping object:

  $result = $service_obj->Method(...);
  $result->Att1->CaptionChannel

=head1 DESCRIPTION

Maps a caption channel to an ISO 693-2 language code
(http://www.loc.gov/standards/iso639-2), with an optional description.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CaptionChannel => Int

  The closed caption channel being described by this
CaptionLanguageMapping. Each channel mapping must have a unique channel
number (maximum of 4)


=head2 B<REQUIRED> LanguageCode => Str

  Three character ISO 639-2 language code (see
http://www.loc.gov/standards/iso639-2)


=head2 B<REQUIRED> LanguageDescription => Str

  Textual description of language



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

