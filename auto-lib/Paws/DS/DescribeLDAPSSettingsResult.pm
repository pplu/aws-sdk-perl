
package Paws::DS::DescribeLDAPSSettingsResult;
  use Moose;
  has LDAPSSettingsInfo => (is => 'ro', isa => 'ArrayRef[Paws::DS::LDAPSSettingInfo]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DS::DescribeLDAPSSettingsResult

=head1 ATTRIBUTES


=head2 LDAPSSettingsInfo => ArrayRef[L<Paws::DS::LDAPSSettingInfo>]

Information about LDAP security for the specified directory, including
status of enablement, state last updated date time, and the reason for
the state.


=head2 NextToken => Str

The next token used to retrieve the LDAPS settings if the number of
setting types exceeds page limit and there is another page.


=head2 _request_id => Str


=cut

1;