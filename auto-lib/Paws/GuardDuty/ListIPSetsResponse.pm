
package Paws::GuardDuty::ListIPSetsResponse;
  use Moose;
  has IpSetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'ipSetIds');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::ListIPSetsResponse

=head1 ATTRIBUTES


=head2 IpSetIds => ArrayRef[Str|Undef]




=head2 NextToken => Str




=head2 _request_id => Str


=cut

