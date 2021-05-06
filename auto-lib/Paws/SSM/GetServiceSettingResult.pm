
package Paws::SSM::GetServiceSettingResult;
  use Moose;
  has ServiceSetting => (is => 'ro', isa => 'Paws::SSM::ServiceSetting');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetServiceSettingResult

=head1 ATTRIBUTES


=head2 ServiceSetting => L<Paws::SSM::ServiceSetting>

The query result of the current service setting.


=head2 _request_id => Str


=cut

1;