
package Paws::SageMaker::CreateWorkteamResponse;
  use Moose;
  has WorkteamArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateWorkteamResponse

=head1 ATTRIBUTES


=head2 WorkteamArn => Str

The Amazon Resource Name (ARN) of the work team. You can use this ARN
to identify the work team.


=head2 _request_id => Str


=cut

1;