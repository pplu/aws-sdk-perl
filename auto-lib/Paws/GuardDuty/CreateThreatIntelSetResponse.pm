
package Paws::GuardDuty::CreateThreatIntelSetResponse;
  use Moose;
  has ThreatIntelSetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'threatIntelSetId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::CreateThreatIntelSetResponse

=head1 ATTRIBUTES


=head2 ThreatIntelSetId => Str




=head2 _request_id => Str


=cut

