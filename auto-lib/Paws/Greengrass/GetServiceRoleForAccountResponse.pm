
package Paws::Greengrass::GetServiceRoleForAccountResponse;
  use Moose;
  has AssociatedAt => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::GetServiceRoleForAccountResponse

=head1 ATTRIBUTES


=head2 AssociatedAt => Str

The time when the service role was associated with the account.


=head2 RoleArn => Str

The ARN of the role which is associated with the account.


=head2 _request_id => Str


=cut

