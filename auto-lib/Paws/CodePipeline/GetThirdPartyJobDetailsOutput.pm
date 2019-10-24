# Generated from json/callresult_class.tt

package Paws::CodePipeline::GetThirdPartyJobDetailsOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodePipeline::Types qw/CodePipeline_ThirdPartyJobDetails/;
  has JobDetails => (is => 'ro', isa => CodePipeline_ThirdPartyJobDetails);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'JobDetails' => {
                                 'class' => 'Paws::CodePipeline::ThirdPartyJobDetails',
                                 'type' => 'CodePipeline_ThirdPartyJobDetails'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'JobDetails' => 'jobDetails'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::GetThirdPartyJobDetailsOutput

=head1 ATTRIBUTES


=head2 JobDetails => CodePipeline_ThirdPartyJobDetails

The details of the job, including any protected values defined for the
job.


=head2 _request_id => Str


=cut

1;