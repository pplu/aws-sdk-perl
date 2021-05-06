
package Paws::CloudHSM::CreateHapgResponse;
  use Moose;
  has HapgArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudHSM::CreateHapgResponse

=head1 ATTRIBUTES


=head2 HapgArn => Str

The ARN of the high-availability partition group.


=head2 _request_id => Str


=cut

1;