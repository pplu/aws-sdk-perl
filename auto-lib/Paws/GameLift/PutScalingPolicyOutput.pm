
package Paws::GameLift::PutScalingPolicyOutput;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::PutScalingPolicyOutput

=head1 ATTRIBUTES


=head2 Name => Str

Descriptive label associated with a scaling policy. Policy names do not
need to be unique.




=cut

1;