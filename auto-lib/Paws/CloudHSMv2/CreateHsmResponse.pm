
package Paws::CloudHSMv2::CreateHsmResponse;
  use Moose;
  has Hsm => (is => 'ro', isa => 'Paws::CloudHSMv2::Hsm');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudHSMv2::CreateHsmResponse

=head1 ATTRIBUTES


=head2 Hsm => L<Paws::CloudHSMv2::Hsm>

Information about the HSM that was created.


=head2 _request_id => Str


=cut

1;