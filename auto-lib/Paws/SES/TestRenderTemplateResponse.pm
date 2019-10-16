
package Paws::SES::TestRenderTemplateResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SES::Types qw//;
  has RenderedTemplate => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RenderedTemplate' => {
                                       'type' => 'Str'
                                     },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }
  
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

