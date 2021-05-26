
package Paws::DeviceFarm::CreateTestGridUrlResult;
  use Moose;
  has Expires => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'expires' );
  has Url => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'url' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::CreateTestGridUrlResult

=head1 ATTRIBUTES


=head2 Expires => Str

The number of seconds the URL from CreateTestGridUrlResult$url stays
active.


=head2 Url => Str

A signed URL, expiring in CreateTestGridUrlRequest$expiresInSeconds
seconds, to be passed to a C<RemoteWebDriver>.


=head2 _request_id => Str


=cut

1;