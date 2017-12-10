
package Paws::IoT::ListAuthorizersResponse;
  use Moose;
  has Authorizers => (is => 'ro', isa => 'ArrayRef[Paws::IoT::AuthorizerSummary]', traits => ['NameInRequest'], request_name => 'authorizers');
  has NextMarker => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextMarker');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListAuthorizersResponse

=head1 ATTRIBUTES


=head2 Authorizers => ArrayRef[L<Paws::IoT::AuthorizerSummary>]

The authorizers.


=head2 NextMarker => Str

A marker used to get the next set of results.


=head2 _request_id => Str


=cut

