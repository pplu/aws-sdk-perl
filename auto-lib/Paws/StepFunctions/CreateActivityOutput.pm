
package Paws::StepFunctions::CreateActivityOutput;
  use Moose;
  has ActivityArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'activityArn' , required => 1);
  has CreationDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDate' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::CreateActivityOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActivityArn => Str

The Amazon Resource Name (ARN) that identifies the created activity.


=head2 B<REQUIRED> CreationDate => Str

The date the activity is created.


=head2 _request_id => Str


=cut

1;