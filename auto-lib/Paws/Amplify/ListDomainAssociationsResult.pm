
package Paws::Amplify::ListDomainAssociationsResult;
  use Moose;
  has DomainAssociations => (is => 'ro', isa => 'ArrayRef[Paws::Amplify::DomainAssociation]', traits => ['NameInRequest'], request_name => 'domainAssociations', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::ListDomainAssociationsResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainAssociations => ArrayRef[L<Paws::Amplify::DomainAssociation>]

A list of domain associations.


=head2 NextToken => Str

A pagination token. If non-null, a pagination token is returned in a
result. Pass its value in another request to retrieve more entries.


=head2 _request_id => Str


=cut

