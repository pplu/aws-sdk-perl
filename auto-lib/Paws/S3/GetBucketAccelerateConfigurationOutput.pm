
package Paws::S3::GetBucketAccelerateConfigurationOutput;
  use Moose;
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetBucketAccelerateConfigurationOutput

=head1 ATTRIBUTES


=head2 Status => Str

The accelerate configuration of the bucket.

Valid values are: C<"Enabled">, C<"Suspended">


=cut

