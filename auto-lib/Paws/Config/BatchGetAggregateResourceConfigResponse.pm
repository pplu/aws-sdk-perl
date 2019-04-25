
package Paws::Config::BatchGetAggregateResourceConfigResponse;
  use Moose;
  has BaseConfigurationItems => (is => 'ro', isa => 'ArrayRef[Paws::Config::BaseConfigurationItem]');
  has UnprocessedResourceIdentifiers => (is => 'ro', isa => 'ArrayRef[Paws::Config::AggregateResourceIdentifier]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::BatchGetAggregateResourceConfigResponse

=head1 ATTRIBUTES


=head2 BaseConfigurationItems => ArrayRef[L<Paws::Config::BaseConfigurationItem>]

A list that contains the current configuration of one or more
resources.


=head2 UnprocessedResourceIdentifiers => ArrayRef[L<Paws::Config::AggregateResourceIdentifier>]

A list of resource identifiers that were not processed with current
scope. The list is empty if all the resources are processed.


=head2 _request_id => Str


=cut

1;