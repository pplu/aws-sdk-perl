
package Paws::ServiceCatalog::ListRecordHistoryOutput;
  use Moose;
  has NextPageToken => (is => 'ro', isa => 'Str');
  has RecordDetails => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::RecordDetail]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ListRecordHistoryOutput

=head1 ATTRIBUTES


=head2 NextPageToken => Str

The page token to use to retrieve the next set of results. If there are
no additional results, this value is null.


=head2 RecordDetails => ArrayRef[L<Paws::ServiceCatalog::RecordDetail>]

The records, in reverse chronological order.


=head2 _request_id => Str


=cut

1;