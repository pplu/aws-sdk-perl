
package Paws::SageMaker::DescribeSubscribedWorkteamResponse;
  use Moose;
  has SubscribedWorkteam => (is => 'ro', isa => 'Paws::SageMaker::SubscribedWorkteam', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeSubscribedWorkteamResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> SubscribedWorkteam => L<Paws::SageMaker::SubscribedWorkteam>

A C<Workteam> instance that contains information about the work team.


=head2 _request_id => Str


=cut

1;