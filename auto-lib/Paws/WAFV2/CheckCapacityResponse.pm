
package Paws::WAFV2::CheckCapacityResponse;
  use Moose;
  has Capacity => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2::CheckCapacityResponse

=head1 ATTRIBUTES


=head2 Capacity => Int

The capacity required by the rules and scope.


=head2 _request_id => Str


=cut

1;