
package Paws::Inspector::DescribeExclusionsResponse;
  use Moose;
  has Exclusions => (is => 'ro', isa => 'Paws::Inspector::ExclusionMap', traits => ['NameInRequest'], request_name => 'exclusions' , required => 1);
  has FailedItems => (is => 'ro', isa => 'Paws::Inspector::FailedItems', traits => ['NameInRequest'], request_name => 'failedItems' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::DescribeExclusionsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Exclusions => L<Paws::Inspector::ExclusionMap>

Information about the exclusions.


=head2 B<REQUIRED> FailedItems => L<Paws::Inspector::FailedItems>

Exclusion details that cannot be described. An error code is provided
for each failed item.


=head2 _request_id => Str


=cut

1;