
package Paws::CloudHSM::DeleteLunaClientResponse;
  use Moose;
  has Status => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudHSM::DeleteLunaClientResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Status => Str

The status of the action.




=cut

1;