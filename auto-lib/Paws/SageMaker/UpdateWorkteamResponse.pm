
package Paws::SageMaker::UpdateWorkteamResponse;
  use Moose;
  has Workteam => (is => 'ro', isa => 'Paws::SageMaker::Workteam', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UpdateWorkteamResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Workteam => L<Paws::SageMaker::Workteam>

A C<Workteam> object that describes the updated work team.


=head2 _request_id => Str


=cut

1;