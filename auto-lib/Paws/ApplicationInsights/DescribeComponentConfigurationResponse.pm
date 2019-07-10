
package Paws::ApplicationInsights::DescribeComponentConfigurationResponse;
  use Moose;
  has ComponentConfiguration => (is => 'ro', isa => 'Str');
  has Monitor => (is => 'ro', isa => 'Bool');
  has Tier => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationInsights::DescribeComponentConfigurationResponse

=head1 ATTRIBUTES


=head2 ComponentConfiguration => Str

The configuration settings of the component. The value is the escaped
JSON of the configuration.


=head2 Monitor => Bool

Indicates whether the application component is monitored.


=head2 Tier => Str

The tier of the application component. Supported tiers include
C<DOT_NET_WORKER>, C<DOT_NET_WEB_TIER>, C<SQL_SERVER>, and C<DEFAULT>


=head2 _request_id => Str


=cut

1;