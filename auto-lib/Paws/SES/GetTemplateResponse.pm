# Generated from callresult_class.tt

package Paws::SES::GetTemplateResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SES::Types qw/SES_Template/;
  has Template => (is => 'ro', isa => SES_Template);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Template' => {
                               'class' => 'Paws::SES::Template',
                               'type' => 'SES_Template'
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

Paws::SES::GetTemplateResponse

=head1 ATTRIBUTES


=head2 Template => SES_Template




=head2 _request_id => Str


=cut

