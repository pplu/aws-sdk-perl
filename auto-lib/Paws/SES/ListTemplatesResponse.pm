# Generated from callresult_class.tt

package Paws::SES::ListTemplatesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SES::Types qw/SES_TemplateMetadata/;
  has NextToken => (is => 'ro', isa => Str);
  has TemplatesMetadata => (is => 'ro', isa => ArrayRef[SES_TemplateMetadata]);

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
               'TemplatesMetadata' => {
                                        'class' => 'Paws::SES::TemplateMetadata',
                                        'type' => 'ArrayRef[SES_TemplateMetadata]'
                                      }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::ListTemplatesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token indicating that there are additional email templates available
to be listed. Pass this token to a subsequent call to C<ListTemplates>
to retrieve the next 50 email templates.


=head2 TemplatesMetadata => ArrayRef[SES_TemplateMetadata]

An array the contains the name and creation time stamp for each
template in your Amazon SES account.


=head2 _request_id => Str


=cut

