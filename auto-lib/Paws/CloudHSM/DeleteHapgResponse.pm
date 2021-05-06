
package Paws::CloudHSM::DeleteHapgResponse;
  use Moose;
  has Status => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudHSM::DeleteHapgResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Status => Str

The status of the action.


=head2 _request_id => Str


=cut

1;