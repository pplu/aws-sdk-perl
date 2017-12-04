
package Paws::GuardDuty::GetMasterAccountResponse;
  use Moose;
  has Master => (is => 'ro', isa => 'Paws::GuardDuty::Master', traits => ['NameInRequest'], request_name => 'master');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::GetMasterAccountResponse

=head1 ATTRIBUTES


=head2 Master => L<Paws::GuardDuty::Master>




=head2 _request_id => Str


=cut

