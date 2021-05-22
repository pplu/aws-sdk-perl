
package Paws::EC2::DeleteNetworkInsightsPathResult;
  use Moose;
  has NetworkInsightsPathId => (is => 'ro', isa => 'Str', request_name => 'networkInsightsPathId', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeleteNetworkInsightsPathResult

=head1 ATTRIBUTES


=head2 NetworkInsightsPathId => Str

The ID of the path.


=head2 _request_id => Str


=cut

