
package Paws::SES::TestRenderTemplateResponse;
  use Moose;
  has RenderedTemplate => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::TestRenderTemplateResponse

=head1 ATTRIBUTES


=head2 RenderedTemplate => Str

The complete MIME message rendered by applying the data in the
TemplateData parameter to the template specified in the TemplateName
parameter.


=head2 _request_id => Str


=cut

