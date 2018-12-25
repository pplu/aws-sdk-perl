package Paws::Transcribe::VocabularyInfo;
  use Moose;
  has LanguageCode => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has VocabularyName => (is => 'ro', isa => 'Str');
  has VocabularyState => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::VocabularyInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Transcribe::VocabularyInfo object:

  $service_obj->Method(Att1 => { LanguageCode => $value, ..., VocabularyState => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Transcribe::VocabularyInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->LanguageCode

=head1 DESCRIPTION

Provides information about a custom vocabulary.

=head1 ATTRIBUTES


=head2 LanguageCode => Str

  The language code of the vocabulary entries.


=head2 LastModifiedTime => Str

  The date and time that the vocabulary was last modified.


=head2 VocabularyName => Str

  The name of the vocabulary.


=head2 VocabularyState => Str

  The processing state of the vocabulary. If the state is C<READY> you
can use the vocabulary in a C<StartTranscriptionJob> request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Transcribe>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

