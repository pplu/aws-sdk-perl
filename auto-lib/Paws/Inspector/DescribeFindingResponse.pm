
package Paws::Inspector::DescribeFindingResponse;
  use Moose;
  has Finding => (is => 'ro', isa => 'Paws::Inspector::Finding', traits => ['Unwrapped'], xmlname => 'finding' );


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::DescribeFindingResponse

=head1 ATTRIBUTES


=head2 Finding => L<Paws::Inspector::Finding>

  Information about the finding.


=cut

1;