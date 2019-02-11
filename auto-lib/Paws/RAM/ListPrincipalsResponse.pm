
package Paws::RAM::ListPrincipalsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Principals => (is => 'ro', isa => 'ArrayRef[Paws::RAM::Principal]', traits => ['NameInRequest'], request_name => 'principals');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::ListPrincipalsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 Principals => ArrayRef[L<Paws::RAM::Principal>]

The principals.


=head2 _request_id => Str


=cut

