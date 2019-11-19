# Generated from json/callresult_class.tt

package Paws::CodePipeline::PollForThirdPartyJobsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CodePipeline::Types qw/CodePipeline_ThirdPartyJob/;
  has Jobs => (is => 'ro', isa => ArrayRef[CodePipeline_ThirdPartyJob]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Jobs' => {
                           'class' => 'Paws::CodePipeline::ThirdPartyJob',
                           'type' => 'ArrayRef[CodePipeline_ThirdPartyJob]'
                         },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Jobs' => 'jobs'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::PollForThirdPartyJobsOutput

=head1 ATTRIBUTES


=head2 Jobs => ArrayRef[CodePipeline_ThirdPartyJob]

Information about the jobs to take action on.


=head2 _request_id => Str


=cut

1;