
package Paws::Config::DescribeRemediationConfigurationsResponse;
  use Moose;
  has RemediationConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::Config::RemediationConfiguration]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::DescribeRemediationConfigurationsResponse

=head1 ATTRIBUTES


=head2 RemediationConfigurations => ArrayRef[L<Paws::Config::RemediationConfiguration>]

Returns a remediation configuration object.


=head2 _request_id => Str


=cut

1;