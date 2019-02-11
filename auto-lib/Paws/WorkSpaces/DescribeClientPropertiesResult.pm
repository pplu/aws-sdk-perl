
package Paws::WorkSpaces::DescribeClientPropertiesResult;
  use Moose;
  has ClientPropertiesList => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpaces::ClientPropertiesResult]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::DescribeClientPropertiesResult

=head1 ATTRIBUTES


=head2 ClientPropertiesList => ArrayRef[L<Paws::WorkSpaces::ClientPropertiesResult>]

Information about the specified Amazon WorkSpaces clients.


=head2 _request_id => Str


=cut

1;