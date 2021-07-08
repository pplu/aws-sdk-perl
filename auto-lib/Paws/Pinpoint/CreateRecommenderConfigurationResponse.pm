
package Paws::Pinpoint::CreateRecommenderConfigurationResponse;
  use Moose;
  has RecommenderConfigurationResponse => (is => 'ro', isa => 'Paws::Pinpoint::RecommenderConfigurationResponse', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'RecommenderConfigurationResponse');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::CreateRecommenderConfigurationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> RecommenderConfigurationResponse => L<Paws::Pinpoint::RecommenderConfigurationResponse>




=head2 _request_id => Str


=cut

