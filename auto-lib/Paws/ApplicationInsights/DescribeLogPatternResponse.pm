
package Paws::ApplicationInsights::DescribeLogPatternResponse;
  use Moose;
  has LogPattern => (is => 'ro', isa => 'Paws::ApplicationInsights::LogPattern');
  has ResourceGroupName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationInsights::DescribeLogPatternResponse

=head1 ATTRIBUTES


=head2 LogPattern => L<Paws::ApplicationInsights::LogPattern>

The successfully created log pattern.


=head2 ResourceGroupName => Str

The name of the resource group.


=head2 _request_id => Str


=cut

1;