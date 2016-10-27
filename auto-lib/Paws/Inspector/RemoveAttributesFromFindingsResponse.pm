
package Paws::Inspector::RemoveAttributesFromFindingsResponse;
  use Moose;
  has FailedItems => (is => 'ro', isa => 'Paws::Inspector::FailedItems', traits => ['Unwrapped'], xmlname => 'failedItems' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::RemoveAttributesFromFindingsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> FailedItems => L<Paws::Inspector::FailedItems>

Attributes details that cannot be described. An error code is provided
for each failed item.




=cut

1;