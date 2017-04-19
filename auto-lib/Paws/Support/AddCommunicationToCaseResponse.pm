
package Paws::Support::AddCommunicationToCaseResponse;
  use Moose;
  has Result => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'result' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Support::AddCommunicationToCaseResponse

=head1 ATTRIBUTES


=head2 Result => Bool

True if AddCommunicationToCase succeeds. Otherwise, returns an error.


=head2 _request_id => Str


=cut

1;