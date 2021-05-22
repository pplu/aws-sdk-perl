
package Paws::LookoutVision::ListDatasetEntriesResponse;
  use Moose;
  has DatasetEntries => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutVision::ListDatasetEntriesResponse

=head1 ATTRIBUTES


=head2 DatasetEntries => ArrayRef[Str|Undef]

A list of the entries (JSON Lines) within the dataset.


=head2 NextToken => Str

If the response is truncated, Amazon Lookout for Vision returns this
token that you can use in the subsequent request to retrieve the next
set ofdataset entries.


=head2 _request_id => Str


=cut

