
package Paws::Quicksight::DescribeDataSetResponse;
  use Moose;
  has DataSet => (is => 'ro', isa => 'Paws::Quicksight::DataSet');
  has RequestId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::DescribeDataSetResponse

=head1 ATTRIBUTES


=head2 DataSet => L<Paws::Quicksight::DataSet>

Information on the dataset.


=head2 RequestId => Str

The AWS request ID for this operation.


=head2 Status => Int

The HTTP status of the request.


=head2 _request_id => Str


=cut

