
package Paws::ApplicationInsights::ListComponentsResponse;
  use Moose;
  has ApplicationComponentList => (is => 'ro', isa => 'ArrayRef[Paws::ApplicationInsights::ApplicationComponent]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationInsights::ListComponentsResponse

=head1 ATTRIBUTES


=head2 ApplicationComponentList => ArrayRef[L<Paws::ApplicationInsights::ApplicationComponent>]

The list of application components.


=head2 NextToken => Str

The token to request the next page of results.


=head2 _request_id => Str


=cut

1;