# Generated from json/callresult_class.tt

package Paws::SageMaker::ListModelsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SageMaker::Types qw/SageMaker_ModelSummary/;
  has Models => (is => 'ro', isa => ArrayRef[SageMaker_ModelSummary], required => 1);
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
               'Models' => {
                             'type' => 'ArrayRef[SageMaker_ModelSummary]',
                             'class' => 'Paws::SageMaker::ModelSummary'
                           }
             },
  'IsRequired' => {
                    'Models' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListModelsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Models => ArrayRef[SageMaker_ModelSummary]

An array of C<ModelSummary> objects, each of which lists a model.


=head2 NextToken => Str

If the response is truncated, Amazon SageMaker returns this token. To
retrieve the next set of models, use it in the subsequent request.


=head2 _request_id => Str


=cut

1;