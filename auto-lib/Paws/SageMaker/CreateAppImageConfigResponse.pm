
package Paws::SageMaker::CreateAppImageConfigResponse;
  use Moose;
  has AppImageConfigArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateAppImageConfigResponse

=head1 ATTRIBUTES


=head2 AppImageConfigArn => Str

The Amazon Resource Name (ARN) of the AppImageConfig.


=head2 _request_id => Str


=cut

1;