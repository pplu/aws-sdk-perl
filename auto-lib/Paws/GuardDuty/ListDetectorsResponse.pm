
package Paws::GuardDuty::ListDetectorsResponse;
  use Moose;
  has DetectorIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'detectorIds');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::ListDetectorsResponse

=head1 ATTRIBUTES


=head2 DetectorIds => ArrayRef[Str|Undef]




=head2 NextToken => Str




=head2 _request_id => Str


=cut

