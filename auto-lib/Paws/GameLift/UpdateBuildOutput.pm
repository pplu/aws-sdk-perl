
package Paws::GameLift::UpdateBuildOutput;
  use Moose;
  has Build => (is => 'ro', isa => 'Paws::GameLift::Build');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::UpdateBuildOutput

=head1 ATTRIBUTES


=head2 Build => L<Paws::GameLift::Build>

Object containing the updated build record.




=cut

1;