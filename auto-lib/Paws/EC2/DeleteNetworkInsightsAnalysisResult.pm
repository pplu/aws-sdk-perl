
package Paws::EC2::DeleteNetworkInsightsAnalysisResult;
  use Moose;
  has NetworkInsightsAnalysisId => (is => 'ro', isa => 'Str', request_name => 'networkInsightsAnalysisId', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeleteNetworkInsightsAnalysisResult

=head1 ATTRIBUTES


=head2 NetworkInsightsAnalysisId => Str

The ID of the network insights analysis.


=head2 _request_id => Str


=cut

