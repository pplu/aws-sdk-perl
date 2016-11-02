
package Paws::SSM::DescribeDocumentResult;
  use Moose;
  has Document => (is => 'ro', isa => 'Paws::SSM::DocumentDescription');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribeDocumentResult

=head1 ATTRIBUTES


=head2 Document => L<Paws::SSM::DocumentDescription>

Information about the SSM document.


=head2 _request_id => Str


=cut

1;