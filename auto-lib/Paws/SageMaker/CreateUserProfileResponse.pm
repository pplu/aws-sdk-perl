
package Paws::SageMaker::CreateUserProfileResponse;
  use Moose;
  has UserProfileArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateUserProfileResponse

=head1 ATTRIBUTES


=head2 UserProfileArn => Str

The user profile Amazon Resource Name (ARN).


=head2 _request_id => Str


=cut

1;