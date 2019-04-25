
package Paws::EC2::DescribeAggregateIdFormatResult;
  use Moose;
  has Statuses => (is => 'ro', isa => 'ArrayRef[Paws::EC2::IdFormat]', request_name => 'statusSet', traits => ['NameInRequest',]);
  has UseLongIdsAggregated => (is => 'ro', isa => 'Bool', request_name => 'useLongIdsAggregated', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeAggregateIdFormatResult

=head1 ATTRIBUTES


=head2 Statuses => ArrayRef[L<Paws::EC2::IdFormat>]

Information about each resource's ID format.


=head2 UseLongIdsAggregated => Bool

Indicates whether all resource types in the region are configured to
use longer IDs. This value is only C<true> if all users are configured
to use longer IDs for all resources types in the region.


=head2 _request_id => Str


=cut

