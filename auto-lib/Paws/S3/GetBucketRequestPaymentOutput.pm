
package Paws::S3::GetBucketRequestPaymentOutput;
  use Moose;
  has Payer => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetBucketRequestPaymentOutput

=head1 ATTRIBUTES


=head2 Payer => Str

Specifies who pays for the download and request fees.

Valid values are: C<"Requester">, C<"BucketOwner">


=cut

