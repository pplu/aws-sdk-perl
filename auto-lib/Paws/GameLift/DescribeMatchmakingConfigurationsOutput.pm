
package Paws::GameLift::DescribeMatchmakingConfigurationsOutput;
  use Moose;
  has Configurations => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::MatchmakingConfiguration]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeMatchmakingConfigurationsOutput

=head1 ATTRIBUTES


=head2 Configurations => ArrayRef[L<Paws::GameLift::MatchmakingConfiguration>]

A collection of requested matchmaking configurations.


=head2 NextToken => Str

A token that indicates where to resume retrieving results on the next
call to this operation. If no token is returned, these results
represent the end of the list.


=head2 _request_id => Str


=cut

1;