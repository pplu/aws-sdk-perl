# Generated from json/callresult_class.tt

package Paws::SageMaker::CreateNotebookInstanceLifecycleConfigOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SageMaker::Types qw//;
  has NotebookInstanceLifecycleConfigArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NotebookInstanceLifecycleConfigArn' => {
                                                         'type' => 'Str'
                                                       }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateNotebookInstanceLifecycleConfigOutput

=head1 ATTRIBUTES


=head2 NotebookInstanceLifecycleConfigArn => Str

The Amazon Resource Name (ARN) of the lifecycle configuration.


=head2 _request_id => Str


=cut

1;