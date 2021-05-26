
package Paws::SageMaker::DeleteTrialResponse;
  use Moose;
  has TrialArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DeleteTrialResponse

=head1 ATTRIBUTES


=head2 TrialArn => Str

The Amazon Resource Name (ARN) of the trial that is being deleted.


=head2 _request_id => Str


=cut

1;