
package Paws::Route53::ListHealthChecks;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'marker' );
  has MaxItems => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'maxitems' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListHealthChecks');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/healthcheck');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::ListHealthChecksResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ListHealthChecksResponse

=head1 ATTRIBUTES


=head2 Marker => Str

If the response to a C<ListHealthChecks> is more than one page, marker
is the health check ID for the first health check on the next page of
results. For more information, see ListHealthChecksResponse$MaxItems.



=head2 MaxItems => Str

The maximum number of C<HealthCheck> elements you want
C<ListHealthChecks> to return on each page of the response body. If the
AWS account includes more C<HealthCheck> elements than the value of
C<maxitems>, the response is broken into pages. Each page contains the
number of C<HealthCheck> elements specified by C<maxitems>.

For example, suppose you specify C<10> for C<maxitems> and the current
AWS account has C<51> health checks. In the response,
C<ListHealthChecks> sets ListHealthChecksResponse$IsTruncated to true
and includes the ListHealthChecksResponse$NextMarker element. To access
the second and subsequent pages, you resend the C<GET>
C<ListHealthChecks> request, add the ListHealthChecksResponse$Marker
parameter to the request, and specify the value of the
ListHealthChecksResponse$NextMarker element from the previous response.
On the last (sixth) page of the response, which contains only one
HealthCheck element:

=over

=item *

The value of ListHealthChecksResponse$IsTruncated is C<false>.

=item *

ListHealthChecksResponse$NextMarker is omitted.

=back





=cut

