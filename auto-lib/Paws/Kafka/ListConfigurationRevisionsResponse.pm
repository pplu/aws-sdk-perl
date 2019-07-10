
package Paws::Kafka::ListConfigurationRevisionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Revisions => (is => 'ro', isa => 'ArrayRef[Paws::Kafka::ConfigurationRevision]', traits => ['NameInRequest'], request_name => 'revisions');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::ListConfigurationRevisionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Paginated results marker.


=head2 Revisions => ArrayRef[L<Paws::Kafka::ConfigurationRevision>]

List of ConfigurationRevision objects.


=head2 _request_id => Str


=cut

