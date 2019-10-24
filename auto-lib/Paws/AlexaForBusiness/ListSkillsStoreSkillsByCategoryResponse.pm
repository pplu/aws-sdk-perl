# Generated from json/callresult_class.tt

package Paws::AlexaForBusiness::ListSkillsStoreSkillsByCategoryResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::AlexaForBusiness::Types qw/AlexaForBusiness_SkillsStoreSkill/;
  has NextToken => (is => 'ro', isa => Str);
  has SkillsStoreSkills => (is => 'ro', isa => ArrayRef[AlexaForBusiness_SkillsStoreSkill]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'SkillsStoreSkills' => {
                                        'class' => 'Paws::AlexaForBusiness::SkillsStoreSkill',
                                        'type' => 'ArrayRef[AlexaForBusiness_SkillsStoreSkill]'
                                      },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::ListSkillsStoreSkillsByCategoryResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The tokens used for pagination.


=head2 SkillsStoreSkills => ArrayRef[AlexaForBusiness_SkillsStoreSkill]

The skill store skills.


=head2 _request_id => Str


=cut

1;