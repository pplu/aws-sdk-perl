
package Paws::CloudHSM::DeleteHapgResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has Status => (is => 'ro', isa => 'Str', required => 1);

}

### main pod documentation begin ###

=head1 NAME

Paws::CloudHSM::DeleteHapgResponse

=head1 ATTRIBUTES

=head2 B<REQUIRED> Status => Str

  

The status of the action.











=cut

1;