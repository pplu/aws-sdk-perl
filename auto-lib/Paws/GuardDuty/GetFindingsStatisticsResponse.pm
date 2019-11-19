
package Paws::GuardDuty::GetFindingsStatisticsResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GuardDuty::Types qw/GuardDuty_FindingStatistics/;
  has FindingStatistics => (is => 'ro', isa => GuardDuty_FindingStatistics, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'FindingStatistics' => 'findingStatistics'
                     },
  'IsRequired' => {
                    'FindingStatistics' => 1
                  },
  'types' => {
               'FindingStatistics' => {
                                        'class' => 'Paws::GuardDuty::FindingStatistics',
                                        'type' => 'GuardDuty_FindingStatistics'
                                      },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::GetFindingsStatisticsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> FindingStatistics => GuardDuty_FindingStatistics

Finding statistics object.


=head2 _request_id => Str


=cut

