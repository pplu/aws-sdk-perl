
package Paws::CloudWatchEvents::DescribePartnerEventSourceResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::DescribePartnerEventSourceResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN of the event source.


=head2 Name => Str

The name of the event source.


=head2 _request_id => Str


=cut

1;