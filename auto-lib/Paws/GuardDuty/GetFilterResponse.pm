
package Paws::GuardDuty::GetFilterResponse;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::GuardDuty::Types qw/GuardDuty_FindingCriteria GuardDuty_TagMap/;
  has Action => (is => 'ro', isa => Str, required => 1);
  has Description => (is => 'ro', isa => Str);
  has FindingCriteria => (is => 'ro', isa => GuardDuty_FindingCriteria, required => 1);
  has Name => (is => 'ro', isa => Str, required => 1);
  has Rank => (is => 'ro', isa => Int);
  has Tags => (is => 'ro', isa => GuardDuty_TagMap);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Rank' => {
                           'type' => 'Int'
                         },
               'Action' => {
                             'type' => 'Str'
                           },
               'Name' => {
                           'type' => 'Str'
                         },
               'Tags' => {
                           'type' => 'GuardDuty_TagMap',
                           'class' => 'Paws::GuardDuty::TagMap'
                         },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'FindingCriteria' => {
                                      'class' => 'Paws::GuardDuty::FindingCriteria',
                                      'type' => 'GuardDuty_FindingCriteria'
                                    },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Tags' => 'tags',
                       'Description' => 'description',
                       'Rank' => 'rank',
                       'FindingCriteria' => 'findingCriteria',
                       'Action' => 'action',
                       'Name' => 'name'
                     },
  'IsRequired' => {
                    'Name' => 1,
                    'Action' => 1,
                    'FindingCriteria' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::GetFilterResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Action => Str

Specifies the action that is to be applied to the findings that match
the filter.

Valid values are: C<"NOOP">, C<"ARCHIVE">
=head2 Description => Str

The description of the filter.


=head2 B<REQUIRED> FindingCriteria => GuardDuty_FindingCriteria

Represents the criteria to be used in the filter for querying findings.


=head2 B<REQUIRED> Name => Str

The name of the filter.


=head2 Rank => Int

Specifies the position of the filter in the list of current filters.
Also specifies the order in which this filter is applied to the
findings.


=head2 Tags => GuardDuty_TagMap

The tags of the filter resource.


=head2 _request_id => Str


=cut

