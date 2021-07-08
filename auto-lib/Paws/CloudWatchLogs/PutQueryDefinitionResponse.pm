
package Paws::CloudWatchLogs::PutQueryDefinitionResponse;
  use Moose;
  has QueryDefinitionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'queryDefinitionId' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::PutQueryDefinitionResponse

=head1 ATTRIBUTES


=head2 QueryDefinitionId => Str

The ID of the query definition.


=head2 _request_id => Str


=cut

1;