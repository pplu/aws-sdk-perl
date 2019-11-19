# Generated from json/callresult_class.tt

package Paws::AlexaForBusiness::SearchSkillGroupsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::AlexaForBusiness::Types qw/AlexaForBusiness_SkillGroupData/;
  has NextToken => (is => 'ro', isa => Str);
  has SkillGroups => (is => 'ro', isa => ArrayRef[AlexaForBusiness_SkillGroupData]);
  has TotalCount => (is => 'ro', isa => Int);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SkillGroups' => {
                                  'type' => 'ArrayRef[AlexaForBusiness_SkillGroupData]',
                                  'class' => 'Paws::AlexaForBusiness::SkillGroupData'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'TotalCount' => {
                                 'type' => 'Int'
                               }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::SearchSkillGroupsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token returned to indicate that there is more data available.


=head2 SkillGroups => ArrayRef[AlexaForBusiness_SkillGroupData]

The skill groups that meet the filter criteria, in sort order.


=head2 TotalCount => Int

The total number of skill groups returned.


=head2 _request_id => Str


=cut

1;