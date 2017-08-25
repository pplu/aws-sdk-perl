
package Paws::CloudHSMv2::DeleteHsmResponse;
  use Moose;
  has HsmId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudHSMv2::DeleteHsmResponse

=head1 ATTRIBUTES


=head2 HsmId => Str

The identifier (ID) of the HSM that was deleted.


=head2 _request_id => Str


=cut

1;