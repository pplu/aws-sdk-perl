
package Paws::SSM::ResetServiceSettingResult;
  use Moose;
  has ServiceSetting => (is => 'ro', isa => 'Paws::SSM::ServiceSetting');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::ResetServiceSettingResult

=head1 ATTRIBUTES


=head2 ServiceSetting => L<Paws::SSM::ServiceSetting>

The current, effective service setting after calling the
ResetServiceSetting API action.


=head2 _request_id => Str


=cut

1;