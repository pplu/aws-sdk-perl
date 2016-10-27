
package Paws::GameLift::GetGameSessionLogUrlOutput;
  use Moose;
  has PreSignedUrl => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::GetGameSessionLogUrlOutput

=head1 ATTRIBUTES


=head2 PreSignedUrl => Str

Location of the requested game session logs, available for download.




=cut

1;