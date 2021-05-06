
package Paws::DynamoDB::DescribeGlobalTableOutput;
  use Moose;
  has GlobalTableDescription => (is => 'ro', isa => 'Paws::DynamoDB::GlobalTableDescription');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::DescribeGlobalTableOutput

=head1 ATTRIBUTES


=head2 GlobalTableDescription => L<Paws::DynamoDB::GlobalTableDescription>

Contains the details of the global table.


=head2 _request_id => Str


=cut

1;