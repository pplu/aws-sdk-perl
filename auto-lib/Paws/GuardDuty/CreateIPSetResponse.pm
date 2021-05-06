
package Paws::GuardDuty::CreateIPSetResponse;
  use Moose;
  has IpSetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ipSetId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::CreateIPSetResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> IpSetId => Str

The ID of the IPSet resource.


=head2 _request_id => Str


=cut

