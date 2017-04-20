
package Paws::Config::GetResourceConfigHistoryResponse;
  use Moose;
  has ConfigurationItems => (is => 'ro', isa => 'ArrayRef[Paws::Config::ConfigurationItem]', traits => ['NameInRequest'], request_name => 'configurationItems' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::GetResourceConfigHistoryResponse

=head1 ATTRIBUTES


=head2 ConfigurationItems => ArrayRef[L<Paws::Config::ConfigurationItem>]

A list that contains the configuration history of one or more
resources.


=head2 NextToken => Str

The string that you use in a subsequent request to get the next page of
results in a paginated response.


=head2 _request_id => Str


=cut

1;