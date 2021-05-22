
package Paws::SESv2::ListCustomVerificationEmailTemplatesResponse;
  use Moose;
  has CustomVerificationEmailTemplates => (is => 'ro', isa => 'ArrayRef[Paws::SESv2::CustomVerificationEmailTemplateMetadata]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::ListCustomVerificationEmailTemplatesResponse

=head1 ATTRIBUTES


=head2 CustomVerificationEmailTemplates => ArrayRef[L<Paws::SESv2::CustomVerificationEmailTemplateMetadata>]

A list of the custom verification email templates that exist in your
account.


=head2 NextToken => Str

A token indicating that there are additional custom verification email
templates available to be listed. Pass this token to a subsequent call
to C<ListCustomVerificationEmailTemplates> to retrieve the next 50
custom verification email templates.


=head2 _request_id => Str


=cut

