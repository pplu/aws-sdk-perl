# Generated from json/callresult_class.tt

package Paws::AlexaForBusiness::GetSkillGroupResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AlexaForBusiness::Types qw/AlexaForBusiness_SkillGroup/;
  has SkillGroup => (is => 'ro', isa => AlexaForBusiness_SkillGroup);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SkillGroup' => {
                                 'class' => 'Paws::AlexaForBusiness::SkillGroup',
                                 'type' => 'AlexaForBusiness_SkillGroup'
                               }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::GetSkillGroupResponse

=head1 ATTRIBUTES


=head2 SkillGroup => AlexaForBusiness_SkillGroup

The details of the skill group requested. Required.


=head2 _request_id => Str


=cut

1;