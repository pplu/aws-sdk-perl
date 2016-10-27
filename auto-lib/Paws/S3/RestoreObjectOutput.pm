
package Paws::S3::RestoreObjectOutput;
  use Moose;
  has RequestCharged => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::RestoreObjectOutput

=head1 ATTRIBUTES


=head2 RequestCharged => Str



Valid values are: C<"requester">


=cut

