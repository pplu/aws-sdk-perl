
package Paws::Backup::DescribeGlobalSettingsOutput;
  use Moose;
  has GlobalSettings => (is => 'ro', isa => 'Paws::Backup::GlobalSettings');
  has LastUpdateTime => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::DescribeGlobalSettingsOutput

=head1 ATTRIBUTES


=head2 GlobalSettings => L<Paws::Backup::GlobalSettings>

A list of resources along with the opt-in preferences for the account.


=head2 LastUpdateTime => Str

The date and time that the global settings were last updated. This
update is in Unix format and Coordinated Universal Time (UTC). The
value of C<LastUpdateTime> is accurate to milliseconds. For example,
the value 1516925490.087 represents Friday, January 26, 2018
12:11:30.087 AM.


=head2 _request_id => Str


=cut

