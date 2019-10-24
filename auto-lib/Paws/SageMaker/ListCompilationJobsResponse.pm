# Generated from json/callresult_class.tt

package Paws::SageMaker::ListCompilationJobsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SageMaker::Types qw/SageMaker_CompilationJobSummary/;
  has CompilationJobSummaries => (is => 'ro', isa => ArrayRef[SageMaker_CompilationJobSummary], required => 1);
  has NextToken => (is => 'ro', isa => Str);

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
               'CompilationJobSummaries' => {
                                              'class' => 'Paws::SageMaker::CompilationJobSummary',
                                              'type' => 'ArrayRef[SageMaker_CompilationJobSummary]'
                                            }
             },
  'IsRequired' => {
                    'CompilationJobSummaries' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListCompilationJobsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CompilationJobSummaries => ArrayRef[SageMaker_CompilationJobSummary]

An array of CompilationJobSummary objects, each describing a model
compilation job.


=head2 NextToken => Str

If the response is truncated, Amazon SageMaker returns this
C<NextToken>. To retrieve the next set of model compilation jobs, use
this token in the next request.


=head2 _request_id => Str


=cut

1;