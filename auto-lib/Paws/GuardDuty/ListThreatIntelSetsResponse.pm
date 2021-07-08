
package Paws::GuardDuty::ListThreatIntelSetsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ThreatIntelSetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'threatIntelSetIds', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::ListThreatIntelSetsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination parameter to be used on the next list operation to
retrieve more items.


=head2 B<REQUIRED> ThreatIntelSetIds => ArrayRef[Str|Undef]

The IDs of the ThreatIntelSet resources.


=head2 _request_id => Str


=cut

