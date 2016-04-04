
package Paws::Inspector::DescribeFindingsResponse;
  use Moose;
  has FailedItems => (is => 'ro', isa => 'Paws::Inspector::FailedItems', traits => ['Unwrapped'], xmlname => 'failedItems' , required => 1);
  has Findings => (is => 'ro', isa => 'ArrayRef[Paws::Inspector::Finding]', traits => ['Unwrapped'], xmlname => 'findings' , required => 1);


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::DescribeFindingsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> FailedItems => L<Paws::Inspector::FailedItems>

Finding details that cannot be described. An error code is provided for
each failed item.



=head2 B<REQUIRED> Findings => ArrayRef[L<Paws::Inspector::Finding>]

Information about the finding(s).




=cut

1;