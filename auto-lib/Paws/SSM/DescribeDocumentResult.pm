
package Paws::SSM::DescribeDocumentResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has Document => (is => 'ro', isa => 'Paws::SSM::DocumentDescription');

}

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribeDocumentResult

=head1 ATTRIBUTES

=head2 Document => Paws::SSM::DocumentDescription

  

Information about the configuration document.











=cut

1;