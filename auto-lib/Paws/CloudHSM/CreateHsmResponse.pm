
package Paws::CloudHSM::CreateHsmResponse;
  use Moose;
  has HsmArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudHSM::CreateHsmResponse

=head1 ATTRIBUTES


=head2 HsmArn => Str

The ARN of the HSM.


=head2 _request_id => Str


=cut

1;