
package Paws::S3::GetBucketLoggingOutput;
  use Moose;
  has LoggingEnabled => (is => 'ro', isa => 'Paws::S3::LoggingEnabled');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetBucketLoggingOutput

=head1 ATTRIBUTES


=head2 LoggingEnabled => L<Paws::S3::LoggingEnabled>






=cut

