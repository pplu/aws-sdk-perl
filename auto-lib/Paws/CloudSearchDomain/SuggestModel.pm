package Paws::CloudSearchDomain::SuggestModel;
  use Moose;
  has Found => (is => 'ro', isa => 'Int', request_name => 'found', traits => ['NameInRequest']);
  has Query => (is => 'ro', isa => 'Str', request_name => 'query', traits => ['NameInRequest']);
  has Suggestions => (is => 'ro', isa => 'ArrayRef[Paws::CloudSearchDomain::SuggestionMatch]', request_name => 'suggestions', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearchDomain::SuggestModel

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudSearchDomain::SuggestModel object:

  $service_obj->Method(Att1 => { Found => $value, ..., Suggestions => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudSearchDomain::SuggestModel object:

  $result = $service_obj->Method(...);
  $result->Att1->Found

=head1 DESCRIPTION

Container for the suggestion information returned in a
C<SuggestResponse>.

=head1 ATTRIBUTES


=head2 Found => Int

  The number of documents that were found to match the query string.


=head2 Query => Str

  The query string specified in the suggest request.


=head2 Suggestions => ArrayRef[L<Paws::CloudSearchDomain::SuggestionMatch>]

  The documents that match the query string.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudSearchDomain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

