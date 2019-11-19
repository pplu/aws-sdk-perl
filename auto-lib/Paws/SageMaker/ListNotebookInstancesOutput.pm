# Generated from json/callresult_class.tt

package Paws::SageMaker::ListNotebookInstancesOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SageMaker::Types qw/SageMaker_NotebookInstanceSummary/;
  has NextToken => (is => 'ro', isa => Str);
  has NotebookInstances => (is => 'ro', isa => ArrayRef[SageMaker_NotebookInstanceSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NotebookInstances' => {
                                        'type' => 'ArrayRef[SageMaker_NotebookInstanceSummary]',
                                        'class' => 'Paws::SageMaker::NotebookInstanceSummary'
                                      }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListNotebookInstancesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If the response to the previous C<ListNotebookInstances> request was
truncated, Amazon SageMaker returns this token. To retrieve the next
set of notebook instances, use the token in the next request.


=head2 NotebookInstances => ArrayRef[SageMaker_NotebookInstanceSummary]

An array of C<NotebookInstanceSummary> objects, one for each notebook
instance.


=head2 _request_id => Str


=cut

1;