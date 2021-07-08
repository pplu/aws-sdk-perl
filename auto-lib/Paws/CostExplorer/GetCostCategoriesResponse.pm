
package Paws::CostExplorer::GetCostCategoriesResponse;
  use Moose;
  has CostCategoryNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has CostCategoryValues => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NextPageToken => (is => 'ro', isa => 'Str');
  has ReturnSize => (is => 'ro', isa => 'Int', required => 1);
  has TotalSize => (is => 'ro', isa => 'Int', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::GetCostCategoriesResponse

=head1 ATTRIBUTES


=head2 CostCategoryNames => ArrayRef[Str|Undef]

The names of the Cost Categories.


=head2 CostCategoryValues => ArrayRef[Str|Undef]

The Cost Category values.

C<CostCategoryValues> are not returned if C<CostCategoryName> is not
specified in the request.


=head2 NextPageToken => Str

If the number of objects that are still available for retrieval exceeds
the limit, AWS returns a NextPageToken value in the response. To
retrieve the next batch of objects, provide the marker from the prior
call in your next request.


=head2 B<REQUIRED> ReturnSize => Int

The number of objects returned.


=head2 B<REQUIRED> TotalSize => Int

The total number of objects.


=head2 _request_id => Str


=cut

1;