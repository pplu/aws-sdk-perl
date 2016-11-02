
package Paws::CloudHSM::CreateLunaClientResponse;
  use Moose;
  has ClientArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudHSM::CreateLunaClientResponse

=head1 ATTRIBUTES


=head2 ClientArn => Str

The ARN of the client.


=head2 _request_id => Str


=cut

1;