
package Paws::EC2::StartNetworkInsightsAnalysisResult;
  use Moose;
  has NetworkInsightsAnalysis => (is => 'ro', isa => 'Paws::EC2::NetworkInsightsAnalysis', request_name => 'networkInsightsAnalysis', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::StartNetworkInsightsAnalysisResult

=head1 ATTRIBUTES


=head2 NetworkInsightsAnalysis => L<Paws::EC2::NetworkInsightsAnalysis>

Information about the network insights analysis.


=head2 _request_id => Str


=cut

