
package Paws::IoT::ListPolicyPrincipalsResponse;
  use Moose;
  has NextMarker => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextMarker');
  has Principals => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'principals');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListPolicyPrincipalsResponse

=head1 ATTRIBUTES


=head2 NextMarker => Str

The marker for the next set of results, or null if there are no
additional results.


=head2 Principals => ArrayRef[Str|Undef]

The descriptions of the principals.


=head2 _request_id => Str


=cut

