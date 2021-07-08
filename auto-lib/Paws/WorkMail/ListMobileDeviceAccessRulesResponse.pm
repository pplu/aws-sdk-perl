
package Paws::WorkMail::ListMobileDeviceAccessRulesResponse;
  use Moose;
  has Rules => (is => 'ro', isa => 'ArrayRef[Paws::WorkMail::MobileDeviceAccessRule]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::ListMobileDeviceAccessRulesResponse

=head1 ATTRIBUTES


=head2 Rules => ArrayRef[L<Paws::WorkMail::MobileDeviceAccessRule>]

The list of mobile device access rules that exist under the specified
Amazon WorkMail organization.


=head2 _request_id => Str


=cut

1;