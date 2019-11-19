# Generated from json/callresult_class.tt

package Paws::SageMaker::ListNotebookInstanceLifecycleConfigsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SageMaker::Types qw/SageMaker_NotebookInstanceLifecycleConfigSummary/;
  has NextToken => (is => 'ro', isa => Str);
  has NotebookInstanceLifecycleConfigs => (is => 'ro', isa => ArrayRef[SageMaker_NotebookInstanceLifecycleConfigSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'NotebookInstanceLifecycleConfigs' => {
                                                       'type' => 'ArrayRef[SageMaker_NotebookInstanceLifecycleConfigSummary]',
                                                       'class' => 'Paws::SageMaker::NotebookInstanceLifecycleConfigSummary'
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

Paws::SageMaker::ListNotebookInstanceLifecycleConfigsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If the response is truncated, Amazon SageMaker returns this token. To
get the next set of lifecycle configurations, use it in the next
request.


=head2 NotebookInstanceLifecycleConfigs => ArrayRef[SageMaker_NotebookInstanceLifecycleConfigSummary]

An array of C<NotebookInstanceLifecycleConfiguration> objects, each
listing a lifecycle configuration.


=head2 _request_id => Str


=cut

1;