
package Paws::GuardDuty::CreateThreatIntelSetResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GuardDuty::Types qw//;
  has ThreatIntelSetId => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ThreatIntelSetId' => {
                                       'type' => 'Str'
                                     }
             },
  'NameInRequest' => {
                       'ThreatIntelSetId' => 'threatIntelSetId'
                     },
  'IsRequired' => {
                    'ThreatIntelSetId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::CreateThreatIntelSetResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ThreatIntelSetId => Str

The ID of the ThreatIntelSet resource.


=head2 _request_id => Str


=cut

