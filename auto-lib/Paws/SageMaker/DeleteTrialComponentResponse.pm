
package Paws::SageMaker::DeleteTrialComponentResponse;
  use Moose;
  has TrialComponentArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DeleteTrialComponentResponse

=head1 ATTRIBUTES


=head2 TrialComponentArn => Str

The Amazon Resource Name (ARN) of the component is being deleted.


=head2 _request_id => Str


=cut

1;