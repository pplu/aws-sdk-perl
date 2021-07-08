
package Paws::Translate::ListParallelDataResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ParallelDataPropertiesList => (is => 'ro', isa => 'ArrayRef[Paws::Translate::ParallelDataProperties]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Translate::ListParallelDataResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The string to use in a subsequent request to get the next page of
results in a paginated response. This value is null if there are no
additional pages.


=head2 ParallelDataPropertiesList => ArrayRef[L<Paws::Translate::ParallelDataProperties>]

The properties of the parallel data resources returned by this request.


=head2 _request_id => Str


=cut

1;