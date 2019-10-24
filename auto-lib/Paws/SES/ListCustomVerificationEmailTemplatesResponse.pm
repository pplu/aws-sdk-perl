# Generated from callresult_class.tt

package Paws::SES::ListCustomVerificationEmailTemplatesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SES::Types qw/SES_CustomVerificationEmailTemplate/;
  has CustomVerificationEmailTemplates => (is => 'ro', isa => ArrayRef[SES_CustomVerificationEmailTemplate]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CustomVerificationEmailTemplates' => {
                                                       'class' => 'Paws::SES::CustomVerificationEmailTemplate',
                                                       'type' => 'ArrayRef[SES_CustomVerificationEmailTemplate]'
                                                     },
               'NextToken' => {
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

Paws::SES::ListCustomVerificationEmailTemplatesResponse

=head1 ATTRIBUTES


=head2 CustomVerificationEmailTemplates => ArrayRef[SES_CustomVerificationEmailTemplate]

A list of the custom verification email templates that exist in your
account.


=head2 NextToken => Str

A token indicating that there are additional custom verification email
templates available to be listed. Pass this token to a subsequent call
to C<ListTemplates> to retrieve the next 50 custom verification email
templates.


=head2 _request_id => Str


=cut

