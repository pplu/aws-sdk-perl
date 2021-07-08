
package Paws::SESv2::ListEmailTemplatesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has TemplatesMetadata => (is => 'ro', isa => 'ArrayRef[Paws::SESv2::EmailTemplateMetadata]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::ListEmailTemplatesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token indicating that there are additional email templates available
to be listed. Pass this token to a subsequent C<ListEmailTemplates>
call to retrieve the next 10 email templates.


=head2 TemplatesMetadata => ArrayRef[L<Paws::SESv2::EmailTemplateMetadata>]

An array the contains the name and creation time stamp for each
template in your Amazon SES account.


=head2 _request_id => Str


=cut

