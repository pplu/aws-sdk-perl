
package Paws::SageMaker::UpdateAppImageConfigResponse;
  use Moose;
  has AppImageConfigArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UpdateAppImageConfigResponse

=head1 ATTRIBUTES


=head2 AppImageConfigArn => Str

The Amazon Resource Name (ARN) for the AppImageConfig.


=head2 _request_id => Str


=cut

1;