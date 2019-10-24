# Generated from json/callresult_class.tt

package Paws::CodePipeline::PollForJobsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CodePipeline::Types qw/CodePipeline_Job/;
  has Jobs => (is => 'ro', isa => ArrayRef[CodePipeline_Job]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Jobs' => {
                           'class' => 'Paws::CodePipeline::Job',
                           'type' => 'ArrayRef[CodePipeline_Job]'
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

Paws::CodePipeline::PollForJobsOutput

=head1 ATTRIBUTES


=head2 Jobs => ArrayRef[CodePipeline_Job]

Information about the jobs to take action on.


=head2 _request_id => Str


=cut

1;