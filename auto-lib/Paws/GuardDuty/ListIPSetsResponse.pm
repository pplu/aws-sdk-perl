
package Paws::GuardDuty::ListIPSetsResponse;
  use Moose;
  has IpSetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'ipSetIds', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::ListIPSetsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> IpSetIds => ArrayRef[Str|Undef]

The IDs of the IPSet resources.


=head2 NextToken => Str

The pagination parameter to be used on the next list operation to
retrieve more items.


=head2 _request_id => Str


=cut

