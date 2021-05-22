
package Paws::EC2::CreateNetworkInsightsPathResult;
  use Moose;
  has NetworkInsightsPath => (is => 'ro', isa => 'Paws::EC2::NetworkInsightsPath', request_name => 'networkInsightsPath', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateNetworkInsightsPathResult

=head1 ATTRIBUTES


=head2 NetworkInsightsPath => L<Paws::EC2::NetworkInsightsPath>

Information about the path.


=head2 _request_id => Str


=cut

