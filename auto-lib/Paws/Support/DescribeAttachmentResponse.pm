
package Paws::Support::DescribeAttachmentResponse;
  use Moose;
  has Attachment => (is => 'ro', isa => 'Paws::Support::Attachment', traits => ['NameInRequest'], request_name => 'attachment' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Support::DescribeAttachmentResponse

=head1 ATTRIBUTES


=head2 Attachment => L<Paws::Support::Attachment>

This object includes the attachment content and file name.

In the previous response syntax, the value for the C<data> parameter
appears as C<blob>, which is represented as a base64-encoded string.
The value for C<fileName> is the name of the attachment, such as
C<troubleshoot-screenshot.png>.


=head2 _request_id => Str


=cut

1;