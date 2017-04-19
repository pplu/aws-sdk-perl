
package Paws::Discovery::ListConfigurationsResponse;
  use Moose;
  has Configurations => (is => 'ro', isa => 'ArrayRef[Paws::Discovery::Configuration]', traits => ['NameInRequest'], request_name => 'configurations' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::ListConfigurationsResponse

=head1 ATTRIBUTES


=head2 Configurations => ArrayRef[L<Paws::Discovery::Configuration>]

Returns configuration details, including the configuration ID,
attribute names, and attribute values.


=head2 NextToken => Str

Token to retrieve the next set of results. For example, if your call to
ListConfigurations returned 100 items, but you set
C<ListConfigurationsRequest$maxResults> to 10, you received a set of 10
results along with this token. Use this token in the next query to
retrieve the next set of 10.


=head2 _request_id => Str


=cut

1;