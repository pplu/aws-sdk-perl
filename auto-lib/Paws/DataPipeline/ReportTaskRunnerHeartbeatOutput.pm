# Generated from json/callresult_class.tt

package Paws::DataPipeline::ReportTaskRunnerHeartbeatOutput;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::DataPipeline::Types qw//;
  has Terminate => (is => 'ro', isa => Bool, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Terminate' => 'terminate'
                     },
  'IsRequired' => {
                    'Terminate' => 1
                  },
  'types' => {
               'Terminate' => {
                                'type' => 'Bool'
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

Paws::DataPipeline::ReportTaskRunnerHeartbeatOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Terminate => Bool

Indicates whether the calling task runner should terminate.


=head2 _request_id => Str


=cut

1;