
package Paws::SageMaker::ListAppImageConfigsResponse;
  use Moose;
  has AppImageConfigs => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::AppImageConfigDetails]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListAppImageConfigsResponse

=head1 ATTRIBUTES


=head2 AppImageConfigs => ArrayRef[L<Paws::SageMaker::AppImageConfigDetails>]

A list of AppImageConfigs and their properties.


=head2 NextToken => Str

A token for getting the next set of AppImageConfigs, if there are any.


=head2 _request_id => Str


=cut

1;