
package Paws::Pinpoint::GetRecommenderConfigurationsResponse;
  use Moose;
  has ListRecommenderConfigurationsResponse => (is => 'ro', isa => 'Paws::Pinpoint::ListRecommenderConfigurationsResponse', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'ListRecommenderConfigurationsResponse');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::GetRecommenderConfigurationsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ListRecommenderConfigurationsResponse => L<Paws::Pinpoint::ListRecommenderConfigurationsResponse>




=head2 _request_id => Str


=cut

