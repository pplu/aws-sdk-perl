
package Paws::Config::BatchGetResourceConfigResponse;
  use Moose;
  has BaseConfigurationItems => (is => 'ro', isa => 'ArrayRef[Paws::Config::BaseConfigurationItem]', traits => ['NameInRequest'], request_name => 'baseConfigurationItems' );
  has UnprocessedResourceKeys => (is => 'ro', isa => 'ArrayRef[Paws::Config::ResourceKey]', traits => ['NameInRequest'], request_name => 'unprocessedResourceKeys' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::BatchGetResourceConfigResponse

=head1 ATTRIBUTES


=head2 BaseConfigurationItems => ArrayRef[L<Paws::Config::BaseConfigurationItem>]

A list that contains the current configuration of one or more
resources.


=head2 UnprocessedResourceKeys => ArrayRef[L<Paws::Config::ResourceKey>]

A list of resource keys that were not processed with the current
response. The unprocessesResourceKeys value is in the same form as
ResourceKeys, so the value can be directly provided to a subsequent
BatchGetResourceConfig operation. If there are no unprocessed resource
keys, the response contains an empty unprocessedResourceKeys list.


=head2 _request_id => Str


=cut

1;