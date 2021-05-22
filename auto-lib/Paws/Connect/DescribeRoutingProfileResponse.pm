
package Paws::Connect::DescribeRoutingProfileResponse;
  use Moose;
  has RoutingProfile => (is => 'ro', isa => 'Paws::Connect::RoutingProfile');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::DescribeRoutingProfileResponse

=head1 ATTRIBUTES


=head2 RoutingProfile => L<Paws::Connect::RoutingProfile>

The routing profile.


=head2 _request_id => Str


=cut

