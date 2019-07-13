
package Paws::ES::CancelElasticsearchServiceSoftwareUpdateResponse;
  use Moose;
  has ServiceSoftwareOptions => (is => 'ro', isa => 'Paws::ES::ServiceSoftwareOptions');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::CancelElasticsearchServiceSoftwareUpdateResponse

=head1 ATTRIBUTES


=head2 ServiceSoftwareOptions => L<Paws::ES::ServiceSoftwareOptions>

The current status of the Elasticsearch service software update.


=head2 _request_id => Str


=cut

