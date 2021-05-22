
package Paws::IoTSiteWise::BatchPutAssetPropertyValueResponse;
  use Moose;
  has ErrorEntries => (is => 'ro', isa => 'ArrayRef[Paws::IoTSiteWise::BatchPutAssetPropertyErrorEntry]', traits => ['NameInRequest'], request_name => 'errorEntries', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::BatchPutAssetPropertyValueResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ErrorEntries => ArrayRef[L<Paws::IoTSiteWise::BatchPutAssetPropertyErrorEntry>]

A list of the errors (if any) associated with the batch put request.
Each error entry contains the C<entryId> of the entry that failed.


=head2 _request_id => Str


=cut

