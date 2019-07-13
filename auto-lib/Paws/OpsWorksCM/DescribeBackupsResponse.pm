
package Paws::OpsWorksCM::DescribeBackupsResponse;
  use Moose;
  has Backups => (is => 'ro', isa => 'ArrayRef[Paws::OpsWorksCM::Backup]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorksCM::DescribeBackupsResponse

=head1 ATTRIBUTES


=head2 Backups => ArrayRef[L<Paws::OpsWorksCM::Backup>]

Contains the response to a C<DescribeBackups> request.


=head2 NextToken => Str

This is not currently implemented for C<DescribeBackups> requests.


=head2 _request_id => Str


=cut

1;