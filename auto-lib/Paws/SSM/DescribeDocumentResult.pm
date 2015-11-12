
package Paws::SSM::DescribeDocumentResult;
  use Moose;
  has Document => (is => 'ro', isa => 'Paws::SSM::DocumentDescription');


### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribeDocumentResult

=head1 ATTRIBUTES


=head2 Document => L<Paws::SSM::DocumentDescription>

  Information about the SSM document.


=cut

1;