
package Paws::OpsWorks::CreateUserProfileResult;
  use Moose;
  has IamUserArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::CreateUserProfileResult

=head1 ATTRIBUTES


=head2 IamUserArn => Str

The user's IAM ARN.


=head2 _request_id => Str


=cut

1;