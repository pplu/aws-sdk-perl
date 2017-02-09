
package Paws::S3::GetBucketVersioningOutput;
  use Moose;
  has MFADelete => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'MfaDelete');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetBucketVersioningOutput

=head1 ATTRIBUTES


=head2 MFADelete => Str

Specifies whether MFA delete is enabled in the bucket versioning
configuration. This element is only returned if the bucket has been
configured with MFA delete. If the bucket has never been so configured,
this element is not returned.

Valid values are: C<"Enabled">, C<"Disabled">

=head2 Status => Str

The versioning state of the bucket.

Valid values are: C<"Enabled">, C<"Suspended">


=cut

