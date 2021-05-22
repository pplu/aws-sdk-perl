
package Paws::Lightsail::GetDisksResult;
  use Moose;
  has Disks => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::Disk]', traits => ['NameInRequest'], request_name => 'disks' );
  has NextPageToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextPageToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetDisksResult

=head1 ATTRIBUTES


=head2 Disks => ArrayRef[L<Paws::Lightsail::Disk>]

An array of objects containing information about all block storage
disks.


=head2 NextPageToken => Str

The token to advance to the next page of results from your request.

A next page token is not returned if there are no more results to
display.

To get the next page of results, perform another C<GetDisks> request
and specify the next page token using the C<pageToken> parameter.


=head2 _request_id => Str


=cut

1;