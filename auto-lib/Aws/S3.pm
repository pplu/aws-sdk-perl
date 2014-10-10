
use AWS::API;


package Aws::S3 {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 's3');
  has version => (is => 'ro', isa => 'Str', default => '2006-03-01');
  has flattened_arrays => (is => 'ro', isa => 'Str', default => '1');

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'AWS::API::SingleEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::RestXmlCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::RestXMLResponse');

  
  sub AbortMultipartUpload {
    my $self = shift;
    return $self->do_call('Aws::S3::AbortMultipartUpload', @_);
  }
  sub CompleteMultipartUpload {
    my $self = shift;
    return $self->do_call('Aws::S3::CompleteMultipartUpload', @_);
  }
  sub CopyObject {
    my $self = shift;
    return $self->do_call('Aws::S3::CopyObject', @_);
  }
  sub CreateBucket {
    my $self = shift;
    return $self->do_call('Aws::S3::CreateBucket', @_);
  }
  sub CreateMultipartUpload {
    my $self = shift;
    return $self->do_call('Aws::S3::CreateMultipartUpload', @_);
  }
  sub DeleteBucket {
    my $self = shift;
    return $self->do_call('Aws::S3::DeleteBucket', @_);
  }
  sub DeleteBucketCors {
    my $self = shift;
    return $self->do_call('Aws::S3::DeleteBucketCors', @_);
  }
  sub DeleteBucketLifecycle {
    my $self = shift;
    return $self->do_call('Aws::S3::DeleteBucketLifecycle', @_);
  }
  sub DeleteBucketPolicy {
    my $self = shift;
    return $self->do_call('Aws::S3::DeleteBucketPolicy', @_);
  }
  sub DeleteBucketTagging {
    my $self = shift;
    return $self->do_call('Aws::S3::DeleteBucketTagging', @_);
  }
  sub DeleteBucketWebsite {
    my $self = shift;
    return $self->do_call('Aws::S3::DeleteBucketWebsite', @_);
  }
  sub DeleteObject {
    my $self = shift;
    return $self->do_call('Aws::S3::DeleteObject', @_);
  }
  sub DeleteObjects {
    my $self = shift;
    return $self->do_call('Aws::S3::DeleteObjects', @_);
  }
  sub GetBucketAcl {
    my $self = shift;
    return $self->do_call('Aws::S3::GetBucketAcl', @_);
  }
  sub GetBucketCors {
    my $self = shift;
    return $self->do_call('Aws::S3::GetBucketCors', @_);
  }
  sub GetBucketLifecycle {
    my $self = shift;
    return $self->do_call('Aws::S3::GetBucketLifecycle', @_);
  }
  sub GetBucketLocation {
    my $self = shift;
    return $self->do_call('Aws::S3::GetBucketLocation', @_);
  }
  sub GetBucketLogging {
    my $self = shift;
    return $self->do_call('Aws::S3::GetBucketLogging', @_);
  }
  sub GetBucketNotification {
    my $self = shift;
    return $self->do_call('Aws::S3::GetBucketNotification', @_);
  }
  sub GetBucketPolicy {
    my $self = shift;
    return $self->do_call('Aws::S3::GetBucketPolicy', @_);
  }
  sub GetBucketRequestPayment {
    my $self = shift;
    return $self->do_call('Aws::S3::GetBucketRequestPayment', @_);
  }
  sub GetBucketTagging {
    my $self = shift;
    return $self->do_call('Aws::S3::GetBucketTagging', @_);
  }
  sub GetBucketVersioning {
    my $self = shift;
    return $self->do_call('Aws::S3::GetBucketVersioning', @_);
  }
  sub GetBucketWebsite {
    my $self = shift;
    return $self->do_call('Aws::S3::GetBucketWebsite', @_);
  }
  sub GetObject {
    my $self = shift;
    return $self->do_call('Aws::S3::GetObject', @_);
  }
  sub GetObjectAcl {
    my $self = shift;
    return $self->do_call('Aws::S3::GetObjectAcl', @_);
  }
  sub GetObjectTorrent {
    my $self = shift;
    return $self->do_call('Aws::S3::GetObjectTorrent', @_);
  }
  sub HeadBucket {
    my $self = shift;
    return $self->do_call('Aws::S3::HeadBucket', @_);
  }
  sub HeadObject {
    my $self = shift;
    return $self->do_call('Aws::S3::HeadObject', @_);
  }
  sub ListBuckets {
    my $self = shift;
    return $self->do_call('Aws::S3::ListBuckets', @_);
  }
  sub ListMultipartUploads {
    my $self = shift;
    return $self->do_call('Aws::S3::ListMultipartUploads', @_);
  }
  sub ListObjects {
    my $self = shift;
    return $self->do_call('Aws::S3::ListObjects', @_);
  }
  sub ListObjectVersions {
    my $self = shift;
    return $self->do_call('Aws::S3::ListObjectVersions', @_);
  }
  sub ListParts {
    my $self = shift;
    return $self->do_call('Aws::S3::ListParts', @_);
  }
  sub PutBucketAcl {
    my $self = shift;
    return $self->do_call('Aws::S3::PutBucketAcl', @_);
  }
  sub PutBucketCors {
    my $self = shift;
    return $self->do_call('Aws::S3::PutBucketCors', @_);
  }
  sub PutBucketLifecycle {
    my $self = shift;
    return $self->do_call('Aws::S3::PutBucketLifecycle', @_);
  }
  sub PutBucketLogging {
    my $self = shift;
    return $self->do_call('Aws::S3::PutBucketLogging', @_);
  }
  sub PutBucketNotification {
    my $self = shift;
    return $self->do_call('Aws::S3::PutBucketNotification', @_);
  }
  sub PutBucketPolicy {
    my $self = shift;
    return $self->do_call('Aws::S3::PutBucketPolicy', @_);
  }
  sub PutBucketRequestPayment {
    my $self = shift;
    return $self->do_call('Aws::S3::PutBucketRequestPayment', @_);
  }
  sub PutBucketTagging {
    my $self = shift;
    return $self->do_call('Aws::S3::PutBucketTagging', @_);
  }
  sub PutBucketVersioning {
    my $self = shift;
    return $self->do_call('Aws::S3::PutBucketVersioning', @_);
  }
  sub PutBucketWebsite {
    my $self = shift;
    return $self->do_call('Aws::S3::PutBucketWebsite', @_);
  }
  sub PutObject {
    my $self = shift;
    return $self->do_call('Aws::S3::PutObject', @_);
  }
  sub PutObjectAcl {
    my $self = shift;
    return $self->do_call('Aws::S3::PutObjectAcl', @_);
  }
  sub RestoreObject {
    my $self = shift;
    return $self->do_call('Aws::S3::RestoreObject', @_);
  }
  sub UploadPart {
    my $self = shift;
    return $self->do_call('Aws::S3::UploadPart', @_);
  }
  sub UploadPartCopy {
    my $self = shift;
    return $self->do_call('Aws::S3::UploadPartCopy', @_);
  }
}
1;
