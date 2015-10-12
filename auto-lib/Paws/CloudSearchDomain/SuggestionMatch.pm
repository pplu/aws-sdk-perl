package Paws::CloudSearchDomain::SuggestionMatch;
  use Moose;
  has id => (is => 'ro', isa => 'Str');
  has score => (is => 'ro', isa => 'Int');
  has suggestion => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearchDomain::SuggestionMatch

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudSearchDomain::SuggestionMatch object:

  $service_obj->Method(Att1 => { id => $value, ..., suggestion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudSearchDomain::SuggestionMatch object:

  $result = $service_obj->Method(...);
  $result->Att1->id

=head1 ATTRIBUTES

=head2 id => Str

  

The document ID of the suggested document.










=head2 score => Int

  

The relevance score of a suggested match.










=head2 suggestion => Str

  

The string that matches the query string specified in the
C<SuggestRequest>.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudSearchDomain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

