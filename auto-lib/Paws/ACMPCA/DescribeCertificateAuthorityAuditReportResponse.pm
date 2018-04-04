
package Paws::ACMPCA::DescribeCertificateAuthorityAuditReportResponse;
  use Moose;
  has AuditReportStatus => (is => 'ro', isa => 'Str');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has S3BucketName => (is => 'ro', isa => 'Str');
  has S3Key => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ACMPCA::DescribeCertificateAuthorityAuditReportResponse

=head1 ATTRIBUTES


=head2 AuditReportStatus => Str

Specifies whether report creation is in progress, has succeeded, or has
failed.

Valid values are: C<"CREATING">, C<"SUCCESS">, C<"FAILED">
=head2 CreatedAt => Str

The date and time at which the report was created.


=head2 S3BucketName => Str

Name of the S3 bucket that contains the report.


=head2 S3Key => Str

S3 B<key> that uniquely identifies the report file in your S3 bucket.


=head2 _request_id => Str


=cut

1;