# Generated from json/callresult_class.tt

package Paws::DataPipeline::ReportTaskProgressOutput;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::DataPipeline::Types qw//;
  has Canceled => (is => 'ro', isa => Bool, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Canceled' => {
                               'type' => 'Bool'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Canceled' => 'canceled'
                     },
  'IsRequired' => {
                    'Canceled' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::ReportTaskProgressOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Canceled => Bool

If true, the calling task runner should cancel processing of the task.
The task runner does not need to call SetTaskStatus for canceled tasks.


=head2 _request_id => Str


=cut

1;