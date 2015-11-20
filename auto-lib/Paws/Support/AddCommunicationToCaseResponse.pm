
package Paws::Support::AddCommunicationToCaseResponse;
  use Moose;
  has Result => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'result' );


### main pod documentation begin ###

=head1 NAME

Paws::Support::AddCommunicationToCaseResponse

=head1 ATTRIBUTES


=head2 Result => Bool

  True if AddCommunicationToCase succeeds. Otherwise, returns an error.


=cut

1;