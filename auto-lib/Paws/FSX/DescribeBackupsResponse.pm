
package Paws::FSX::DescribeBackupsResponse;
  use Moose;
  has Backups => (is => 'ro', isa => 'ArrayRef[Paws::FSX::Backup]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FSX::DescribeBackupsResponse

=head1 ATTRIBUTES


=head2 Backups => ArrayRef[L<Paws::FSX::Backup>]

Any array of backups.


=head2 NextToken => Str

This is present if there are more backups than returned in the response
(String). You can use the C<NextToken> value in the later request to
fetch the backups.


=head2 _request_id => Str


=cut

1;