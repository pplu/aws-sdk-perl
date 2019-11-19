# Generated from json/callresult_class.tt

package Paws::AlexaForBusiness::ListSkillsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::AlexaForBusiness::Types qw/AlexaForBusiness_SkillSummary/;
  has NextToken => (is => 'ro', isa => Str);
  has SkillSummaries => (is => 'ro', isa => ArrayRef[AlexaForBusiness_SkillSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'SkillSummaries' => {
                                     'class' => 'Paws::AlexaForBusiness::SkillSummary',
                                     'type' => 'ArrayRef[AlexaForBusiness_SkillSummary]'
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

Paws::AlexaForBusiness::ListSkillsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token returned to indicate that there is more data available.


=head2 SkillSummaries => ArrayRef[AlexaForBusiness_SkillSummary]

The list of enabled skills requested. Required.


=head2 _request_id => Str


=cut

1;