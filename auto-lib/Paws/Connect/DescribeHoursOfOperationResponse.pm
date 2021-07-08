
package Paws::Connect::DescribeHoursOfOperationResponse;
  use Moose;
  has HoursOfOperation => (is => 'ro', isa => 'Paws::Connect::HoursOfOperation');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::DescribeHoursOfOperationResponse

=head1 ATTRIBUTES


=head2 HoursOfOperation => L<Paws::Connect::HoursOfOperation>

The hours of operation.


=head2 _request_id => Str


=cut

