
package Paws::Inspector::AddAttributesToFindingsResponse;
  use Moose;
  has FailedItems => (is => 'ro', isa => 'HashRef[Paws::Inspector::FailedItemDetails]', traits => ['Unwrapped'], xmlname => 'failedItems' , required => 1);


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::AddAttributesToFindingsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> FailedItems => HashRef[L<Paws::Inspector::FailedItemDetails>]

Attributes details that cannot be described. An error code is provided
for each failed item.




=cut

1;