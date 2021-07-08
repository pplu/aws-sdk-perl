
package Paws::DS::DescribeRegionsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has RegionsDescription => (is => 'ro', isa => 'ArrayRef[Paws::DS::RegionDescription]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DS::DescribeRegionsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

If not null, more results are available. Pass this value for the
C<NextToken> parameter in a subsequent call to DescribeRegions to
retrieve the next set of items.


=head2 RegionsDescription => ArrayRef[L<Paws::DS::RegionDescription>]

List of Region information related to the directory for each replicated
Region.


=head2 _request_id => Str


=cut

1;