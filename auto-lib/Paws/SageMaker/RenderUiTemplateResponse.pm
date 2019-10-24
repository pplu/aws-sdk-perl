# Generated from json/callresult_class.tt

package Paws::SageMaker::RenderUiTemplateResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SageMaker::Types qw/SageMaker_RenderingError/;
  has Errors => (is => 'ro', isa => ArrayRef[SageMaker_RenderingError], required => 1);
  has RenderedContent => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RenderedContent' => {
                                      'type' => 'Str'
                                    },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Errors' => {
                             'class' => 'Paws::SageMaker::RenderingError',
                             'type' => 'ArrayRef[SageMaker_RenderingError]'
                           }
             },
  'IsRequired' => {
                    'RenderedContent' => 1,
                    'Errors' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::RenderUiTemplateResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Errors => ArrayRef[SageMaker_RenderingError]

A list of one or more C<RenderingError> objects if any were encountered
while rendering the template. If there were no errors, the list is
empty.


=head2 B<REQUIRED> RenderedContent => Str

A Liquid template that renders the HTML for the worker UI.


=head2 _request_id => Str


=cut

1;