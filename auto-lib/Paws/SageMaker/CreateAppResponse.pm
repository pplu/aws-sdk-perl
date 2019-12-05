
package Paws::SageMaker::CreateAppResponse;
  use Moose;
  has AppArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateAppResponse

=head1 ATTRIBUTES


=head2 AppArn => Str

The app's Amazon Resource Name (ARN).


=head2 _request_id => Str


=cut

1;