
package Paws::IoT::ListTargetsForPolicyResponse;
  use Moose;
  has NextMarker => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextMarker');
  has Targets => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'targets');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListTargetsForPolicyResponse

=head1 ATTRIBUTES


=head2 NextMarker => Str

A marker used to get the next set of results.


=head2 Targets => ArrayRef[Str|Undef]

The policy targets.


=head2 _request_id => Str


=cut

