package Paws::CloudSearch::Suggester;
  use Moose;
  has DocumentSuggesterOptions => (is => 'ro', isa => 'Paws::CloudSearch::DocumentSuggesterOptions', required => 1);
  has SuggesterName => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::Suggester

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudSearch::Suggester object:

  $service_obj->Method(Att1 => { DocumentSuggesterOptions => $value, ..., SuggesterName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudSearch::Suggester object:

  $result = $service_obj->Method(...);
  $result->Att1->DocumentSuggesterOptions

=head1 DESCRIPTION

Configuration information for a search suggester. Each suggester has a
unique name and specifies the text field you want to use for
suggestions. The following options can be configured for a suggester:
C<FuzzyMatching>, C<SortExpression>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DocumentSuggesterOptions => L<Paws::CloudSearch::DocumentSuggesterOptions>

  


=head2 B<REQUIRED> SuggesterName => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

