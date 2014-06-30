
use AWS::API;

use Moose::Util::TypeConstraints;
enum 'Aws::S3::BucketLocationConstraint', ['EU','eu-west-1','us-west-1','us-west-2','ap-southeast-1','ap-southeast-2','ap-northeast-1','sa-east-1','',];
enum 'Aws::S3::BucketLogsPermission', ['FULL_CONTROL','READ','WRITE',];
enum 'Aws::S3::BucketVersioningStatus', ['Enabled','Suspended',];
enum 'Aws::S3::Event', ['s3:ReducedRedundancyLostObject',];
enum 'Aws::S3::ExpirationStatus', ['Enabled','Disabled',];
enum 'Aws::S3::MFADelete', ['Enabled','Disabled',];
enum 'Aws::S3::ObjectStorageClass', ['STANDARD','REDUCED_REDUNDANCY','GLACIER',];
enum 'Aws::S3::ObjectVersionStorageClass', ['STANDARD',];
enum 'Aws::S3::Payer', ['Requester','BucketOwner',];
enum 'Aws::S3::Permission', ['FULL_CONTROL','WRITE','WRITE_ACP','READ','READ_ACP',];
enum 'Aws::S3::Protocol', ['http','https',];
enum 'Aws::S3::StorageClass', ['STANDARD','REDUCED_REDUNDANCY',];
enum 'Aws::S3::TransitionStorageClass', ['GLACIER',];
enum 'Aws::S3::Type', ['CanonicalUser','AmazonCustomerByEmail','Group',];


package Aws::S3:: {
  use Moose;
  with 'AWS::API::StrToStrMapParser';
  has Map => (is => 'ro', isa => 'HashRef[Str]');
}

package Aws::S3::AccessControlPolicy {
  use Moose;
  with ('AWS::API::ResultParser');
  has Grants => (is => 'ro', isa => 'ArrayRef[Aws::S3::Grant]', traits => ['Unwrapped'], xmlname => 'AccessControlList');
  has Owner => (is => 'ro', isa => 'Aws::S3::Owner');
}

package Aws::S3::Bucket {
  use Moose;
  with ('AWS::API::ResultParser');
  has CreationDate => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
}

package Aws::S3::BucketLoggingStatus {
  use Moose;
  with ('AWS::API::ResultParser');
  has LoggingEnabled => (is => 'ro', isa => 'Aws::S3::LoggingEnabled');
}

package Aws::S3::CORSConfiguration {
  use Moose;
  with ('AWS::API::ResultParser');
  has CORSRules => (is => 'ro', isa => 'ArrayRef[Aws::S3::CORSRule]', traits => ['Unwrapped'], xmlname => 'CORSRule');
}

package Aws::S3::CORSRule {
  use Moose;
  with ('AWS::API::ResultParser');
  has AllowedHeaders => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['Unwrapped'], xmlname => 'AllowedHeader');
  has AllowedMethods => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['Unwrapped'], xmlname => 'AllowedMethod');
  has AllowedOrigins => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['Unwrapped'], xmlname => 'AllowedOrigin');
  has ExposeHeaders => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['Unwrapped'], xmlname => 'ExposeHeader');
  has MaxAgeSeconds => (is => 'ro', isa => 'Int');
}

package Aws::S3::CommonPrefix {
  use Moose;
  with ('AWS::API::ResultParser');
  has Prefix => (is => 'ro', isa => 'Str');
}

package Aws::S3::CompletedMultipartUpload {
  use Moose;
  with ('AWS::API::ResultParser');
  has Parts => (is => 'ro', isa => 'ArrayRef[Aws::S3::CompletedPart]', traits => ['Unwrapped'], xmlname => 'Part');
}

package Aws::S3::CompletedPart {
  use Moose;
  with ('AWS::API::ResultParser');
  has ETag => (is => 'ro', isa => 'Str');
  has PartNumber => (is => 'ro', isa => 'Int');
}

package Aws::S3::Condition {
  use Moose;
  with ('AWS::API::ResultParser');
  has HttpErrorCodeReturnedEquals => (is => 'ro', isa => 'Str');
  has KeyPrefixEquals => (is => 'ro', isa => 'Str');
}

package Aws::S3::CopyObjectResult {
  use Moose;
  with ('AWS::API::ResultParser');
  has ETag => (is => 'ro', isa => 'Str');
  has LastModified => (is => 'ro', isa => 'Str');
}

package Aws::S3::CopyPartResult {
  use Moose;
  with ('AWS::API::ResultParser');
  has ETag => (is => 'ro', isa => 'Str');
  has LastModified => (is => 'ro', isa => 'Str');
}

package Aws::S3::CreateBucketConfiguration {
  use Moose;
  with ('AWS::API::ResultParser');
  has LocationConstraint => (is => 'ro', isa => 'Aws::S3::BucketLocationConstraint');
}

package Aws::S3::Delete {
  use Moose;
  with ('AWS::API::ResultParser');
  has Objects => (is => 'ro', isa => 'ArrayRef[Aws::S3::ObjectIdentifier]', traits => ['Unwrapped'], xmlname => 'Object', required => 1);
  has Quiet => (is => 'ro', isa => 'Bool');
}

package Aws::S3::DeleteMarkerEntry {
  use Moose;
  with ('AWS::API::ResultParser');
  has IsLatest => (is => 'ro', isa => 'Bool');
  has Key => (is => 'ro', isa => 'Str');
  has LastModified => (is => 'ro', isa => 'Str');
  has Owner => (is => 'ro', isa => 'Aws::S3::Owner');
  has VersionId => (is => 'ro', isa => 'Str');
}

package Aws::S3::DeletedObject {
  use Moose;
  with ('AWS::API::ResultParser');
  has DeleteMarker => (is => 'ro', isa => 'Bool');
  has DeleteMarkerVersionId => (is => 'ro', isa => 'Str');
  has Key => (is => 'ro', isa => 'Str');
  has VersionId => (is => 'ro', isa => 'Str');
}

package Aws::S3::Error {
  use Moose;
  with ('AWS::API::ResultParser');
  has Code => (is => 'ro', isa => 'Str');
  has Key => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has VersionId => (is => 'ro', isa => 'Str');
}

package Aws::S3::ErrorDocument {
  use Moose;
  with ('AWS::API::ResultParser');
  has Key => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::S3::Grant {
  use Moose;
  with ('AWS::API::ResultParser');
  has Grantee => (is => 'ro', isa => 'Aws::S3::Grantee');
  has Permission => (is => 'ro', isa => 'Aws::S3::Permission');
}

package Aws::S3::Grantee {
  use Moose;
  with ('AWS::API::ResultParser');
  has DisplayName => (is => 'ro', isa => 'Str');
  has EmailAddress => (is => 'ro', isa => 'Str');
  has ID => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Aws::S3::Type', traits => ['Unwrapped'], xmlname => 'xsi:type', required => 1);
  has URI => (is => 'ro', isa => 'Str');
}

package Aws::S3::IndexDocument {
  use Moose;
  with ('AWS::API::ResultParser');
  has Suffix => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::S3::Initiator {
  use Moose;
  with ('AWS::API::ResultParser');
  has DisplayName => (is => 'ro', isa => 'Str');
  has ID => (is => 'ro', isa => 'Str');
}

package Aws::S3::LifecycleConfiguration {
  use Moose;
  with ('AWS::API::ResultParser');
  has Rules => (is => 'ro', isa => 'ArrayRef[Aws::S3::Rule]', traits => ['Unwrapped'], xmlname => 'Rule', required => 1);
}

package Aws::S3::LifecycleExpiration {
  use Moose;
  with ('AWS::API::ResultParser');
  has Date => (is => 'ro', isa => 'Str');
  has Days => (is => 'ro', isa => 'Int');
}

package Aws::S3::LoggingEnabled {
  use Moose;
  with ('AWS::API::ResultParser');
  has TargetBucket => (is => 'ro', isa => 'Str');
  has TargetGrants => (is => 'ro', isa => 'ArrayRef[Aws::S3::TargetGrant]');
  has TargetPrefix => (is => 'ro', isa => 'Str');
}

package Aws::S3::MultipartUpload {
  use Moose;
  with ('AWS::API::ResultParser');
  has Initiated => (is => 'ro', isa => 'Str');
  has Initiator => (is => 'ro', isa => 'Aws::S3::Initiator');
  has Key => (is => 'ro', isa => 'Str');
  has Owner => (is => 'ro', isa => 'Aws::S3::Owner');
  has StorageClass => (is => 'ro', isa => 'Aws::S3::StorageClass');
  has UploadId => (is => 'ro', isa => 'Str');
}

package Aws::S3::NoncurrentVersionExpiration {
  use Moose;
  with ('AWS::API::ResultParser');
  has NoncurrentDays => (is => 'ro', isa => 'Int');
}

package Aws::S3::NoncurrentVersionTransition {
  use Moose;
  with ('AWS::API::ResultParser');
  has NoncurrentDays => (is => 'ro', isa => 'Int');
  has StorageClass => (is => 'ro', isa => 'Aws::S3::TransitionStorageClass');
}

package Aws::S3::NotificationConfiguration {
  use Moose;
  with ('AWS::API::ResultParser');
  has TopicConfiguration => (is => 'ro', isa => 'Aws::S3::TopicConfiguration', required => 1);
}

package Aws::S3::Object {
  use Moose;
  with ('AWS::API::ResultParser');
  has ETag => (is => 'ro', isa => 'Str');
  has Key => (is => 'ro', isa => 'Str');
  has LastModified => (is => 'ro', isa => 'Str');
  has Owner => (is => 'ro', isa => 'Aws::S3::Owner');
  has Size => (is => 'ro', isa => 'Int');
  has StorageClass => (is => 'ro', isa => 'Aws::S3::ObjectStorageClass');
}

package Aws::S3::ObjectIdentifier {
  use Moose;
  with ('AWS::API::ResultParser');
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has VersionId => (is => 'ro', isa => 'Str');
}

package Aws::S3::ObjectVersion {
  use Moose;
  with ('AWS::API::ResultParser');
  has ETag => (is => 'ro', isa => 'Str');
  has IsLatest => (is => 'ro', isa => 'Bool');
  has Key => (is => 'ro', isa => 'Str');
  has LastModified => (is => 'ro', isa => 'Str');
  has Owner => (is => 'ro', isa => 'Aws::S3::Owner');
  has Size => (is => 'ro', isa => 'Int');
  has StorageClass => (is => 'ro', isa => 'Aws::S3::ObjectVersionStorageClass');
  has VersionId => (is => 'ro', isa => 'Str');
}

package Aws::S3::Owner {
  use Moose;
  with ('AWS::API::ResultParser');
  has DisplayName => (is => 'ro', isa => 'Str');
  has ID => (is => 'ro', isa => 'Str');
}

package Aws::S3::Part {
  use Moose;
  with ('AWS::API::ResultParser');
  has ETag => (is => 'ro', isa => 'Str');
  has LastModified => (is => 'ro', isa => 'Str');
  has PartNumber => (is => 'ro', isa => 'Int');
  has Size => (is => 'ro', isa => 'Int');
}

package Aws::S3::Redirect {
  use Moose;
  with ('AWS::API::ResultParser');
  has HostName => (is => 'ro', isa => 'Str');
  has HttpRedirectCode => (is => 'ro', isa => 'Str');
  has Protocol => (is => 'ro', isa => 'Aws::S3::Protocol');
  has ReplaceKeyPrefixWith => (is => 'ro', isa => 'Str');
  has ReplaceKeyWith => (is => 'ro', isa => 'Str');
}

package Aws::S3::RedirectAllRequestsTo {
  use Moose;
  with ('AWS::API::ResultParser');
  has HostName => (is => 'ro', isa => 'Str', required => 1);
  has Protocol => (is => 'ro', isa => 'Aws::S3::Protocol');
}

package Aws::S3::RequestPaymentConfiguration {
  use Moose;
  with ('AWS::API::ResultParser');
  has Payer => (is => 'ro', isa => 'Aws::S3::Payer', required => 1);
}

package Aws::S3::RestoreRequest {
  use Moose;
  with ('AWS::API::ResultParser');
  has Days => (is => 'ro', isa => 'Int', required => 1);
}

package Aws::S3::RoutingRule {
  use Moose;
  with ('AWS::API::ResultParser');
  has Condition => (is => 'ro', isa => 'Aws::S3::Condition');
  has Redirect => (is => 'ro', isa => 'Aws::S3::Redirect', required => 1);
}

package Aws::S3::Rule {
  use Moose;
  with ('AWS::API::ResultParser');
  has Expiration => (is => 'ro', isa => 'Aws::S3::LifecycleExpiration');
  has ID => (is => 'ro', isa => 'Str');
  has NoncurrentVersionExpiration => (is => 'ro', isa => 'Aws::S3::NoncurrentVersionExpiration');
  has NoncurrentVersionTransition => (is => 'ro', isa => 'Aws::S3::NoncurrentVersionTransition');
  has Prefix => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Aws::S3::ExpirationStatus', required => 1);
  has Transition => (is => 'ro', isa => 'Aws::S3::Transition');
}

package Aws::S3::Tag {
  use Moose;
  with ('AWS::API::ResultParser');
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::S3::Tagging {
  use Moose;
  with ('AWS::API::ResultParser');
  has TagSet => (is => 'ro', isa => 'ArrayRef[Aws::S3::Tag]', required => 1);
}

package Aws::S3::TargetGrant {
  use Moose;
  with ('AWS::API::ResultParser');
  has Grantee => (is => 'ro', isa => 'Aws::S3::Grantee');
  has Permission => (is => 'ro', isa => 'Aws::S3::BucketLogsPermission');
}

package Aws::S3::TopicConfiguration {
  use Moose;
  with ('AWS::API::ResultParser');
  has Event => (is => 'ro', isa => 'Aws::S3::Event');
  has Topic => (is => 'ro', isa => 'Str');
}

package Aws::S3::Transition {
  use Moose;
  with ('AWS::API::ResultParser');
  has Date => (is => 'ro', isa => 'Str');
  has Days => (is => 'ro', isa => 'Int');
  has StorageClass => (is => 'ro', isa => 'Aws::S3::TransitionStorageClass');
}

package Aws::S3::VersioningConfiguration {
  use Moose;
  with ('AWS::API::ResultParser');
  has MfaDelete => (is => 'ro', isa => 'Aws::S3::MFADelete', traits => ['Unwrapped'], xmlname => 'MfaDelete');
  has Status => (is => 'ro', isa => 'Aws::S3::BucketVersioningStatus');
}

package Aws::S3::WebsiteConfiguration {
  use Moose;
  with ('AWS::API::ResultParser');
  has ErrorDocument => (is => 'ro', isa => 'Aws::S3::ErrorDocument');
  has IndexDocument => (is => 'ro', isa => 'Aws::S3::IndexDocument');
  has RedirectAllRequestsTo => (is => 'ro', isa => 'Aws::S3::RedirectAllRequestsTo');
  has RoutingRules => (is => 'ro', isa => 'ArrayRef[Aws::S3::RoutingRule]');
}



package Aws::S3::AbortMultipartUpload {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has UploadId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AbortMultipartUpload');
  has _returns => (isa => 'Aws::S3::AbortMultipartUploadResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AbortMultipartUploadResult');  
}
package Aws::S3::CompleteMultipartUpload {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has MultipartUpload => (is => 'ro', isa => 'Aws::S3::CompletedMultipartUpload', traits => ['NameInRequest'], request_name => 'CompleteMultipartUpload' );
  has UploadId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CompleteMultipartUpload');
  has _returns => (isa => 'Aws::S3::CompleteMultipartUploadResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CompleteMultipartUploadResult');  
}
package Aws::S3::CopyObject {
  use Moose;
  has ACL => (is => 'ro', isa => 'Str');
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has CacheControl => (is => 'ro', isa => 'Str');
  has ContentDisposition => (is => 'ro', isa => 'Str');
  has ContentEncoding => (is => 'ro', isa => 'Str');
  has ContentLanguage => (is => 'ro', isa => 'Str');
  has ContentType => (is => 'ro', isa => 'Str');
  has CopySource => (is => 'ro', isa => 'Str', required => 1);
  has CopySourceIfMatch => (is => 'ro', isa => 'Str');
  has CopySourceIfModifiedSince => (is => 'ro', isa => 'Str');
  has CopySourceIfNoneMatch => (is => 'ro', isa => 'Str');
  has CopySourceIfUnmodifiedSince => (is => 'ro', isa => 'Str');
  has CopySourceSSECustomerAlgorithm => (is => 'ro', isa => 'Str');
  has CopySourceSSECustomerKey => (is => 'ro', isa => 'Str');
  has CopySourceSSECustomerKeyMD5 => (is => 'ro', isa => 'Str');
  has Expires => (is => 'ro', isa => 'Str');
  has GrantFullControl => (is => 'ro', isa => 'Str');
  has GrantRead => (is => 'ro', isa => 'Str');
  has GrantReadACP => (is => 'ro', isa => 'Str');
  has GrantWriteACP => (is => 'ro', isa => 'Str');
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has Metadata => (is => 'ro', isa => 'Aws::S3::');
  has MetadataDirective => (is => 'ro', isa => 'Str');
  has ServerSideEncryption => (is => 'ro', isa => 'Str');
  has SSECustomerAlgorithm => (is => 'ro', isa => 'Str');
  has SSECustomerKey => (is => 'ro', isa => 'Str');
  has SSECustomerKeyMD5 => (is => 'ro', isa => 'Str');
  has StorageClass => (is => 'ro', isa => 'Str');
  has WebsiteRedirectLocation => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CopyObject');
  has _returns => (isa => 'Aws::S3::CopyObjectResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CopyObjectResult');  
}
package Aws::S3::CreateBucket {
  use Moose;
  has ACL => (is => 'ro', isa => 'Str');
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has CreateBucketConfiguration => (is => 'ro', isa => 'Aws::S3::CreateBucketConfiguration');
  has GrantFullControl => (is => 'ro', isa => 'Str');
  has GrantRead => (is => 'ro', isa => 'Str');
  has GrantReadACP => (is => 'ro', isa => 'Str');
  has GrantWrite => (is => 'ro', isa => 'Str');
  has GrantWriteACP => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateBucket');
  has _returns => (isa => 'Aws::S3::CreateBucketResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateBucketResult');  
}
package Aws::S3::CreateMultipartUpload {
  use Moose;
  has ACL => (is => 'ro', isa => 'Str');
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has CacheControl => (is => 'ro', isa => 'Str');
  has ContentDisposition => (is => 'ro', isa => 'Str');
  has ContentEncoding => (is => 'ro', isa => 'Str');
  has ContentLanguage => (is => 'ro', isa => 'Str');
  has ContentType => (is => 'ro', isa => 'Str');
  has Expires => (is => 'ro', isa => 'Str');
  has GrantFullControl => (is => 'ro', isa => 'Str');
  has GrantRead => (is => 'ro', isa => 'Str');
  has GrantReadACP => (is => 'ro', isa => 'Str');
  has GrantWriteACP => (is => 'ro', isa => 'Str');
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has Metadata => (is => 'ro', isa => 'Aws::S3::');
  has ServerSideEncryption => (is => 'ro', isa => 'Str');
  has SSECustomerAlgorithm => (is => 'ro', isa => 'Str');
  has SSECustomerKey => (is => 'ro', isa => 'Str');
  has SSECustomerKeyMD5 => (is => 'ro', isa => 'Str');
  has StorageClass => (is => 'ro', isa => 'Str');
  has WebsiteRedirectLocation => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateMultipartUpload');
  has _returns => (isa => 'Aws::S3::CreateMultipartUploadResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateMultipartUploadResult');  
}
package Aws::S3::DeleteBucket {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteBucket');
  has _returns => (isa => 'Aws::S3::DeleteBucketResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteBucketResult');  
}
package Aws::S3::DeleteBucketCors {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteBucketCors');
  has _returns => (isa => 'Aws::S3::DeleteBucketCorsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteBucketCorsResult');  
}
package Aws::S3::DeleteBucketLifecycle {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteBucketLifecycle');
  has _returns => (isa => 'Aws::S3::DeleteBucketLifecycleResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteBucketLifecycleResult');  
}
package Aws::S3::DeleteBucketPolicy {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteBucketPolicy');
  has _returns => (isa => 'Aws::S3::DeleteBucketPolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteBucketPolicyResult');  
}
package Aws::S3::DeleteBucketTagging {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteBucketTagging');
  has _returns => (isa => 'Aws::S3::DeleteBucketTaggingResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteBucketTaggingResult');  
}
package Aws::S3::DeleteBucketWebsite {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteBucketWebsite');
  has _returns => (isa => 'Aws::S3::DeleteBucketWebsiteResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteBucketWebsiteResult');  
}
package Aws::S3::DeleteObject {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has MFA => (is => 'ro', isa => 'Str');
  has VersionId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteObject');
  has _returns => (isa => 'Aws::S3::DeleteObjectResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteObjectResult');  
}
package Aws::S3::DeleteObjects {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has Delete => (is => 'ro', isa => 'Aws::S3::Delete', required => 1);
  has MFA => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteObjects');
  has _returns => (isa => 'Aws::S3::DeleteObjectsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteObjectsResult');  
}
package Aws::S3::GetBucketAcl {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetBucketAcl');
  has _returns => (isa => 'Aws::S3::GetBucketAclResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetBucketAclResult');  
}
package Aws::S3::GetBucketCors {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetBucketCors');
  has _returns => (isa => 'Aws::S3::GetBucketCorsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetBucketCorsResult');  
}
package Aws::S3::GetBucketLifecycle {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetBucketLifecycle');
  has _returns => (isa => 'Aws::S3::GetBucketLifecycleResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetBucketLifecycleResult');  
}
package Aws::S3::GetBucketLocation {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetBucketLocation');
  has _returns => (isa => 'Aws::S3::GetBucketLocationResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetBucketLocationResult');  
}
package Aws::S3::GetBucketLogging {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetBucketLogging');
  has _returns => (isa => 'Aws::S3::GetBucketLoggingResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetBucketLoggingResult');  
}
package Aws::S3::GetBucketNotification {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetBucketNotification');
  has _returns => (isa => 'Aws::S3::GetBucketNotificationResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetBucketNotificationResult');  
}
package Aws::S3::GetBucketPolicy {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetBucketPolicy');
  has _returns => (isa => 'Aws::S3::GetBucketPolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetBucketPolicyResult');  
}
package Aws::S3::GetBucketRequestPayment {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetBucketRequestPayment');
  has _returns => (isa => 'Aws::S3::GetBucketRequestPaymentResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetBucketRequestPaymentResult');  
}
package Aws::S3::GetBucketTagging {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetBucketTagging');
  has _returns => (isa => 'Aws::S3::GetBucketTaggingResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetBucketTaggingResult');  
}
package Aws::S3::GetBucketVersioning {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetBucketVersioning');
  has _returns => (isa => 'Aws::S3::GetBucketVersioningResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetBucketVersioningResult');  
}
package Aws::S3::GetBucketWebsite {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetBucketWebsite');
  has _returns => (isa => 'Aws::S3::GetBucketWebsiteResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetBucketWebsiteResult');  
}
package Aws::S3::GetObject {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has IfMatch => (is => 'ro', isa => 'Str');
  has IfModifiedSince => (is => 'ro', isa => 'Str');
  has IfNoneMatch => (is => 'ro', isa => 'Str');
  has IfUnmodifiedSince => (is => 'ro', isa => 'Str');
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has Range => (is => 'ro', isa => 'Str');
  has ResponseCacheControl => (is => 'ro', isa => 'Str');
  has ResponseContentDisposition => (is => 'ro', isa => 'Str');
  has ResponseContentEncoding => (is => 'ro', isa => 'Str');
  has ResponseContentLanguage => (is => 'ro', isa => 'Str');
  has ResponseContentType => (is => 'ro', isa => 'Str');
  has ResponseExpires => (is => 'ro', isa => 'Str');
  has SSECustomerAlgorithm => (is => 'ro', isa => 'Str');
  has SSECustomerKey => (is => 'ro', isa => 'Str');
  has SSECustomerKeyMD5 => (is => 'ro', isa => 'Str');
  has VersionId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetObject');
  has _returns => (isa => 'Aws::S3::GetObjectResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetObjectResult');  
}
package Aws::S3::GetObjectAcl {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has VersionId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetObjectAcl');
  has _returns => (isa => 'Aws::S3::GetObjectAclResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetObjectAclResult');  
}
package Aws::S3::GetObjectTorrent {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has Key => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetObjectTorrent');
  has _returns => (isa => 'Aws::S3::GetObjectTorrentResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetObjectTorrentResult');  
}
package Aws::S3::HeadBucket {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'HeadBucket');
  has _returns => (isa => 'Aws::S3::HeadBucketResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'HeadBucketResult');  
}
package Aws::S3::HeadObject {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has IfMatch => (is => 'ro', isa => 'Str');
  has IfModifiedSince => (is => 'ro', isa => 'Str');
  has IfNoneMatch => (is => 'ro', isa => 'Str');
  has IfUnmodifiedSince => (is => 'ro', isa => 'Str');
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has Range => (is => 'ro', isa => 'Str');
  has SSECustomerAlgorithm => (is => 'ro', isa => 'Str');
  has SSECustomerKey => (is => 'ro', isa => 'Str');
  has SSECustomerKeyMD5 => (is => 'ro', isa => 'Str');
  has VersionId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'HeadObject');
  has _returns => (isa => 'Aws::S3::HeadObjectResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'HeadObjectResult');  
}
package Aws::S3::ListBuckets {
  use Moose;

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListBuckets');
  has _returns => (isa => 'Aws::S3::ListBucketsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListBucketsResult');  
}
package Aws::S3::ListMultipartUploads {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has Delimiter => (is => 'ro', isa => 'Str');
  has EncodingType => (is => 'ro', isa => 'Str');
  has KeyMarker => (is => 'ro', isa => 'Str');
  has MaxUploads => (is => 'ro', isa => 'Int');
  has Prefix => (is => 'ro', isa => 'Str');
  has UploadIdMarker => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListMultipartUploads');
  has _returns => (isa => 'Aws::S3::ListMultipartUploadsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListMultipartUploadsResult');  
}
package Aws::S3::ListObjectVersions {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has Delimiter => (is => 'ro', isa => 'Str');
  has EncodingType => (is => 'ro', isa => 'Str');
  has KeyMarker => (is => 'ro', isa => 'Str');
  has MaxKeys => (is => 'ro', isa => 'Int');
  has Prefix => (is => 'ro', isa => 'Str');
  has VersionIdMarker => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListObjectVersions');
  has _returns => (isa => 'Aws::S3::ListObjectVersionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListObjectVersionsResult');  
}
package Aws::S3::ListObjects {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has Delimiter => (is => 'ro', isa => 'Str');
  has EncodingType => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxKeys => (is => 'ro', isa => 'Int');
  has Prefix => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListObjects');
  has _returns => (isa => 'Aws::S3::ListObjectsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListObjectsResult');  
}
package Aws::S3::ListParts {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has MaxParts => (is => 'ro', isa => 'Int');
  has PartNumberMarker => (is => 'ro', isa => 'Int');
  has UploadId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListParts');
  has _returns => (isa => 'Aws::S3::ListPartsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListPartsResult');  
}
package Aws::S3::PutBucketAcl {
  use Moose;
  has AccessControlPolicy => (is => 'ro', isa => 'Aws::S3::AccessControlPolicy');
  has ACL => (is => 'ro', isa => 'Str');
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has ContentMD5 => (is => 'ro', isa => 'Str');
  has GrantFullControl => (is => 'ro', isa => 'Str');
  has GrantRead => (is => 'ro', isa => 'Str');
  has GrantReadACP => (is => 'ro', isa => 'Str');
  has GrantWrite => (is => 'ro', isa => 'Str');
  has GrantWriteACP => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'PutBucketAcl');
  has _returns => (isa => 'Aws::S3::PutBucketAclResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PutBucketAclResult');  
}
package Aws::S3::PutBucketCors {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has ContentMD5 => (is => 'ro', isa => 'Str');
  has CORSConfiguration => (is => 'ro', isa => 'Aws::S3::CORSConfiguration');

  has _api_call => (isa => 'Str', is => 'ro', default => 'PutBucketCors');
  has _returns => (isa => 'Aws::S3::PutBucketCorsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PutBucketCorsResult');  
}
package Aws::S3::PutBucketLifecycle {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has ContentMD5 => (is => 'ro', isa => 'Str');
  has LifecycleConfiguration => (is => 'ro', isa => 'Aws::S3::LifecycleConfiguration');

  has _api_call => (isa => 'Str', is => 'ro', default => 'PutBucketLifecycle');
  has _returns => (isa => 'Aws::S3::PutBucketLifecycleResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PutBucketLifecycleResult');  
}
package Aws::S3::PutBucketLogging {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has BucketLoggingStatus => (is => 'ro', isa => 'Aws::S3::BucketLoggingStatus', required => 1);
  has ContentMD5 => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'PutBucketLogging');
  has _returns => (isa => 'Aws::S3::PutBucketLoggingResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PutBucketLoggingResult');  
}
package Aws::S3::PutBucketNotification {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has ContentMD5 => (is => 'ro', isa => 'Str');
  has NotificationConfiguration => (is => 'ro', isa => 'Aws::S3::NotificationConfiguration', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'PutBucketNotification');
  has _returns => (isa => 'Aws::S3::PutBucketNotificationResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PutBucketNotificationResult');  
}
package Aws::S3::PutBucketPolicy {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has ContentMD5 => (is => 'ro', isa => 'Str');
  has Policy => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'PutBucketPolicy');
  has _returns => (isa => 'Aws::S3::PutBucketPolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PutBucketPolicyResult');  
}
package Aws::S3::PutBucketRequestPayment {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has ContentMD5 => (is => 'ro', isa => 'Str');
  has RequestPaymentConfiguration => (is => 'ro', isa => 'Aws::S3::RequestPaymentConfiguration', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'PutBucketRequestPayment');
  has _returns => (isa => 'Aws::S3::PutBucketRequestPaymentResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PutBucketRequestPaymentResult');  
}
package Aws::S3::PutBucketTagging {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has ContentMD5 => (is => 'ro', isa => 'Str');
  has Tagging => (is => 'ro', isa => 'Aws::S3::Tagging', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'PutBucketTagging');
  has _returns => (isa => 'Aws::S3::PutBucketTaggingResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PutBucketTaggingResult');  
}
package Aws::S3::PutBucketVersioning {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has ContentMD5 => (is => 'ro', isa => 'Str');
  has MFA => (is => 'ro', isa => 'Str');
  has VersioningConfiguration => (is => 'ro', isa => 'Aws::S3::VersioningConfiguration', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'PutBucketVersioning');
  has _returns => (isa => 'Aws::S3::PutBucketVersioningResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PutBucketVersioningResult');  
}
package Aws::S3::PutBucketWebsite {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has ContentMD5 => (is => 'ro', isa => 'Str');
  has WebsiteConfiguration => (is => 'ro', isa => 'Aws::S3::WebsiteConfiguration', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'PutBucketWebsite');
  has _returns => (isa => 'Aws::S3::PutBucketWebsiteResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PutBucketWebsiteResult');  
}
package Aws::S3::PutObject {
  use Moose;
  has ACL => (is => 'ro', isa => 'Str');
  has Body => (is => 'ro', isa => 'Str');
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has CacheControl => (is => 'ro', isa => 'Str');
  has ContentDisposition => (is => 'ro', isa => 'Str');
  has ContentEncoding => (is => 'ro', isa => 'Str');
  has ContentLanguage => (is => 'ro', isa => 'Str');
  has ContentLength => (is => 'ro', isa => 'Int');
  has ContentMD5 => (is => 'ro', isa => 'Str');
  has ContentType => (is => 'ro', isa => 'Str');
  has Expires => (is => 'ro', isa => 'Str');
  has GrantFullControl => (is => 'ro', isa => 'Str');
  has GrantRead => (is => 'ro', isa => 'Str');
  has GrantReadACP => (is => 'ro', isa => 'Str');
  has GrantWriteACP => (is => 'ro', isa => 'Str');
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has Metadata => (is => 'ro', isa => 'Aws::S3::');
  has ServerSideEncryption => (is => 'ro', isa => 'Str');
  has SSECustomerAlgorithm => (is => 'ro', isa => 'Str');
  has SSECustomerKey => (is => 'ro', isa => 'Str');
  has SSECustomerKeyMD5 => (is => 'ro', isa => 'Str');
  has StorageClass => (is => 'ro', isa => 'Str');
  has WebsiteRedirectLocation => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'PutObject');
  has _returns => (isa => 'Aws::S3::PutObjectResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PutObjectResult');  
}
package Aws::S3::PutObjectAcl {
  use Moose;
  has AccessControlPolicy => (is => 'ro', isa => 'Aws::S3::AccessControlPolicy');
  has ACL => (is => 'ro', isa => 'Str');
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has ContentMD5 => (is => 'ro', isa => 'Str');
  has GrantFullControl => (is => 'ro', isa => 'Str');
  has GrantRead => (is => 'ro', isa => 'Str');
  has GrantReadACP => (is => 'ro', isa => 'Str');
  has GrantWrite => (is => 'ro', isa => 'Str');
  has GrantWriteACP => (is => 'ro', isa => 'Str');
  has Key => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'PutObjectAcl');
  has _returns => (isa => 'Aws::S3::PutObjectAclResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PutObjectAclResult');  
}
package Aws::S3::RestoreObject {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has RestoreRequest => (is => 'ro', isa => 'Aws::S3::RestoreRequest');
  has VersionId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'RestoreObject');
  has _returns => (isa => 'Aws::S3::RestoreObjectResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RestoreObjectResult');  
}
package Aws::S3::UploadPart {
  use Moose;
  has Body => (is => 'ro', isa => 'Str');
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has ContentLength => (is => 'ro', isa => 'Int');
  has ContentMD5 => (is => 'ro', isa => 'Str');
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has PartNumber => (is => 'ro', isa => 'Int', required => 1);
  has SSECustomerAlgorithm => (is => 'ro', isa => 'Str');
  has SSECustomerKey => (is => 'ro', isa => 'Str');
  has SSECustomerKeyMD5 => (is => 'ro', isa => 'Str');
  has UploadId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UploadPart');
  has _returns => (isa => 'Aws::S3::UploadPartResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UploadPartResult');  
}
package Aws::S3::UploadPartCopy {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has CopySource => (is => 'ro', isa => 'Str', required => 1);
  has CopySourceIfMatch => (is => 'ro', isa => 'Str');
  has CopySourceIfModifiedSince => (is => 'ro', isa => 'Str');
  has CopySourceIfNoneMatch => (is => 'ro', isa => 'Str');
  has CopySourceIfUnmodifiedSince => (is => 'ro', isa => 'Str');
  has CopySourceRange => (is => 'ro', isa => 'Str');
  has CopySourceSSECustomerAlgorithm => (is => 'ro', isa => 'Str');
  has CopySourceSSECustomerKey => (is => 'ro', isa => 'Str');
  has CopySourceSSECustomerKeyMD5 => (is => 'ro', isa => 'Str');
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has PartNumber => (is => 'ro', isa => 'Int', required => 1);
  has SSECustomerAlgorithm => (is => 'ro', isa => 'Str');
  has SSECustomerKey => (is => 'ro', isa => 'Str');
  has SSECustomerKeyMD5 => (is => 'ro', isa => 'Str');
  has UploadId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UploadPartCopy');
  has _returns => (isa => 'Aws::S3::UploadPartCopyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UploadPartCopyResult');  
}

package Aws::S3::CompleteMultipartUploadResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Bucket => (is => 'ro', isa => 'Str');
  has ETag => (is => 'ro', isa => 'Str');
  has Expiration => (is => 'ro', isa => 'Str');
  has Key => (is => 'ro', isa => 'Str');
  has Location => (is => 'ro', isa => 'Str');
  has ServerSideEncryption => (is => 'ro', isa => 'Str');
  has VersionId => (is => 'ro', isa => 'Str');

}
package Aws::S3::CopyObjectResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CopyObjectResult => (is => 'ro', isa => 'Aws::S3::CopyObjectResult');
  has CopySourceVersionId => (is => 'ro', isa => 'Str');
  has Expiration => (is => 'ro', isa => 'Str');
  has ServerSideEncryption => (is => 'ro', isa => 'Str');
  has SSECustomerAlgorithm => (is => 'ro', isa => 'Str');
  has SSECustomerKeyMD5 => (is => 'ro', isa => 'Str');

}
package Aws::S3::CreateBucketResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Location => (is => 'ro', isa => 'Str');

}
package Aws::S3::CreateMultipartUploadResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Bucket => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'Bucket');
  has Key => (is => 'ro', isa => 'Str');
  has ServerSideEncryption => (is => 'ro', isa => 'Str');
  has SSECustomerAlgorithm => (is => 'ro', isa => 'Str');
  has SSECustomerKeyMD5 => (is => 'ro', isa => 'Str');
  has UploadId => (is => 'ro', isa => 'Str');

}
package Aws::S3::DeleteObjectResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DeleteMarker => (is => 'ro', isa => 'Bool');
  has VersionId => (is => 'ro', isa => 'Str');

}
package Aws::S3::DeleteObjectsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Deleted => (is => 'ro', isa => 'ArrayRef[Aws::S3::DeletedObject]');
  has Errors => (is => 'ro', isa => 'ArrayRef[Aws::S3::Error]', traits => ['Unwrapped'], xmlname => 'Error');

}
package Aws::S3::GetBucketAclResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Grants => (is => 'ro', isa => 'ArrayRef[Aws::S3::Grant]', traits => ['Unwrapped'], xmlname => 'Grant', traits => ['Unwrapped'], xmlname => 'AccessControlList');
  has Owner => (is => 'ro', isa => 'Aws::S3::Owner');

}
package Aws::S3::GetBucketCorsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CORSRules => (is => 'ro', isa => 'ArrayRef[Aws::S3::CORSRule]', traits => ['Unwrapped'], xmlname => 'CORSRule');

}
package Aws::S3::GetBucketLifecycleResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Rules => (is => 'ro', isa => 'ArrayRef[Aws::S3::Rule]', traits => ['Unwrapped'], xmlname => 'Rule');

}
package Aws::S3::GetBucketLocationResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has LocationConstraint => (is => 'ro', isa => 'Str');

}
package Aws::S3::GetBucketLoggingResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has LoggingEnabled => (is => 'ro', isa => 'Aws::S3::LoggingEnabled');

}
package Aws::S3::GetBucketNotificationResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has TopicConfiguration => (is => 'ro', isa => 'Aws::S3::TopicConfiguration');

}
package Aws::S3::GetBucketPolicyResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Policy => (is => 'ro', isa => 'Str');

}
package Aws::S3::GetBucketRequestPaymentResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Payer => (is => 'ro', isa => 'Str');

}
package Aws::S3::GetBucketTaggingResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has TagSet => (is => 'ro', isa => 'ArrayRef[Aws::S3::Tag]', traits => ['Unwrapped'], xmlname => 'Tag', required => 1);

}
package Aws::S3::GetBucketVersioningResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has MfaDelete => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'MfaDelete');
  has Status => (is => 'ro', isa => 'Str');

}
package Aws::S3::GetBucketWebsiteResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ErrorDocument => (is => 'ro', isa => 'Aws::S3::ErrorDocument');
  has IndexDocument => (is => 'ro', isa => 'Aws::S3::IndexDocument');
  has RedirectAllRequestsTo => (is => 'ro', isa => 'Aws::S3::RedirectAllRequestsTo');
  has RoutingRules => (is => 'ro', isa => 'ArrayRef[Aws::S3::RoutingRule]', traits => ['Unwrapped'], xmlname => 'RoutingRule');

}
package Aws::S3::GetObjectResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has AcceptRanges => (is => 'ro', isa => 'Str');
  has Body => (is => 'ro', isa => 'Str');
  has CacheControl => (is => 'ro', isa => 'Str');
  has ContentDisposition => (is => 'ro', isa => 'Str');
  has ContentEncoding => (is => 'ro', isa => 'Str');
  has ContentLanguage => (is => 'ro', isa => 'Str');
  has ContentLength => (is => 'ro', isa => 'Int');
  has ContentType => (is => 'ro', isa => 'Str');
  has DeleteMarker => (is => 'ro', isa => 'Bool');
  has ETag => (is => 'ro', isa => 'Str');
  has Expiration => (is => 'ro', isa => 'Str');
  has Expires => (is => 'ro', isa => 'Str');
  has LastModified => (is => 'ro', isa => 'Str');
  has Metadata => (is => 'ro', isa => 'Aws::S3::');
  has MissingMeta => (is => 'ro', isa => 'Int');
  has Restore => (is => 'ro', isa => 'Str');
  has ServerSideEncryption => (is => 'ro', isa => 'Str');
  has SSECustomerAlgorithm => (is => 'ro', isa => 'Str');
  has SSECustomerKeyMD5 => (is => 'ro', isa => 'Str');
  has VersionId => (is => 'ro', isa => 'Str');
  has WebsiteRedirectLocation => (is => 'ro', isa => 'Str');

}
package Aws::S3::GetObjectAclResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Grants => (is => 'ro', isa => 'ArrayRef[Aws::S3::Grant]', traits => ['Unwrapped'], xmlname => 'Grant', traits => ['Unwrapped'], xmlname => 'AccessControlList');
  has Owner => (is => 'ro', isa => 'Aws::S3::Owner');

}
package Aws::S3::GetObjectTorrentResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Body => (is => 'ro', isa => 'Str');

}
package Aws::S3::HeadObjectResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has AcceptRanges => (is => 'ro', isa => 'Str');
  has CacheControl => (is => 'ro', isa => 'Str');
  has ContentDisposition => (is => 'ro', isa => 'Str');
  has ContentEncoding => (is => 'ro', isa => 'Str');
  has ContentLanguage => (is => 'ro', isa => 'Str');
  has ContentLength => (is => 'ro', isa => 'Int');
  has ContentType => (is => 'ro', isa => 'Str');
  has DeleteMarker => (is => 'ro', isa => 'Bool');
  has ETag => (is => 'ro', isa => 'Str');
  has Expiration => (is => 'ro', isa => 'Str');
  has Expires => (is => 'ro', isa => 'Str');
  has LastModified => (is => 'ro', isa => 'Str');
  has Metadata => (is => 'ro', isa => 'Aws::S3::');
  has MissingMeta => (is => 'ro', isa => 'Int');
  has Restore => (is => 'ro', isa => 'Str');
  has ServerSideEncryption => (is => 'ro', isa => 'Str');
  has SSECustomerAlgorithm => (is => 'ro', isa => 'Str');
  has SSECustomerKeyMD5 => (is => 'ro', isa => 'Str');
  has VersionId => (is => 'ro', isa => 'Str');
  has WebsiteRedirectLocation => (is => 'ro', isa => 'Str');

}
package Aws::S3::ListBucketsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Buckets => (is => 'ro', isa => 'ArrayRef[Aws::S3::Bucket]', traits => ['Unwrapped'], xmlname => 'Bucket');
  has Owner => (is => 'ro', isa => 'Aws::S3::Owner');

}
package Aws::S3::ListMultipartUploadsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Bucket => (is => 'ro', isa => 'Str');
  has CommonPrefixes => (is => 'ro', isa => 'ArrayRef[Aws::S3::CommonPrefix]');
  has EncodingType => (is => 'ro', isa => 'Str');
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has KeyMarker => (is => 'ro', isa => 'Str');
  has MaxUploads => (is => 'ro', isa => 'Int');
  has NextKeyMarker => (is => 'ro', isa => 'Str');
  has NextUploadIdMarker => (is => 'ro', isa => 'Str');
  has Prefix => (is => 'ro', isa => 'Str');
  has UploadIdMarker => (is => 'ro', isa => 'Str');
  has Uploads => (is => 'ro', isa => 'ArrayRef[Aws::S3::MultipartUpload]', traits => ['Unwrapped'], xmlname => 'Upload');

}
package Aws::S3::ListObjectVersionsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CommonPrefixes => (is => 'ro', isa => 'ArrayRef[Aws::S3::CommonPrefix]');
  has DeleteMarkers => (is => 'ro', isa => 'ArrayRef[Aws::S3::DeleteMarkerEntry]', traits => ['Unwrapped'], xmlname => 'DeleteMarker');
  has EncodingType => (is => 'ro', isa => 'Str');
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has KeyMarker => (is => 'ro', isa => 'Str');
  has MaxKeys => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str');
  has NextKeyMarker => (is => 'ro', isa => 'Str');
  has NextVersionIdMarker => (is => 'ro', isa => 'Str');
  has Prefix => (is => 'ro', isa => 'Str');
  has VersionIdMarker => (is => 'ro', isa => 'Str');
  has Versions => (is => 'ro', isa => 'ArrayRef[Aws::S3::ObjectVersion]', traits => ['Unwrapped'], xmlname => 'Version');

}
package Aws::S3::ListObjectsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CommonPrefixes => (is => 'ro', isa => 'ArrayRef[Aws::S3::CommonPrefix]');
  has Contents => (is => 'ro', isa => 'ArrayRef[Aws::S3::Object]');
  has EncodingType => (is => 'ro', isa => 'Str');
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxKeys => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str');
  has NextMarker => (is => 'ro', isa => 'Str');
  has Prefix => (is => 'ro', isa => 'Str');

}
package Aws::S3::ListPartsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Bucket => (is => 'ro', isa => 'Str');
  has Initiator => (is => 'ro', isa => 'Aws::S3::Initiator');
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has Key => (is => 'ro', isa => 'Str');
  has MaxParts => (is => 'ro', isa => 'Int');
  has NextPartNumberMarker => (is => 'ro', isa => 'Int');
  has Owner => (is => 'ro', isa => 'Aws::S3::Owner');
  has PartNumberMarker => (is => 'ro', isa => 'Int');
  has Parts => (is => 'ro', isa => 'ArrayRef[Aws::S3::Part]', traits => ['Unwrapped'], xmlname => 'Part');
  has StorageClass => (is => 'ro', isa => 'Str');
  has UploadId => (is => 'ro', isa => 'Str');

}
package Aws::S3::PutObjectResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ETag => (is => 'ro', isa => 'Str');
  has Expiration => (is => 'ro', isa => 'Str');
  has ServerSideEncryption => (is => 'ro', isa => 'Str');
  has SSECustomerAlgorithm => (is => 'ro', isa => 'Str');
  has SSECustomerKeyMD5 => (is => 'ro', isa => 'Str');
  has VersionId => (is => 'ro', isa => 'Str');

}
package Aws::S3::UploadPartResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ETag => (is => 'ro', isa => 'Str');
  has ServerSideEncryption => (is => 'ro', isa => 'Str');
  has SSECustomerAlgorithm => (is => 'ro', isa => 'Str');
  has SSECustomerKeyMD5 => (is => 'ro', isa => 'Str');

}
package Aws::S3::UploadPartCopyResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CopyPartResult => (is => 'ro', isa => 'Aws::S3::CopyPartResult');
  has CopySourceVersionId => (is => 'ro', isa => 'Str');
  has ServerSideEncryption => (is => 'ro', isa => 'Str');
  has SSECustomerAlgorithm => (is => 'ro', isa => 'Str');
  has SSECustomerKeyMD5 => (is => 'ro', isa => 'Str');

}

package Aws::S3 {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 's3');
  has version => (is => 'ro', isa => 'Str', default => '2006-03-01');
  has flattened_arrays => (is => 'ro', isa => 'Str', default => '1');

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'AWS::API::SingleEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::S3Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::RestXmlCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::XMLResponse');

  
  sub AbortMultipartUpload {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::S3::AbortMultipartUpload', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub CompleteMultipartUpload {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::S3::CompleteMultipartUpload', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::S3::CompleteMultipartUploadResult->from_result($result);return $o_result;
  }
  sub CopyObject {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::S3::CopyObject', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::S3::CopyObjectResult->from_result($result);return $o_result;
  }
  sub CreateBucket {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::S3::CreateBucket', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::S3::CreateBucketResult->from_result($result);return $o_result;
  }
  sub CreateMultipartUpload {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::S3::CreateMultipartUpload', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::S3::CreateMultipartUploadResult->from_result($result);return $o_result;
  }
  sub DeleteBucket {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::S3::DeleteBucket', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteBucketCors {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::S3::DeleteBucketCors', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteBucketLifecycle {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::S3::DeleteBucketLifecycle', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteBucketPolicy {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::S3::DeleteBucketPolicy', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteBucketTagging {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::S3::DeleteBucketTagging', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteBucketWebsite {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::S3::DeleteBucketWebsite', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteObject {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::S3::DeleteObject', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::S3::DeleteObjectResult->from_result($result);return $o_result;
  }
  sub DeleteObjects {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::S3::DeleteObjects', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::S3::DeleteObjectsResult->from_result($result);return $o_result;
  }
  sub GetBucketAcl {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::S3::GetBucketAcl', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::S3::GetBucketAclResult->from_result($result);return $o_result;
  }
  sub GetBucketCors {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::S3::GetBucketCors', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::S3::GetBucketCorsResult->from_result($result);return $o_result;
  }
  sub GetBucketLifecycle {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::S3::GetBucketLifecycle', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::S3::GetBucketLifecycleResult->from_result($result);return $o_result;
  }
  sub GetBucketLocation {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::S3::GetBucketLocation', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::S3::GetBucketLocationResult->from_result($result);return $o_result;
  }
  sub GetBucketLogging {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::S3::GetBucketLogging', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::S3::GetBucketLoggingResult->from_result($result);return $o_result;
  }
  sub GetBucketNotification {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::S3::GetBucketNotification', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::S3::GetBucketNotificationResult->from_result($result);return $o_result;
  }
  sub GetBucketPolicy {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::S3::GetBucketPolicy', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::S3::GetBucketPolicyResult->from_result($result);return $o_result;
  }
  sub GetBucketRequestPayment {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::S3::GetBucketRequestPayment', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::S3::GetBucketRequestPaymentResult->from_result($result);return $o_result;
  }
  sub GetBucketTagging {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::S3::GetBucketTagging', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::S3::GetBucketTaggingResult->from_result($result);return $o_result;
  }
  sub GetBucketVersioning {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::S3::GetBucketVersioning', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::S3::GetBucketVersioningResult->from_result($result);return $o_result;
  }
  sub GetBucketWebsite {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::S3::GetBucketWebsite', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::S3::GetBucketWebsiteResult->from_result($result);return $o_result;
  }
  sub GetObject {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::S3::GetObject', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::S3::GetObjectResult->from_result($result);return $o_result;
  }
  sub GetObjectAcl {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::S3::GetObjectAcl', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::S3::GetObjectAclResult->from_result($result);return $o_result;
  }
  sub GetObjectTorrent {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::S3::GetObjectTorrent', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::S3::GetObjectTorrentResult->from_result($result);return $o_result;
  }
  sub HeadBucket {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::S3::HeadBucket', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub HeadObject {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::S3::HeadObject', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::S3::HeadObjectResult->from_result($result);return $o_result;
  }
  sub ListBuckets {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::S3::ListBuckets', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::S3::ListBucketsResult->from_result($result);return $o_result;
  }
  sub ListMultipartUploads {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::S3::ListMultipartUploads', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::S3::ListMultipartUploadsResult->from_result($result);return $o_result;
  }
  sub ListObjects {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::S3::ListObjects', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::S3::ListObjectsResult->from_result($result);return $o_result;
  }
  sub ListObjectVersions {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::S3::ListObjectVersions', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::S3::ListObjectVersionsResult->from_result($result);return $o_result;
  }
  sub ListParts {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::S3::ListParts', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::S3::ListPartsResult->from_result($result);return $o_result;
  }
  sub PutBucketAcl {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::S3::PutBucketAcl', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub PutBucketCors {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::S3::PutBucketCors', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub PutBucketLifecycle {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::S3::PutBucketLifecycle', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub PutBucketLogging {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::S3::PutBucketLogging', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub PutBucketNotification {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::S3::PutBucketNotification', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub PutBucketPolicy {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::S3::PutBucketPolicy', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub PutBucketRequestPayment {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::S3::PutBucketRequestPayment', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub PutBucketTagging {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::S3::PutBucketTagging', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub PutBucketVersioning {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::S3::PutBucketVersioning', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub PutBucketWebsite {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::S3::PutBucketWebsite', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub PutObject {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::S3::PutObject', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::S3::PutObjectResult->from_result($result);return $o_result;
  }
  sub PutObjectAcl {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::S3::PutObjectAcl', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub RestoreObject {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::S3::RestoreObject', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub UploadPart {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::S3::UploadPart', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::S3::UploadPartResult->from_result($result);return $o_result;
  }
  sub UploadPartCopy {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::S3::UploadPartCopy', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::S3::UploadPartCopyResult->from_result($result);return $o_result;
  }
}
1;
