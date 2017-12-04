package Paws::Polly::LexiconAttributes;
  use Moose;
  has Alphabet => (is => 'ro', isa => 'Str');
  has LanguageCode => (is => 'ro', isa => 'Str');
  has LastModified => (is => 'ro', isa => 'Str');
  has LexemesCount => (is => 'ro', isa => 'Int');
  has LexiconArn => (is => 'ro', isa => 'Str');
  has Size => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Polly::LexiconAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Polly::LexiconAttributes object:

  $service_obj->Method(Att1 => { Alphabet => $value, ..., Size => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Polly::LexiconAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->Alphabet

=head1 DESCRIPTION

Contains metadata describing the lexicon such as the number of lexemes,
language code, and so on. For more information, see Managing Lexicons
(http://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html).

=head1 ATTRIBUTES


=head2 Alphabet => Str

  Phonetic alphabet used in the lexicon. Valid values are C<ipa> and
C<x-sampa>.


=head2 LanguageCode => Str

  Language code that the lexicon applies to. A lexicon with a language
code such as "en" would be applied to all English languages (en-GB,
en-US, en-AUS, en-WLS, and so on.


=head2 LastModified => Str

  Date lexicon was last modified (a timestamp value).


=head2 LexemesCount => Int

  Number of lexemes in the lexicon.


=head2 LexiconArn => Str

  Amazon Resource Name (ARN) of the lexicon.


=head2 Size => Int

  Total size of the lexicon, in characters.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Polly>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

