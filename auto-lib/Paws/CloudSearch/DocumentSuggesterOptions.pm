package Paws::CloudSearch::DocumentSuggesterOptions;
  use Moose;
  has FuzzyMatching => (is => 'ro', isa => 'Str');
  has SortExpression => (is => 'ro', isa => 'Str');
  has SourceField => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::DocumentSuggesterOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudSearch::DocumentSuggesterOptions object:

  $service_obj->Method(Att1 => { FuzzyMatching => $value, ..., SourceField => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudSearch::DocumentSuggesterOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->FuzzyMatching

=head1 DESCRIPTION

Options for a search suggester.

=head1 ATTRIBUTES


=head2 FuzzyMatching => Str

  The level of fuzziness allowed when suggesting matches for a string:
C<none>, C<low>, or C<high>. With none, the specified string is treated
as an exact prefix. With low, suggestions must differ from the
specified string by no more than one character. With high, suggestions
can differ by up to two characters. The default is none.


=head2 SortExpression => Str

  An expression that computes a score for each suggestion to control how
they are sorted. The scores are rounded to the nearest integer, with a
floor of 0 and a ceiling of 2^31-1. A document's relevance score is not
computed for suggestions, so sort expressions cannot reference the
C<_score> value. To sort suggestions using a numeric field or existing
expression, simply specify the name of the field or expression. If no
expression is configured for the suggester, the suggestions are sorted
with the closest matches listed first.


=head2 B<REQUIRED> SourceField => Str

  The name of the index field you want to use for suggestions.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

