
package Paws::OpsWorks::CreateUserProfileResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has IamUserArn => (is => 'ro', isa => 'Str');

}

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::CreateUserProfileResult

=head1 ATTRIBUTES

=head2 IamUserArn => Str

  

The user's IAM ARN.











=cut

1;