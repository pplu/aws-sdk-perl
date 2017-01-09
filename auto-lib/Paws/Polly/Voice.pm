package Paws::Polly::Voice;
  use Moose;
  has Gender => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has LanguageCode => (is => 'ro', isa => 'Str');
  has LanguageName => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Polly::Voice

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Polly::Voice object:

  $service_obj->Method(Att1 => { Gender => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Polly::Voice object:

  $result = $service_obj->Method(...);
  $result->Att1->Gender

=head1 DESCRIPTION

Description of the voice.

=head1 ATTRIBUTES


=head2 Gender => Str

  Gender of the voice.


=head2 Id => Str

  Amazon Polly assigned voice ID. This is the ID that you specify when
calling the C<SynthesizeSpeech> operation.


=head2 LanguageCode => Str

  Language code of the voice.


=head2 LanguageName => Str

  Human readable name of the language in English.


=head2 Name => Str

  Name of the voice (for example, Salli, Kendra, etc.). This provides a
human readable voice name that you might display in your application.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Polly>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

