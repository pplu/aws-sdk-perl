
package Paws::SES::ListTemplatesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has TemplatesMetadata => (is => 'ro', isa => 'ArrayRef[Paws::SES::TemplateMetadata]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::ListTemplatesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use for pagination.


=head2 TemplatesMetadata => ArrayRef[L<Paws::SES::TemplateMetadata>]

An array the contains the name of creation time stamp for each template
in your Amazon SES account.


=head2 _request_id => Str


=cut

