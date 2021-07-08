
package Paws::Transfer::UpdateAccessResponse;
  use Moose;
  has ExternalId => (is => 'ro', isa => 'Str', required => 1);
  has ServerId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::UpdateAccessResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExternalId => Str

The external ID of the group whose users have access to your Amazon S3
or Amazon EFS resources over the enabled protocols using Amazon Web
ServicesTransfer Family.


=head2 B<REQUIRED> ServerId => Str

The ID of the server that the user is attached to.


=head2 _request_id => Str


=cut

1;