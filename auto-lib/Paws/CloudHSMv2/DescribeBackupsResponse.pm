
package Paws::CloudHSMv2::DescribeBackupsResponse;
  use Moose;
  has Backups => (is => 'ro', isa => 'ArrayRef[Paws::CloudHSMv2::Backup]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudHSMv2::DescribeBackupsResponse

=head1 ATTRIBUTES


=head2 Backups => ArrayRef[L<Paws::CloudHSMv2::Backup>]

A list of backups.


=head2 NextToken => Str

An opaque string that indicates that the response contains only a
subset of backups. Use this value in a subsequent C<DescribeBackups>
request to get more backups.


=head2 _request_id => Str


=cut

1;