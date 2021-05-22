
package Paws::WorkMail::CreateMobileDeviceAccessRuleResponse;
  use Moose;
  has MobileDeviceAccessRuleId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::CreateMobileDeviceAccessRuleResponse

=head1 ATTRIBUTES


=head2 MobileDeviceAccessRuleId => Str

The identifier for the newly created mobile device access rule.


=head2 _request_id => Str


=cut

1;