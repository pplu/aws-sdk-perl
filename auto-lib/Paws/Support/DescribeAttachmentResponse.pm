
package Paws::Support::DescribeAttachmentResponse;
  use Moose;
  has Attachment => (is => 'ro', isa => 'Paws::Support::Attachment', traits => ['NameInRequest'], request_name => 'attachment' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Support::DescribeAttachmentResponse

=head1 ATTRIBUTES


=head2 Attachment => L<Paws::Support::Attachment>

The attachment content and file name.


=head2 _request_id => Str


=cut

1;