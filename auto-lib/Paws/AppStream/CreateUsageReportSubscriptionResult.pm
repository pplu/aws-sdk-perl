
package Paws::AppStream::CreateUsageReportSubscriptionResult;
  use Moose;
  has S3BucketName => (is => 'ro', isa => 'Str');
  has Schedule => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::CreateUsageReportSubscriptionResult

=head1 ATTRIBUTES


=head2 S3BucketName => Str

The Amazon S3 bucket where generated reports are stored.

If you enabled on-instance session scripts and Amazon S3 logging for
your session script configuration, AppStream 2.0 created an S3 bucket
to store the script output. The bucket is unique to your account and
Region. When you enable usage reporting in this case, AppStream 2.0
uses the same bucket to store your usage reports. If you haven't
already enabled on-instance session scripts, when you enable usage
reports, AppStream 2.0 creates a new S3 bucket.


=head2 Schedule => Str

The schedule for generating usage reports.

Valid values are: C<"DAILY">
=head2 _request_id => Str


=cut

1;