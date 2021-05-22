
package Paws::FMS::GetViolationDetailsResponse;
  use Moose;
  has ViolationDetail => (is => 'ro', isa => 'Paws::FMS::ViolationDetail');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FMS::GetViolationDetailsResponse

=head1 ATTRIBUTES


=head2 ViolationDetail => L<Paws::FMS::ViolationDetail>

Violation detail for a resource.


=head2 _request_id => Str


=cut

1;