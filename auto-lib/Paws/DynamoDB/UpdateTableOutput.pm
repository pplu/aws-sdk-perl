
package Paws::DynamoDB::UpdateTableOutput;
  use Moose;
  has TableDescription => (is => 'ro', isa => 'Paws::DynamoDB::TableDescription');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::UpdateTableOutput

=head1 ATTRIBUTES


=head2 TableDescription => L<Paws::DynamoDB::TableDescription>






=cut

1;