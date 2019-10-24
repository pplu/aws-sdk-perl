# Generated from json/callresult_class.tt

package Paws::AlexaForBusiness::CreateSkillGroupResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AlexaForBusiness::Types qw//;
  has SkillGroupArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SkillGroupArn' => {
                                    'type' => 'Str'
                                  }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::CreateSkillGroupResponse

=head1 ATTRIBUTES


=head2 SkillGroupArn => Str

The ARN of the newly created skill group in the response.


=head2 _request_id => Str


=cut

1;