
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

The Amazon S3 bucket where generated reports are stored. When a usage
report subscription is enabled for the first time for an account in an
AWS Region, an S3 bucket is created. The bucket is unique to the AWS
account and the Region.


=head2 Schedule => Str

The schedule for generating usage reports.

Valid values are: C<"DAILY">
=head2 _request_id => Str


=cut

1;