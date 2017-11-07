package Paws::CloudSearchDomain::SuggestionMatch;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest']);
  has Score => (is => 'ro', isa => 'Int', request_name => 'score', traits => ['NameInRequest']);
  has Suggestion => (is => 'ro', isa => 'Str', request_name => 'suggestion', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearchDomain::SuggestionMatch

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudSearchDomain::SuggestionMatch object:

  $service_obj->Method(Att1 => { Id => $value, ..., Suggestion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudSearchDomain::SuggestionMatch object:

  $result = $service_obj->Method(...);
  $result->Att1->Id

=head1 DESCRIPTION

An autocomplete suggestion that matches the query string specified in a
C<SuggestRequest>.

=head1 ATTRIBUTES


=head2 Id => Str

  The document ID of the suggested document.


=head2 Score => Int

  The relevance score of a suggested match.


=head2 Suggestion => Str

  The string that matches the query string specified in the
C<SuggestRequest>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudSearchDomain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

