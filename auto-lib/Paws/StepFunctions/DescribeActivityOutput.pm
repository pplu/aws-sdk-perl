
package Paws::StepFunctions::DescribeActivityOutput;
  use Moose;
  has ActivityArn => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'activityArn' , required => 1);
  has CreationDate => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'creationDate' , required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'name' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::DescribeActivityOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActivityArn => Str

The Amazon Resource Name (ARN) that identifies the activity.


=head2 B<REQUIRED> CreationDate => Str

The date the activity was created.


=head2 B<REQUIRED> Name => Str

The name of the activity.


=head2 _request_id => Str


=cut

1;