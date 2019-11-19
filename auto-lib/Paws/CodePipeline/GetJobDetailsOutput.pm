# Generated from json/callresult_class.tt

package Paws::CodePipeline::GetJobDetailsOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodePipeline::Types qw/CodePipeline_JobDetails/;
  has JobDetails => (is => 'ro', isa => CodePipeline_JobDetails);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'JobDetails' => {
                                 'class' => 'Paws::CodePipeline::JobDetails',
                                 'type' => 'CodePipeline_JobDetails'
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

Paws::CodePipeline::GetJobDetailsOutput

=head1 ATTRIBUTES


=head2 JobDetails => CodePipeline_JobDetails

The details of the job.

If AWSSessionCredentials is used, a long-running job can call
C<GetJobDetails> again to obtain new credentials.


=head2 _request_id => Str


=cut

1;