
package Paws::SSM::ListResourceDataSyncResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceDataSyncItems => (is => 'ro', isa => 'ArrayRef[Paws::SSM::ResourceDataSyncItem]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::ListResourceDataSyncResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of items to return. Use this token to get
the next set of results.


=head2 ResourceDataSyncItems => ArrayRef[L<Paws::SSM::ResourceDataSyncItem>]

A list of your current Resource Data Sync configurations and their
statuses.


=head2 _request_id => Str


=cut

1;