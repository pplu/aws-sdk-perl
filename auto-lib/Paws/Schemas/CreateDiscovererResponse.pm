
package Paws::Schemas::CreateDiscovererResponse;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has DiscovererArn => (is => 'ro', isa => 'Str');
  has DiscovererId => (is => 'ro', isa => 'Str');
  has SourceArn => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::Schemas::Tags', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Schemas::CreateDiscovererResponse

=head1 ATTRIBUTES


=head2 Description => Str

The description of the discoverer.


=head2 DiscovererArn => Str

The ARN of the discoverer.


=head2 DiscovererId => Str

The ID of the discoverer.


=head2 SourceArn => Str

The ARN of the event bus.


=head2 State => Str

The state of the discoverer.

Valid values are: C<"STARTED">, C<"STOPPED">
=head2 Tags => L<Paws::Schemas::Tags>

Tags associated with the resource.


=head2 _request_id => Str


=cut

