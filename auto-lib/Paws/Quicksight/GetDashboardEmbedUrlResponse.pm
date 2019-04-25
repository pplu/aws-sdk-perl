
package Paws::Quicksight::GetDashboardEmbedUrlResponse;
  use Moose;
  has EmbedUrl => (is => 'ro', isa => 'Str');
  has RequestId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::GetDashboardEmbedUrlResponse

=head1 ATTRIBUTES


=head2 EmbedUrl => Str

URL that you can put into your server-side webpage to embed your
dashboard. This URL is valid for 5 minutes, and the resulting session
is valid for 10 hours. The API provides the URL with an auth_code that
enables a single-signon session.


=head2 RequestId => Str

The AWS request ID for this operation.


=head2 Status => Int

The http status of the request.


=head2 _request_id => Str


=cut

