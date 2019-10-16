
package Paws::SES::GetTemplateResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SES::Types qw/SES_Template/;
  has Template => (is => 'ro', isa => SES_Template);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Template' => {
                               'class' => 'Paws::SES::Template',
                               'type' => 'SES_Template'
                             }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::GetTemplateResponse

=head1 ATTRIBUTES


=head2 Template => SES_Template




=head2 _request_id => Str


=cut

