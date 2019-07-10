
package Paws::SSM::GetOpsItemResponse;
  use Moose;
  has OpsItem => (is => 'ro', isa => 'Paws::SSM::OpsItem');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetOpsItemResponse

=head1 ATTRIBUTES


=head2 OpsItem => L<Paws::SSM::OpsItem>

The OpsItem.


=head2 _request_id => Str


=cut

1;