
package Paws::SageMaker::RenderUiTemplateResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::RenderingError]', required => 1);
  has RenderedContent => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::RenderUiTemplateResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Errors => ArrayRef[L<Paws::SageMaker::RenderingError>]

A list of one or more C<RenderingError> objects if any were encountered
while rendering the template. If there were no errors, the list is
empty.


=head2 B<REQUIRED> RenderedContent => Str

A Liquid template that renders the HTML for the worker UI.


=head2 _request_id => Str


=cut

1;