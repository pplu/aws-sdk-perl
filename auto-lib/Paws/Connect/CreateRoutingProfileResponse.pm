
package Paws::Connect::CreateRoutingProfileResponse;
  use Moose;
  has RoutingProfileArn => (is => 'ro', isa => 'Str');
  has RoutingProfileId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::CreateRoutingProfileResponse

=head1 ATTRIBUTES


=head2 RoutingProfileArn => Str

The Amazon Resource Name (ARN) of the routing profile.


=head2 RoutingProfileId => Str

The identifier of the routing profile.


=head2 _request_id => Str


=cut

