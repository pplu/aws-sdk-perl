
package Paws::Inspector::DescribeRunResponse;
  use Moose;
  has Run => (is => 'ro', isa => 'Paws::Inspector::Run', traits => ['Unwrapped'], xmlname => 'run' );


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::DescribeRunResponse

=head1 ATTRIBUTES

=head2 Run => L<Paws::Inspector::Run>

  Information about the assessment run.


=cut

1;