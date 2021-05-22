
package Paws::SESv2::TestRenderEmailTemplateResponse;
  use Moose;
  has RenderedTemplate => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::TestRenderEmailTemplateResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> RenderedTemplate => Str

The complete MIME message rendered by applying the data in the
C<TemplateData> parameter to the template specified in the TemplateName
parameter.


=head2 _request_id => Str


=cut

