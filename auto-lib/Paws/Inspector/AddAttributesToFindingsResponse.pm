
package Paws::Inspector::AddAttributesToFindingsResponse;
  use Moose;
  has FailedItems => (is => 'ro', isa => 'Paws::Inspector::FailedItems', traits => ['Unwrapped'], xmlname => 'failedItems' , required => 1);


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::AddAttributesToFindingsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> FailedItems => L<Paws::Inspector::FailedItems>

Attribute details that cannot be described. An error code is provided
for each failed item.




=cut

1;