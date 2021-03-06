
package Paws::GuardDuty::ListDetectorsResponse;
  use Moose;
  has DetectorIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'detectorIds', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::ListDetectorsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DetectorIds => ArrayRef[Str|Undef]

A list of detector IDs.


=head2 NextToken => Str

The pagination parameter to be used on the next list operation to
retrieve more items.


=head2 _request_id => Str


=cut

