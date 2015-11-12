
package Paws::Support::DescribeAttachmentResponse;
  use Moose;
  has Attachment => (is => 'ro', isa => 'Paws::Support::Attachment', traits => ['Unwrapped'], xmlname => 'attachment' );


### main pod documentation begin ###

=head1 NAME

Paws::Support::DescribeAttachmentResponse

=head1 ATTRIBUTES


=head2 Attachment => L<Paws::Support::Attachment>

  The attachment content and file name.


=cut

1;