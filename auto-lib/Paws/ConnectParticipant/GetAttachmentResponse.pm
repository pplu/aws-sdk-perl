
package Paws::ConnectParticipant::GetAttachmentResponse;
  use Moose;
  has Url => (is => 'ro', isa => 'Str');
  has UrlExpiry => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectParticipant::GetAttachmentResponse

=head1 ATTRIBUTES


=head2 Url => Str

The pre-signed URL using which file would be downloaded from Amazon S3
by the API caller.


=head2 UrlExpiry => Str

The expiration time of the URL in ISO timestamp. It's specified in ISO
8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For example,
2019-11-08T02:41:28.172Z.


=head2 _request_id => Str


=cut

