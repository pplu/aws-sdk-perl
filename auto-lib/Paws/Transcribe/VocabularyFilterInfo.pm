# Generated by default/object.tt
package Paws::Transcribe::VocabularyFilterInfo;
  use Moose;
  has LanguageCode => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has VocabularyFilterName => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::VocabularyFilterInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Transcribe::VocabularyFilterInfo object:

  $service_obj->Method(Att1 => { LanguageCode => $value, ..., VocabularyFilterName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Transcribe::VocabularyFilterInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->LanguageCode

=head1 DESCRIPTION

Provides information about a vocabulary filter.

=head1 ATTRIBUTES


=head2 LanguageCode => Str

The language code of the words in the vocabulary filter.


=head2 LastModifiedTime => Str

The date and time that the vocabulary was last updated.


=head2 VocabularyFilterName => Str

The name of the vocabulary filter. The name must be unique in the
account that holds the filter.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Transcribe>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

