
use AWS::API;

use Moose::Util::TypeConstraints;
enum 'Aws::CloudFront::GeoRestrictionType', ['blacklist','whitelist','none',];
enum 'Aws::CloudFront::ItemSelection', ['none','whitelist','all',];
enum 'Aws::CloudFront::OriginProtocolPolicy', ['http-only','match-viewer',];
enum 'Aws::CloudFront::PriceClass', ['PriceClass_100','PriceClass_200','PriceClass_All',];
enum 'Aws::CloudFront::ViewerProtocolPolicy', ['allow-all','https-only',];


package Aws::CloudFront::ActiveTrustedSigners {
  use Moose;
  with ('AWS::API::ResultParser');
  has Enabled => (is => 'ro', isa => 'Bool', required => 1);
  has Items => (is => 'ro', isa => 'ArrayRef[Aws::CloudFront::Signer]');
  has Quantity => (is => 'ro', isa => 'Int', required => 1);
}

package Aws::CloudFront::Aliases {
  use Moose;
  with ('AWS::API::ResultParser');
  has Items => (is => 'ro', isa => 'ArrayRef[Str]');
  has Quantity => (is => 'ro', isa => 'Int', required => 1);
}

package Aws::CloudFront::AllowedMethods {
  use Moose;
  with ('AWS::API::ResultParser');
  has Items => (is => 'ro', isa => 'ArrayRef[Str]');
  has Quantity => (is => 'ro', isa => 'Int', required => 1);
}

package Aws::CloudFront::CacheBehavior {
  use Moose;
  with ('AWS::API::ResultParser');
  has AllowedMethods => (is => 'ro', isa => 'Aws::CloudFront::AllowedMethods');
  has ForwardedValues => (is => 'ro', isa => 'Aws::CloudFront::ForwardedValues', required => 1);
  has MinTTL => (is => 'ro', isa => 'Num', required => 1);
  has PathPattern => (is => 'ro', isa => 'Str', required => 1);
  has TargetOriginId => (is => 'ro', isa => 'Str', required => 1);
  has TrustedSigners => (is => 'ro', isa => 'Aws::CloudFront::TrustedSigners', required => 1);
  has ViewerProtocolPolicy => (is => 'ro', isa => 'Aws::CloudFront::ViewerProtocolPolicy', required => 1);
}

package Aws::CloudFront::CacheBehaviors {
  use Moose;
  with ('AWS::API::ResultParser');
  has Items => (is => 'ro', isa => 'ArrayRef[Aws::CloudFront::CacheBehavior]');
  has Quantity => (is => 'ro', isa => 'Int', required => 1);
}

package Aws::CloudFront::CloudFrontOriginAccessIdentity {
  use Moose;
  with ('AWS::API::ResultParser');
  has CloudFrontOriginAccessIdentityConfig => (is => 'ro', isa => 'Aws::CloudFront::CloudFrontOriginAccessIdentityConfig');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has S3CanonicalUserId => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::CloudFront::CloudFrontOriginAccessIdentityConfig {
  use Moose;
  with ('AWS::API::ResultParser');
  has CallerReference => (is => 'ro', isa => 'Str', required => 1);
  has Comment => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::CloudFront::CloudFrontOriginAccessIdentityList {
  use Moose;
  with ('AWS::API::ResultParser');
  has IsTruncated => (is => 'ro', isa => 'Bool', required => 1);
  has Items => (is => 'ro', isa => 'ArrayRef[Aws::CloudFront::CloudFrontOriginAccessIdentitySummary]');
  has Marker => (is => 'ro', isa => 'Str', required => 1);
  has MaxItems => (is => 'ro', isa => 'Int', required => 1);
  has NextMarker => (is => 'ro', isa => 'Str');
  has Quantity => (is => 'ro', isa => 'Int', required => 1);
}

package Aws::CloudFront::CloudFrontOriginAccessIdentitySummary {
  use Moose;
  with ('AWS::API::ResultParser');
  has Comment => (is => 'ro', isa => 'Str', required => 1);
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has S3CanonicalUserId => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::CloudFront::CookieNames {
  use Moose;
  with ('AWS::API::ResultParser');
  has Items => (is => 'ro', isa => 'ArrayRef[Str]');
  has Quantity => (is => 'ro', isa => 'Int', required => 1);
}

package Aws::CloudFront::CookiePreference {
  use Moose;
  with ('AWS::API::ResultParser');
  has Forward => (is => 'ro', isa => 'Aws::CloudFront::ItemSelection', required => 1);
  has WhitelistedNames => (is => 'ro', isa => 'Aws::CloudFront::CookieNames');
}

package Aws::CloudFront::CustomErrorResponse {
  use Moose;
  with ('AWS::API::ResultParser');
  has ErrorCachingMinTTL => (is => 'ro', isa => 'Num');
  has ErrorCode => (is => 'ro', isa => 'Int', required => 1);
  has ResponseCode => (is => 'ro', isa => 'Str');
  has ResponsePagePath => (is => 'ro', isa => 'Str');
}

package Aws::CloudFront::CustomErrorResponses {
  use Moose;
  with ('AWS::API::ResultParser');
  has Items => (is => 'ro', isa => 'ArrayRef[Aws::CloudFront::CustomErrorResponse]');
  has Quantity => (is => 'ro', isa => 'Int', required => 1);
}

package Aws::CloudFront::CustomOriginConfig {
  use Moose;
  with ('AWS::API::ResultParser');
  has HTTPPort => (is => 'ro', isa => 'Int', required => 1);
  has HTTPSPort => (is => 'ro', isa => 'Int', required => 1);
  has OriginProtocolPolicy => (is => 'ro', isa => 'Aws::CloudFront::OriginProtocolPolicy', required => 1);
}

package Aws::CloudFront::DefaultCacheBehavior {
  use Moose;
  with ('AWS::API::ResultParser');
  has AllowedMethods => (is => 'ro', isa => 'Aws::CloudFront::AllowedMethods');
  has ForwardedValues => (is => 'ro', isa => 'Aws::CloudFront::ForwardedValues', required => 1);
  has MinTTL => (is => 'ro', isa => 'Num', required => 1);
  has TargetOriginId => (is => 'ro', isa => 'Str', required => 1);
  has TrustedSigners => (is => 'ro', isa => 'Aws::CloudFront::TrustedSigners', required => 1);
  has ViewerProtocolPolicy => (is => 'ro', isa => 'Aws::CloudFront::ViewerProtocolPolicy', required => 1);
}

package Aws::CloudFront::Distribution {
  use Moose;
  with ('AWS::API::ResultParser');
  has ActiveTrustedSigners => (is => 'ro', isa => 'Aws::CloudFront::ActiveTrustedSigners', required => 1);
  has DistributionConfig => (is => 'ro', isa => 'Aws::CloudFront::DistributionConfig', required => 1);
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has InProgressInvalidationBatches => (is => 'ro', isa => 'Int', required => 1);
  has LastModifiedTime => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::CloudFront::DistributionConfig {
  use Moose;
  with ('AWS::API::ResultParser');
  has Aliases => (is => 'ro', isa => 'Aws::CloudFront::Aliases', required => 1);
  has CacheBehaviors => (is => 'ro', isa => 'Aws::CloudFront::CacheBehaviors', required => 1);
  has CallerReference => (is => 'ro', isa => 'Str', required => 1);
  has Comment => (is => 'ro', isa => 'Str', required => 1);
  has CustomErrorResponses => (is => 'ro', isa => 'Aws::CloudFront::CustomErrorResponses');
  has DefaultCacheBehavior => (is => 'ro', isa => 'Aws::CloudFront::DefaultCacheBehavior', required => 1);
  has DefaultRootObject => (is => 'ro', isa => 'Str', required => 1);
  has Enabled => (is => 'ro', isa => 'Bool', required => 1);
  has Logging => (is => 'ro', isa => 'Aws::CloudFront::LoggingConfig', required => 1);
  has Origins => (is => 'ro', isa => 'Aws::CloudFront::Origins', required => 1);
  has PriceClass => (is => 'ro', isa => 'Aws::CloudFront::PriceClass', required => 1);
  has Restrictions => (is => 'ro', isa => 'Aws::CloudFront::Restrictions');
  has ViewerCertificate => (is => 'ro', isa => 'Aws::CloudFront::ViewerCertificate');
}

package Aws::CloudFront::DistributionList {
  use Moose;
  with ('AWS::API::ResultParser');
  has IsTruncated => (is => 'ro', isa => 'Bool', required => 1);
  has Items => (is => 'ro', isa => 'ArrayRef[Aws::CloudFront::DistributionSummary]');
  has Marker => (is => 'ro', isa => 'Str', required => 1);
  has MaxItems => (is => 'ro', isa => 'Int', required => 1);
  has NextMarker => (is => 'ro', isa => 'Str');
  has Quantity => (is => 'ro', isa => 'Int', required => 1);
}

package Aws::CloudFront::DistributionSummary {
  use Moose;
  with ('AWS::API::ResultParser');
  has Aliases => (is => 'ro', isa => 'Aws::CloudFront::Aliases', required => 1);
  has CacheBehaviors => (is => 'ro', isa => 'Aws::CloudFront::CacheBehaviors', required => 1);
  has Comment => (is => 'ro', isa => 'Str', required => 1);
  has CustomErrorResponses => (is => 'ro', isa => 'Aws::CloudFront::CustomErrorResponses', required => 1);
  has DefaultCacheBehavior => (is => 'ro', isa => 'Aws::CloudFront::DefaultCacheBehavior', required => 1);
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has Enabled => (is => 'ro', isa => 'Bool', required => 1);
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has LastModifiedTime => (is => 'ro', isa => 'Str', required => 1);
  has Origins => (is => 'ro', isa => 'Aws::CloudFront::Origins', required => 1);
  has PriceClass => (is => 'ro', isa => 'Aws::CloudFront::PriceClass', required => 1);
  has Restrictions => (is => 'ro', isa => 'Aws::CloudFront::Restrictions', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has ViewerCertificate => (is => 'ro', isa => 'Aws::CloudFront::ViewerCertificate', required => 1);
}

package Aws::CloudFront::ForwardedValues {
  use Moose;
  with ('AWS::API::ResultParser');
  has Cookies => (is => 'ro', isa => 'Aws::CloudFront::CookiePreference', required => 1);
  has QueryString => (is => 'ro', isa => 'Bool', required => 1);
}

package Aws::CloudFront::GeoRestriction {
  use Moose;
  with ('AWS::API::ResultParser');
  has Items => (is => 'ro', isa => 'ArrayRef[Str]');
  has Quantity => (is => 'ro', isa => 'Int', required => 1);
  has RestrictionType => (is => 'ro', isa => 'Aws::CloudFront::GeoRestrictionType', required => 1);
}

package Aws::CloudFront::Invalidation {
  use Moose;
  with ('AWS::API::ResultParser');
  has CreateTime => (is => 'ro', isa => 'Str', required => 1);
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has InvalidationBatch => (is => 'ro', isa => 'Aws::CloudFront::InvalidationBatch', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::CloudFront::InvalidationBatch {
  use Moose;
  with ('AWS::API::ResultParser');
  has CallerReference => (is => 'ro', isa => 'Str', required => 1);
  has Paths => (is => 'ro', isa => 'Aws::CloudFront::Paths', required => 1);
}

package Aws::CloudFront::InvalidationList {
  use Moose;
  with ('AWS::API::ResultParser');
  has IsTruncated => (is => 'ro', isa => 'Bool', required => 1);
  has Items => (is => 'ro', isa => 'ArrayRef[Aws::CloudFront::InvalidationSummary]');
  has Marker => (is => 'ro', isa => 'Str', required => 1);
  has MaxItems => (is => 'ro', isa => 'Int', required => 1);
  has NextMarker => (is => 'ro', isa => 'Str');
  has Quantity => (is => 'ro', isa => 'Int', required => 1);
}

package Aws::CloudFront::InvalidationSummary {
  use Moose;
  with ('AWS::API::ResultParser');
  has CreateTime => (is => 'ro', isa => 'Str', required => 1);
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::CloudFront::KeyPairIds {
  use Moose;
  with ('AWS::API::ResultParser');
  has Items => (is => 'ro', isa => 'ArrayRef[Str]');
  has Quantity => (is => 'ro', isa => 'Int', required => 1);
}

package Aws::CloudFront::LoggingConfig {
  use Moose;
  with ('AWS::API::ResultParser');
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has Enabled => (is => 'ro', isa => 'Bool', required => 1);
  has IncludeCookies => (is => 'ro', isa => 'Bool', required => 1);
  has Prefix => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::CloudFront::Origin {
  use Moose;
  with ('AWS::API::ResultParser');
  has CustomOriginConfig => (is => 'ro', isa => 'Aws::CloudFront::CustomOriginConfig');
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has S3OriginConfig => (is => 'ro', isa => 'Aws::CloudFront::S3OriginConfig');
}

package Aws::CloudFront::Origins {
  use Moose;
  with ('AWS::API::ResultParser');
  has Items => (is => 'ro', isa => 'ArrayRef[Aws::CloudFront::Origin]');
  has Quantity => (is => 'ro', isa => 'Int', required => 1);
}

package Aws::CloudFront::Paths {
  use Moose;
  with ('AWS::API::ResultParser');
  has Items => (is => 'ro', isa => 'ArrayRef[Str]');
  has Quantity => (is => 'ro', isa => 'Int', required => 1);
}

package Aws::CloudFront::Restrictions {
  use Moose;
  with ('AWS::API::ResultParser');
  has GeoRestriction => (is => 'ro', isa => 'Aws::CloudFront::GeoRestriction', required => 1);
}

package Aws::CloudFront::S3Origin {
  use Moose;
  with ('AWS::API::ResultParser');
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has OriginAccessIdentity => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::CloudFront::S3OriginConfig {
  use Moose;
  with ('AWS::API::ResultParser');
  has OriginAccessIdentity => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::CloudFront::Signer {
  use Moose;
  with ('AWS::API::ResultParser');
  has AwsAccountNumber => (is => 'ro', isa => 'Str');
  has KeyPairIds => (is => 'ro', isa => 'Aws::CloudFront::KeyPairIds');
}

package Aws::CloudFront::StreamingDistribution {
  use Moose;
  with ('AWS::API::ResultParser');
  has ActiveTrustedSigners => (is => 'ro', isa => 'Aws::CloudFront::ActiveTrustedSigners', required => 1);
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has StreamingDistributionConfig => (is => 'ro', isa => 'Aws::CloudFront::StreamingDistributionConfig', required => 1);
}

package Aws::CloudFront::StreamingDistributionConfig {
  use Moose;
  with ('AWS::API::ResultParser');
  has Aliases => (is => 'ro', isa => 'Aws::CloudFront::Aliases', required => 1);
  has CallerReference => (is => 'ro', isa => 'Str', required => 1);
  has Comment => (is => 'ro', isa => 'Str', required => 1);
  has Enabled => (is => 'ro', isa => 'Bool', required => 1);
  has Logging => (is => 'ro', isa => 'Aws::CloudFront::StreamingLoggingConfig', required => 1);
  has PriceClass => (is => 'ro', isa => 'Aws::CloudFront::PriceClass', required => 1);
  has S3Origin => (is => 'ro', isa => 'Aws::CloudFront::S3Origin', required => 1);
  has TrustedSigners => (is => 'ro', isa => 'Aws::CloudFront::TrustedSigners', required => 1);
}

package Aws::CloudFront::StreamingDistributionList {
  use Moose;
  with ('AWS::API::ResultParser');
  has IsTruncated => (is => 'ro', isa => 'Bool', required => 1);
  has Items => (is => 'ro', isa => 'ArrayRef[Aws::CloudFront::StreamingDistributionSummary]');
  has Marker => (is => 'ro', isa => 'Str', required => 1);
  has MaxItems => (is => 'ro', isa => 'Int', required => 1);
  has NextMarker => (is => 'ro', isa => 'Str');
  has Quantity => (is => 'ro', isa => 'Int', required => 1);
}

package Aws::CloudFront::StreamingDistributionSummary {
  use Moose;
  with ('AWS::API::ResultParser');
  has Aliases => (is => 'ro', isa => 'Aws::CloudFront::Aliases', required => 1);
  has Comment => (is => 'ro', isa => 'Str', required => 1);
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has Enabled => (is => 'ro', isa => 'Bool', required => 1);
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has LastModifiedTime => (is => 'ro', isa => 'Str', required => 1);
  has PriceClass => (is => 'ro', isa => 'Aws::CloudFront::PriceClass', required => 1);
  has S3Origin => (is => 'ro', isa => 'Aws::CloudFront::S3Origin', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has TrustedSigners => (is => 'ro', isa => 'Aws::CloudFront::TrustedSigners', required => 1);
}

package Aws::CloudFront::StreamingLoggingConfig {
  use Moose;
  with ('AWS::API::ResultParser');
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has Enabled => (is => 'ro', isa => 'Bool', required => 1);
  has Prefix => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::CloudFront::TrustedSigners {
  use Moose;
  with ('AWS::API::ResultParser');
  has Enabled => (is => 'ro', isa => 'Bool', required => 1);
  has Items => (is => 'ro', isa => 'ArrayRef[Str]');
  has Quantity => (is => 'ro', isa => 'Int', required => 1);
}

package Aws::CloudFront::ViewerCertificate {
  use Moose;
  with ('AWS::API::ResultParser');
  has CloudFrontDefaultCertificate => (is => 'ro', isa => 'Bool');
  has IAMCertificateId => (is => 'ro', isa => 'Str');
}



package Aws::CloudFront::CreateCloudFrontOriginAccessIdentity2013_11_11 {
  use Moose;
  has CloudFrontOriginAccessIdentityConfig => (is => 'ro', isa => 'Aws::CloudFront::CloudFrontOriginAccessIdentityConfig', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCloudFrontOriginAccessIdentity');
  has _returns => (isa => 'Aws::CloudFront::CreateCloudFrontOriginAccessIdentityResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateCloudFrontOriginAccessIdentityResult');  
}
package Aws::CloudFront::CreateDistribution2013_11_11 {
  use Moose;
  has DistributionConfig => (is => 'ro', isa => 'Aws::CloudFront::DistributionConfig', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDistribution');
  has _returns => (isa => 'Aws::CloudFront::CreateDistributionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateDistributionResult');  
}
package Aws::CloudFront::CreateInvalidation2013_11_11 {
  use Moose;
  has DistributionId => (is => 'ro', isa => 'Str', required => 1);
  has InvalidationBatch => (is => 'ro', isa => 'Aws::CloudFront::InvalidationBatch', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateInvalidation');
  has _returns => (isa => 'Aws::CloudFront::CreateInvalidationResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateInvalidationResult');  
}
package Aws::CloudFront::CreateStreamingDistribution2013_11_11 {
  use Moose;
  has StreamingDistributionConfig => (is => 'ro', isa => 'Aws::CloudFront::StreamingDistributionConfig', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStreamingDistribution');
  has _returns => (isa => 'Aws::CloudFront::CreateStreamingDistributionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateStreamingDistributionResult');  
}
package Aws::CloudFront::DeleteCloudFrontOriginAccessIdentity2013_11_11 {
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has IfMatch => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCloudFrontOriginAccessIdentity');
  has _returns => (isa => 'Aws::CloudFront::DeleteCloudFrontOriginAccessIdentityResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteCloudFrontOriginAccessIdentityResult');  
}
package Aws::CloudFront::DeleteDistribution2013_11_11 {
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has IfMatch => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDistribution');
  has _returns => (isa => 'Aws::CloudFront::DeleteDistributionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteDistributionResult');  
}
package Aws::CloudFront::DeleteStreamingDistribution2013_11_11 {
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has IfMatch => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteStreamingDistribution');
  has _returns => (isa => 'Aws::CloudFront::DeleteStreamingDistributionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteStreamingDistributionResult');  
}
package Aws::CloudFront::GetCloudFrontOriginAccessIdentity2013_11_11 {
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetCloudFrontOriginAccessIdentity');
  has _returns => (isa => 'Aws::CloudFront::GetCloudFrontOriginAccessIdentityResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetCloudFrontOriginAccessIdentityResult');  
}
package Aws::CloudFront::GetCloudFrontOriginAccessIdentityConfig2013_11_11 {
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetCloudFrontOriginAccessIdentityConfig');
  has _returns => (isa => 'Aws::CloudFront::GetCloudFrontOriginAccessIdentityConfigResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetCloudFrontOriginAccessIdentityConfigResult');  
}
package Aws::CloudFront::GetDistribution2013_11_11 {
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetDistribution');
  has _returns => (isa => 'Aws::CloudFront::GetDistributionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetDistributionResult');  
}
package Aws::CloudFront::GetDistributionConfig2013_11_11 {
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetDistributionConfig');
  has _returns => (isa => 'Aws::CloudFront::GetDistributionConfigResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetDistributionConfigResult');  
}
package Aws::CloudFront::GetInvalidation2013_11_11 {
  use Moose;
  has DistributionId => (is => 'ro', isa => 'Str', required => 1);
  has Id => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetInvalidation');
  has _returns => (isa => 'Aws::CloudFront::GetInvalidationResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetInvalidationResult');  
}
package Aws::CloudFront::GetStreamingDistribution2013_11_11 {
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetStreamingDistribution');
  has _returns => (isa => 'Aws::CloudFront::GetStreamingDistributionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetStreamingDistributionResult');  
}
package Aws::CloudFront::GetStreamingDistributionConfig2013_11_11 {
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetStreamingDistributionConfig');
  has _returns => (isa => 'Aws::CloudFront::GetStreamingDistributionConfigResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetStreamingDistributionConfigResult');  
}
package Aws::CloudFront::ListCloudFrontOriginAccessIdentities2013_11_11 {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListCloudFrontOriginAccessIdentities');
  has _returns => (isa => 'Aws::CloudFront::ListCloudFrontOriginAccessIdentitiesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListCloudFrontOriginAccessIdentitiesResult');  
}
package Aws::CloudFront::ListDistributions2013_11_11 {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListDistributions');
  has _returns => (isa => 'Aws::CloudFront::ListDistributionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListDistributionsResult');  
}
package Aws::CloudFront::ListInvalidations2013_11_11 {
  use Moose;
  has DistributionId => (is => 'ro', isa => 'Str', required => 1);
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListInvalidations');
  has _returns => (isa => 'Aws::CloudFront::ListInvalidationsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListInvalidationsResult');  
}
package Aws::CloudFront::ListStreamingDistributions2013_11_11 {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListStreamingDistributions');
  has _returns => (isa => 'Aws::CloudFront::ListStreamingDistributionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListStreamingDistributionsResult');  
}
package Aws::CloudFront::UpdateCloudFrontOriginAccessIdentity2013_11_11 {
  use Moose;
  has CloudFrontOriginAccessIdentityConfig => (is => 'ro', isa => 'Aws::CloudFront::CloudFrontOriginAccessIdentityConfig', required => 1);
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has IfMatch => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateCloudFrontOriginAccessIdentity');
  has _returns => (isa => 'Aws::CloudFront::UpdateCloudFrontOriginAccessIdentityResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateCloudFrontOriginAccessIdentityResult');  
}
package Aws::CloudFront::UpdateDistribution2013_11_11 {
  use Moose;
  has DistributionConfig => (is => 'ro', isa => 'Aws::CloudFront::DistributionConfig', required => 1);
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has IfMatch => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDistribution');
  has _returns => (isa => 'Aws::CloudFront::UpdateDistributionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateDistributionResult');  
}
package Aws::CloudFront::UpdateStreamingDistribution2013_11_11 {
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has IfMatch => (is => 'ro', isa => 'Str');
  has StreamingDistributionConfig => (is => 'ro', isa => 'Aws::CloudFront::StreamingDistributionConfig', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateStreamingDistribution');
  has _returns => (isa => 'Aws::CloudFront::UpdateStreamingDistributionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateStreamingDistributionResult');  
}

package Aws::CloudFront::CreateCloudFrontOriginAccessIdentity2013_11_11Result {
  use Moose;
  with 'AWS::API::ResultParser';
  has CloudFrontOriginAccessIdentity => (is => 'ro', isa => 'Aws::CloudFront::CloudFrontOriginAccessIdentity');
  has ETag => (is => 'ro', isa => 'Str');
  has Location => (is => 'ro', isa => 'Str');

}
package Aws::CloudFront::CreateDistribution2013_11_11Result {
  use Moose;
  with 'AWS::API::ResultParser';
  has Distribution => (is => 'ro', isa => 'Aws::CloudFront::Distribution');
  has ETag => (is => 'ro', isa => 'Str');
  has Location => (is => 'ro', isa => 'Str');

}
package Aws::CloudFront::CreateInvalidation2013_11_11Result {
  use Moose;
  with 'AWS::API::ResultParser';
  has Invalidation => (is => 'ro', isa => 'Aws::CloudFront::Invalidation');
  has Location => (is => 'ro', isa => 'Str');

}
package Aws::CloudFront::CreateStreamingDistribution2013_11_11Result {
  use Moose;
  with 'AWS::API::ResultParser';
  has ETag => (is => 'ro', isa => 'Str');
  has Location => (is => 'ro', isa => 'Str');
  has StreamingDistribution => (is => 'ro', isa => 'Aws::CloudFront::StreamingDistribution');

}
package Aws::CloudFront::GetCloudFrontOriginAccessIdentity2013_11_11Result {
  use Moose;
  with 'AWS::API::ResultParser';
  has CloudFrontOriginAccessIdentity => (is => 'ro', isa => 'Aws::CloudFront::CloudFrontOriginAccessIdentity');
  has ETag => (is => 'ro', isa => 'Str');

}
package Aws::CloudFront::GetCloudFrontOriginAccessIdentityConfig2013_11_11Result {
  use Moose;
  with 'AWS::API::ResultParser';
  has CloudFrontOriginAccessIdentityConfig => (is => 'ro', isa => 'Aws::CloudFront::CloudFrontOriginAccessIdentityConfig');
  has ETag => (is => 'ro', isa => 'Str');

}
package Aws::CloudFront::GetDistribution2013_11_11Result {
  use Moose;
  with 'AWS::API::ResultParser';
  has Distribution => (is => 'ro', isa => 'Aws::CloudFront::Distribution');
  has ETag => (is => 'ro', isa => 'Str');

}
package Aws::CloudFront::GetDistributionConfig2013_11_11Result {
  use Moose;
  with 'AWS::API::ResultParser';
  has DistributionConfig => (is => 'ro', isa => 'Aws::CloudFront::DistributionConfig');
  has ETag => (is => 'ro', isa => 'Str');

}
package Aws::CloudFront::GetInvalidation2013_11_11Result {
  use Moose;
  with 'AWS::API::ResultParser';
  has Invalidation => (is => 'ro', isa => 'Aws::CloudFront::Invalidation');

}
package Aws::CloudFront::GetStreamingDistribution2013_11_11Result {
  use Moose;
  with 'AWS::API::ResultParser';
  has ETag => (is => 'ro', isa => 'Str');
  has StreamingDistribution => (is => 'ro', isa => 'Aws::CloudFront::StreamingDistribution');

}
package Aws::CloudFront::GetStreamingDistributionConfig2013_11_11Result {
  use Moose;
  with 'AWS::API::ResultParser';
  has ETag => (is => 'ro', isa => 'Str');
  has StreamingDistributionConfig => (is => 'ro', isa => 'Aws::CloudFront::StreamingDistributionConfig');

}
package Aws::CloudFront::ListCloudFrontOriginAccessIdentities2013_11_11Result {
  use Moose;
  with 'AWS::API::ResultParser';
  has CloudFrontOriginAccessIdentityList => (is => 'ro', isa => 'Aws::CloudFront::CloudFrontOriginAccessIdentityList');

}
package Aws::CloudFront::ListDistributions2013_11_11Result {
  use Moose;
  with 'AWS::API::ResultParser';
  has DistributionList => (is => 'ro', isa => 'Aws::CloudFront::DistributionList');

}
package Aws::CloudFront::ListInvalidations2013_11_11Result {
  use Moose;
  with 'AWS::API::ResultParser';
  has InvalidationList => (is => 'ro', isa => 'Aws::CloudFront::InvalidationList');

}
package Aws::CloudFront::ListStreamingDistributions2013_11_11Result {
  use Moose;
  with 'AWS::API::ResultParser';
  has StreamingDistributionList => (is => 'ro', isa => 'Aws::CloudFront::StreamingDistributionList');

}
package Aws::CloudFront::UpdateCloudFrontOriginAccessIdentity2013_11_11Result {
  use Moose;
  with 'AWS::API::ResultParser';
  has CloudFrontOriginAccessIdentity => (is => 'ro', isa => 'Aws::CloudFront::CloudFrontOriginAccessIdentity');
  has ETag => (is => 'ro', isa => 'Str');

}
package Aws::CloudFront::UpdateDistribution2013_11_11Result {
  use Moose;
  with 'AWS::API::ResultParser';
  has Distribution => (is => 'ro', isa => 'Aws::CloudFront::Distribution');
  has ETag => (is => 'ro', isa => 'Str');

}
package Aws::CloudFront::UpdateStreamingDistribution2013_11_11Result {
  use Moose;
  with 'AWS::API::ResultParser';
  has ETag => (is => 'ro', isa => 'Str');
  has StreamingDistribution => (is => 'ro', isa => 'Aws::CloudFront::StreamingDistribution');

}

package Aws::CloudFront {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'cloudfront');
  has version => (is => 'ro', isa => 'Str', default => '2013-11-11');
  has flattened_arrays => (is => 'ro', isa => 'Str', default => '0');

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'AWS::API::SingleEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::RestXmlCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::XMLResponse');

  
  sub CreateCloudFrontOriginAccessIdentity2013_11_11 {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudFront::CreateCloudFrontOriginAccessIdentity2013_11_11', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudFront::CreateCloudFrontOriginAccessIdentity2013_11_11Result->from_result($result);return $o_result;
  }
  sub CreateDistribution2013_11_11 {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudFront::CreateDistribution2013_11_11', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudFront::CreateDistribution2013_11_11Result->from_result($result);return $o_result;
  }
  sub CreateInvalidation2013_11_11 {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudFront::CreateInvalidation2013_11_11', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudFront::CreateInvalidation2013_11_11Result->from_result($result);return $o_result;
  }
  sub CreateStreamingDistribution2013_11_11 {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudFront::CreateStreamingDistribution2013_11_11', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudFront::CreateStreamingDistribution2013_11_11Result->from_result($result);return $o_result;
  }
  sub DeleteCloudFrontOriginAccessIdentity2013_11_11 {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudFront::DeleteCloudFrontOriginAccessIdentity2013_11_11', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteDistribution2013_11_11 {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudFront::DeleteDistribution2013_11_11', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteStreamingDistribution2013_11_11 {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudFront::DeleteStreamingDistribution2013_11_11', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub GetCloudFrontOriginAccessIdentity2013_11_11 {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudFront::GetCloudFrontOriginAccessIdentity2013_11_11', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudFront::GetCloudFrontOriginAccessIdentity2013_11_11Result->from_result($result);return $o_result;
  }
  sub GetCloudFrontOriginAccessIdentityConfig2013_11_11 {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudFront::GetCloudFrontOriginAccessIdentityConfig2013_11_11', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudFront::GetCloudFrontOriginAccessIdentityConfig2013_11_11Result->from_result($result);return $o_result;
  }
  sub GetDistribution2013_11_11 {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudFront::GetDistribution2013_11_11', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudFront::GetDistribution2013_11_11Result->from_result($result);return $o_result;
  }
  sub GetDistributionConfig2013_11_11 {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudFront::GetDistributionConfig2013_11_11', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudFront::GetDistributionConfig2013_11_11Result->from_result($result);return $o_result;
  }
  sub GetInvalidation2013_11_11 {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudFront::GetInvalidation2013_11_11', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudFront::GetInvalidation2013_11_11Result->from_result($result);return $o_result;
  }
  sub GetStreamingDistribution2013_11_11 {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudFront::GetStreamingDistribution2013_11_11', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudFront::GetStreamingDistribution2013_11_11Result->from_result($result);return $o_result;
  }
  sub GetStreamingDistributionConfig2013_11_11 {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudFront::GetStreamingDistributionConfig2013_11_11', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudFront::GetStreamingDistributionConfig2013_11_11Result->from_result($result);return $o_result;
  }
  sub ListCloudFrontOriginAccessIdentities2013_11_11 {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudFront::ListCloudFrontOriginAccessIdentities2013_11_11', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudFront::ListCloudFrontOriginAccessIdentities2013_11_11Result->from_result($result);return $o_result;
  }
  sub ListDistributions2013_11_11 {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudFront::ListDistributions2013_11_11', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudFront::ListDistributions2013_11_11Result->from_result($result);return $o_result;
  }
  sub ListInvalidations2013_11_11 {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudFront::ListInvalidations2013_11_11', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudFront::ListInvalidations2013_11_11Result->from_result($result);return $o_result;
  }
  sub ListStreamingDistributions2013_11_11 {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudFront::ListStreamingDistributions2013_11_11', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudFront::ListStreamingDistributions2013_11_11Result->from_result($result);return $o_result;
  }
  sub UpdateCloudFrontOriginAccessIdentity2013_11_11 {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudFront::UpdateCloudFrontOriginAccessIdentity2013_11_11', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudFront::UpdateCloudFrontOriginAccessIdentity2013_11_11Result->from_result($result);return $o_result;
  }
  sub UpdateDistribution2013_11_11 {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudFront::UpdateDistribution2013_11_11', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudFront::UpdateDistribution2013_11_11Result->from_result($result);return $o_result;
  }
  sub UpdateStreamingDistribution2013_11_11 {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudFront::UpdateStreamingDistribution2013_11_11', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudFront::UpdateStreamingDistribution2013_11_11Result->from_result($result);return $o_result;
  }
}
1;
