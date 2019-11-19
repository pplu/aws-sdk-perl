package Paws::S3;
  warn "Paws::S3 is not stable / supported / entirely developed" unless $ENV{'PAWS_SILENCE_UNSTABLE_WARNINGS'};
  use Moo;
  use Types::Standard qw/Int HashRef ArrayRef/;
  sub service { 's3' }
  sub signing_name { 's3' }
  sub version { '2006-03-01' }
  sub flattened_arrays { 1 }
  has max_attempts => (is => 'ro', isa => Int, default => 5);
  has retry => (is => 'ro', isa => HashRef, default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => ArrayRef, default => sub { [
       sub { defined $_[0]->http_status and $_[0]->http_status == 400 and $_[0]->code eq 'BadDigest' },
       sub { defined $_[0]->http_status and $_[0]->http_status == 400 and $_[0]->code eq 'RequestTimeout' },
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::S3Signature', 'Paws::Net::RestXmlCaller';

  has '+region_rules' => (default => sub {
    my $regioninfo;
      $regioninfo = [
    {
      constraints => [
        [
          'region',
          'oneOf',
          [
            'us-east-1',
            undef
          ]
        ]
      ],
      properties => {
        credentialScope => {
          region => 'us-east-1'
        }
      },
      uri => '{scheme}://s3.amazonaws.com'
    },
    {
      constraints => [
        [
          'region',
          'startsWith',
          'cn-'
        ]
      ],
      properties => {
        signatureVersion => 's3v4'
      },
      uri => '{scheme}://{service}.{region}.amazonaws.com.cn'
    },
    {
      constraints => [
        [
          'region',
          'oneOf',
          [
            'us-east-1',
            'ap-northeast-1',
            'sa-east-1',
            'ap-southeast-1',
            'ap-southeast-2',
            'us-west-2',
            'us-west-1',
            'eu-west-1',
            'us-gov-west-1',
            'fips-us-gov-west-1'
          ]
        ]
      ],
      uri => '{scheme}://{service}-{region}.amazonaws.com'
    },
    {
      constraints => [
        [
          'region',
          'notEquals',
          undef
        ]
      ],
      properties => {
        signatureVersion => 's3v4'
      },
      uri => '{scheme}://{service}.{region}.amazonaws.com'
    }
  ];

    return $regioninfo;
  });

  
  sub AbortMultipartUpload {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::AbortMultipartUpload', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CompleteMultipartUpload {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::CompleteMultipartUpload', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CopyObject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::CopyObject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateBucket {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::CreateBucket', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMultipartUpload {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::CreateMultipartUpload', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBucket {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::DeleteBucket', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBucketAnalyticsConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::DeleteBucketAnalyticsConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBucketCors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::DeleteBucketCors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBucketEncryption {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::DeleteBucketEncryption', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBucketInventoryConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::DeleteBucketInventoryConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBucketLifecycle {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::DeleteBucketLifecycle', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBucketMetricsConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::DeleteBucketMetricsConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBucketPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::DeleteBucketPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBucketReplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::DeleteBucketReplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBucketTagging {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::DeleteBucketTagging', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBucketWebsite {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::DeleteBucketWebsite', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteObject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::DeleteObject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteObjects {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::DeleteObjects', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteObjectTagging {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::DeleteObjectTagging', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePublicAccessBlock {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::DeletePublicAccessBlock', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketAccelerateConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketAccelerateConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketAcl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketAcl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketAnalyticsConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketAnalyticsConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketCors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketCors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketEncryption {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketEncryption', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketInventoryConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketInventoryConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketLifecycle {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketLifecycle', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketLifecycleConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketLifecycleConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketLocation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketLocation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketLogging {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketLogging', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketMetricsConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketMetricsConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketNotification {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketNotification', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketNotificationConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketNotificationConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketPolicyStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketPolicyStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketReplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketReplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketRequestPayment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketRequestPayment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketTagging {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketTagging', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketVersioning {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketVersioning', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketWebsite {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketWebsite', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetObject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetObject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetObjectAcl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetObjectAcl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetObjectLegalHold {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetObjectLegalHold', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetObjectLockConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetObjectLockConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetObjectRetention {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetObjectRetention', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetObjectTagging {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetObjectTagging', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetObjectTorrent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetObjectTorrent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPublicAccessBlock {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetPublicAccessBlock', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub HeadBucket {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::HeadBucket', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub HeadObject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::HeadObject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBucketAnalyticsConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::ListBucketAnalyticsConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBucketInventoryConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::ListBucketInventoryConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBucketMetricsConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::ListBucketMetricsConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBuckets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::ListBuckets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMultipartUploads {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::ListMultipartUploads', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListObjects {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::ListObjects', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListObjectsV2 {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::ListObjectsV2', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListObjectVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::ListObjectVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListParts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::ListParts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBucketAccelerateConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutBucketAccelerateConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBucketAcl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutBucketAcl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBucketAnalyticsConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutBucketAnalyticsConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBucketCors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutBucketCors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBucketEncryption {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutBucketEncryption', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBucketInventoryConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutBucketInventoryConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBucketLifecycle {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutBucketLifecycle', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBucketLifecycleConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutBucketLifecycleConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBucketLogging {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutBucketLogging', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBucketMetricsConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutBucketMetricsConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBucketNotification {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutBucketNotification', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBucketNotificationConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutBucketNotificationConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBucketPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutBucketPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBucketReplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutBucketReplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBucketRequestPayment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutBucketRequestPayment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBucketTagging {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutBucketTagging', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBucketVersioning {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutBucketVersioning', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBucketWebsite {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutBucketWebsite', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutObject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutObject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutObjectAcl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutObjectAcl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutObjectLegalHold {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutObjectLegalHold', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutObjectLockConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutObjectLockConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutObjectRetention {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutObjectRetention', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutObjectTagging {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutObjectTagging', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutPublicAccessBlock {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutPublicAccessBlock', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RestoreObject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::RestoreObject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SelectObjectContent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::SelectObjectContent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UploadPart {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::UploadPart', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UploadPartCopy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::UploadPartCopy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllMultipartUploads {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListMultipartUploads(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->IsTruncated) {
        $next_result = $self->ListMultipartUploads(@_, KeyMarker => $next_result->NextKeyMarker, UploadIdMarker => $next_result->NextUploadIdMarker);
        push @{ $result->Uploads }, @{ $next_result->Uploads };
        push @{ $result->CommonPrefixes }, @{ $next_result->CommonPrefixes };
      }
      return $result;
    } else {
      while ($result->IsTruncated) {
        $callback->($_ => 'Uploads') foreach (@{ $result->Uploads });
        $callback->($_ => 'CommonPrefixes') foreach (@{ $result->CommonPrefixes });
        $result = $self->ListMultipartUploads(@_, KeyMarker => $result->NextKeyMarker, UploadIdMarker => $result->NextUploadIdMarker);
      }
      $callback->($_ => 'Uploads') foreach (@{ $result->Uploads });
      $callback->($_ => 'CommonPrefixes') foreach (@{ $result->CommonPrefixes });
    }

    return undef
  }
  sub ListAllObjects {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListObjects(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->IsTruncated) {
        $next_result = $self->ListObjects(@_, Marker => $result->NextMarker || ( (defined $result->Contents->[-1]) ? $result->Contents->[-1]->Key : undef ));
        push @{ $result->Contents }, @{ $next_result->Contents };
        push @{ $result->CommonPrefixes }, @{ $next_result->CommonPrefixes };
      }
      return $result;
    } else {
      while ($result->IsTruncated) {
        $callback->($_ => 'Contents') foreach (@{ $result->Contents });
        $callback->($_ => 'CommonPrefixes') foreach (@{ $result->CommonPrefixes });
        $result = $self->ListObjects(@_, Marker => $result->NextMarker || ( (defined $result->Contents->[-1]) ? $result->Contents->[-1]->Key : undef ));
      }
      $callback->($_ => 'Contents') foreach (@{ $result->Contents });
      $callback->($_ => 'CommonPrefixes') foreach (@{ $result->CommonPrefixes });
    }

    return undef
  }
  sub ListAllObjectsV2 {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListObjectsV2(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->IsTruncated) {
        $next_result = $self->ListObjectsV2(@_, ContinuationToken => $next_result->NextContinuationToken);
        push @{ $result->Contents }, @{ $next_result->Contents };
        push @{ $result->CommonPrefixes }, @{ $next_result->CommonPrefixes };
      }
      return $result;
    } else {
      while ($result->IsTruncated) {
        $callback->($_ => 'Contents') foreach (@{ $result->Contents });
        $callback->($_ => 'CommonPrefixes') foreach (@{ $result->CommonPrefixes });
        $result = $self->ListObjectsV2(@_, ContinuationToken => $result->NextContinuationToken);
      }
      $callback->($_ => 'Contents') foreach (@{ $result->Contents });
      $callback->($_ => 'CommonPrefixes') foreach (@{ $result->CommonPrefixes });
    }

    return undef
  }
  sub ListAllObjectVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListObjectVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->IsTruncated) {
        $next_result = $self->ListObjectVersions(@_, KeyMarker => $next_result->NextKeyMarker, VersionIdMarker => $next_result->NextVersionIdMarker);
        push @{ $result->Versions }, @{ $next_result->Versions };
        push @{ $result->DeleteMarkers }, @{ $next_result->DeleteMarkers };
        push @{ $result->CommonPrefixes }, @{ $next_result->CommonPrefixes };
      }
      return $result;
    } else {
      while ($result->IsTruncated) {
        $callback->($_ => 'Versions') foreach (@{ $result->Versions });
        $callback->($_ => 'DeleteMarkers') foreach (@{ $result->DeleteMarkers });
        $callback->($_ => 'CommonPrefixes') foreach (@{ $result->CommonPrefixes });
        $result = $self->ListObjectVersions(@_, KeyMarker => $result->NextKeyMarker, VersionIdMarker => $result->NextVersionIdMarker);
      }
      $callback->($_ => 'Versions') foreach (@{ $result->Versions });
      $callback->($_ => 'DeleteMarkers') foreach (@{ $result->DeleteMarkers });
      $callback->($_ => 'CommonPrefixes') foreach (@{ $result->CommonPrefixes });
    }

    return undef
  }
  sub ListAllParts {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListParts(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->IsTruncated) {
        $next_result = $self->ListParts(@_, PartNumberMarker => $next_result->NextPartNumberMarker);
        push @{ $result->Parts }, @{ $next_result->Parts };
      }
      return $result;
    } else {
      while ($result->IsTruncated) {
        $callback->($_ => 'Parts') foreach (@{ $result->Parts });
        $result = $self->ListParts(@_, PartNumberMarker => $result->NextPartNumberMarker);
      }
      $callback->($_ => 'Parts') foreach (@{ $result->Parts });
    }

    return undef
  }


  sub operations { qw/AbortMultipartUpload CompleteMultipartUpload CopyObject CreateBucket CreateMultipartUpload DeleteBucket DeleteBucketAnalyticsConfiguration DeleteBucketCors DeleteBucketEncryption DeleteBucketInventoryConfiguration DeleteBucketLifecycle DeleteBucketMetricsConfiguration DeleteBucketPolicy DeleteBucketReplication DeleteBucketTagging DeleteBucketWebsite DeleteObject DeleteObjects DeleteObjectTagging DeletePublicAccessBlock GetBucketAccelerateConfiguration GetBucketAcl GetBucketAnalyticsConfiguration GetBucketCors GetBucketEncryption GetBucketInventoryConfiguration GetBucketLifecycle GetBucketLifecycleConfiguration GetBucketLocation GetBucketLogging GetBucketMetricsConfiguration GetBucketNotification GetBucketNotificationConfiguration GetBucketPolicy GetBucketPolicyStatus GetBucketReplication GetBucketRequestPayment GetBucketTagging GetBucketVersioning GetBucketWebsite GetObject GetObjectAcl GetObjectLegalHold GetObjectLockConfiguration GetObjectRetention GetObjectTagging GetObjectTorrent GetPublicAccessBlock HeadBucket HeadObject ListBucketAnalyticsConfigurations ListBucketInventoryConfigurations ListBucketMetricsConfigurations ListBuckets ListMultipartUploads ListObjects ListObjectsV2 ListObjectVersions ListParts PutBucketAccelerateConfiguration PutBucketAcl PutBucketAnalyticsConfiguration PutBucketCors PutBucketEncryption PutBucketInventoryConfiguration PutBucketLifecycle PutBucketLifecycleConfiguration PutBucketLogging PutBucketMetricsConfiguration PutBucketNotification PutBucketNotificationConfiguration PutBucketPolicy PutBucketReplication PutBucketRequestPayment PutBucketTagging PutBucketVersioning PutBucketWebsite PutObject PutObjectAcl PutObjectLegalHold PutObjectLockConfiguration PutObjectRetention PutObjectTagging PutPublicAccessBlock RestoreObject SelectObjectContent UploadPart UploadPartCopy / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3 - Perl Interface to AWS Amazon Simple Storage Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('S3');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Amazon Simple Storage Service

Amazon Simple Storage Service is storage for the Internet. It is
designed to make web-scale computing easier for developers.

Amazon S3 has a simple web services interface that you can use to store
and retrieve any amount of data, at any time, from anywhere on the web.
It gives any developer access to the same highly scalable, reliable,
fast, inexpensive data storage infrastructure that Amazon uses to run
its own global network of web sites. The service aims to maximize
benefits of scale and to pass those benefits on to developers.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01>


=head1 METHODS

=head2 AbortMultipartUpload

=over

=item Bucket => Str

=item Key => Str

=item UploadId => Str

=item [RequestPayer => Str]


=back

Each argument is described in detail in: L<Paws::S3::AbortMultipartUpload>

Returns: a L<Paws::S3::AbortMultipartUploadOutput> instance

This operation aborts a multipart upload. After a multipart upload is
aborted, no additional parts can be uploaded using that upload ID. The
storage consumed by any previously uploaded parts will be freed.
However, if any part uploads are currently in progress, those part
uploads might or might not succeed. As a result, it might be necessary
to abort a given multipart upload multiple times in order to completely
free all storage consumed by all parts.

To verify that all parts have been removed, so you don't get charged
for the part storage, you should call the ListParts operation and
ensure the parts list is empty.

For information on permissions required to use the multipart upload
API, see Multipart Upload API and Permissions
(https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuAndPermissions.html).

The following operations are related to C<AbortMultipartUpload>

=over

=item *

CreateMultipartUpload

=item *

UploadPart

=item *

CompleteMultipartUpload

=item *

ListParts

=item *

ListMultipartUploads

=back



=head2 CompleteMultipartUpload

=over

=item Bucket => Str

=item Key => Str

=item UploadId => Str

=item [MultipartUpload => S3_CompletedMultipartUpload]

=item [RequestPayer => Str]


=back

Each argument is described in detail in: L<Paws::S3::CompleteMultipartUpload>

Returns: a L<Paws::S3::CompleteMultipartUploadOutput> instance

Completes a multipart upload by assembling previously uploaded parts.

You first initiate the multipart upload and then upload all parts using
the UploadPart operation. After successfully uploading all relevant
parts of an upload, you call this operation to complete the upload.
Upon receiving this request, Amazon S3 concatenates all the parts in
ascending order by part number to create a new object. In the Complete
Multipart Upload request, you must provide the parts list. You must
ensure the parts list is complete, this operation concatenates the
parts you provide in the list. For each part in the list, you must
provide the part number and the C<ETag> value, returned after that part
was uploaded.

Processing of a Complete Multipart Upload request could take several
minutes to complete. After Amazon S3 begins processing the request, it
sends an HTTP response header that specifies a 200 OK response. While
processing is in progress, Amazon S3 periodically sends whitespace
characters to keep the connection from timing out. Because a request
could fail after the initial 200 OK response has been sent, it is
important that you check the response body to determine whether the
request succeeded.

Note that if C<CompleteMultipartUpload> fails, applications should be
prepared to retry the failed requests. For more information, see Amazon
S3 Error Best Practices
(https://docs.aws.amazon.com/AmazonS3/latest/dev/ErrorBestPractices.html).

For more information on multipart uploads, see Uploading Objects Using
Multipart Upload
(https://docs.aws.amazon.com/AmazonS3/latest/dev/uploadobjusingmpu.html).

For information on permissions required to use the multipart upload
API, see Multipart Upload API and Permissions
(https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuAndPermissions.html).

C<GetBucketLifecycle> has the following special errors:

=over

=item *

Error code: C<EntityTooSmall>

=over

=item *

Description: Your proposed upload is smaller than the minimum allowed
object size. Each part must be at least 5 MB in size, except the last
part.

=item *

400 Bad Request

=back

=item *

Error code: C<InvalidPart>

=over

=item *

Description: One or more of the specified parts could not be found. The
part might not have been uploaded, or the specified entity tag might
not have matched the part's entity tag.

=item *

400 Bad Request

=back

=item *

Error code: C<InvalidPartOrder>

=over

=item *

Description: The list of parts was not in ascending order. The parts
list must be specified in order by part number.

=item *

400 Bad Request

=back

=item *

Error code: C<NoSuchUpload>

=over

=item *

Description: The specified multipart upload does not exist. The upload
ID might be invalid, or the multipart upload might have been aborted or
completed.

=item *

404 Not Found

=back

=back

The following operations are related to
C<DeleteBucketMetricsConfiguration>:

=over

=item *

CreateMultipartUpload

=item *

UploadPart

=item *

AbortMultipartUpload

=item *

ListParts

=item *

ListMultipartUploads

=back



=head2 CopyObject

=over

=item Bucket => Str

=item CopySource => Str

=item Key => Str

=item [ACL => Str]

=item [CacheControl => Str]

=item [ContentDisposition => Str]

=item [ContentEncoding => Str]

=item [ContentLanguage => Str]

=item [ContentType => Str]

=item [CopySourceIfMatch => Str]

=item [CopySourceIfModifiedSince => Str]

=item [CopySourceIfNoneMatch => Str]

=item [CopySourceIfUnmodifiedSince => Str]

=item [CopySourceSSECustomerAlgorithm => Str]

=item [CopySourceSSECustomerKey => Str]

=item [CopySourceSSECustomerKeyMD5 => Str]

=item [Expires => Str]

=item [GrantFullControl => Str]

=item [GrantRead => Str]

=item [GrantReadACP => Str]

=item [GrantWriteACP => Str]

=item [Metadata => S3_Metadata]

=item [MetadataDirective => Str]

=item [ObjectLockLegalHoldStatus => Str]

=item [ObjectLockMode => Str]

=item [ObjectLockRetainUntilDate => Str]

=item [RequestPayer => Str]

=item [ServerSideEncryption => Str]

=item [SSECustomerAlgorithm => Str]

=item [SSECustomerKey => Str]

=item [SSECustomerKeyMD5 => Str]

=item [SSEKMSEncryptionContext => Str]

=item [SSEKMSKeyId => Str]

=item [StorageClass => Str]

=item [Tagging => Str]

=item [TaggingDirective => Str]

=item [WebsiteRedirectLocation => Str]


=back

Each argument is described in detail in: L<Paws::S3::CopyObject>

Returns: a L<Paws::S3::CopyObjectOutput> instance

Creates a copy of an object that is already stored in Amazon S3.

You can store individual objects of up to 5 TB in Amazon S3. You create
a copy of your object up to 5 GB in size in a single atomic operation
using this API. However, for copying an object greater than 5 GB, you
must use the multipart upload Upload Part - Copy API. For conceptual
information, see Copy Object Using the REST Multipart Upload API
(https://docs.aws.amazon.com/AmazonS3/latest/dev/CopyingObjctsUsingRESTMPUapi.html).

When copying an object, you can preserve all metadata (default) or
specify new metadata. However, the ACL is not preserved and is set to
private for the user making the request. To override the default ACL
setting, specify a new ACL when generating a copy request. For more
information, see Using ACLs
(https://docs.aws.amazon.com/AmazonS3/latest/dev/S3_ACLs_UsingACLs.html).

Amazon S3 Transfer Acceleration does not support cross-region copies.
If you request a cross-region copy using a Transfer Acceleration
endpoint, you get a 400 C<Bad Request> error. For more information
about transfer acceleration, see Transfer Acceleration
(https://docs.aws.amazon.com/AmazonS3/latest/dev/transfer-acceleration.html).

All copy requests must be authenticated. Additionally, you must have
I<read> access to the source object and I<write> access to the
destination bucket. For more information, see REST Authentication
(https://docs.aws.amazon.com/AmazonS3/latest/dev/RESTAuthentication.html).
Both the Region that you want to copy the object from and the Region
that you want to copy the object to must be enabled for your account.

To only copy an object under certain conditions, such as whether the
Etag matches or whether the object was modified before or after a
specified date, use the request parameters
C<x-amz-copy-source-if-match>, C<x-amz-copy-source-if-none-match>,
C<x-amz-copy-source-if-unmodified-since>, or C<
x-amz-copy-source-if-modified-since>.

All headers with the x-amz- prefix, including x-amz-copy-source, must
be signed.

You can use this operation to change the storage class of an object
that is already stored in Amazon S3 using the StorageClass parameter.
For more information, see Storage Classes
(https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html).

The source object that you are copying can be encrypted or unencrypted.
If the source object is encrypted, it can be encrypted by server-side
encryption using AWS-managed encryption keys or by using a
customer-provided encryption key. When copying an object, you can
request that Amazon S3 encrypt the target object by using either the
AWS-managed encryption keys or by using your own encryption key. You
can do this regardless of the form of server-side encryption that was
used to encrypt the source, or even if the source object was not
encrypted. For more information about server-side encryption, see Using
Server-Side Encryption
(https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingServerSideEncryption.html).

A copy request might return an error when Amazon S3 receives the copy
request or while Amazon S3 is copying the files. If the error occurs
before the copy operation starts, you receive a standard Amazon S3
error. If the error occurs during the copy operation, the error
response is embedded in the 200 OK response. This means that a C<200
OK> response can contain either a success or an error. Design your
application to parse the contents of the response and handle it
appropriately.

If the copy is successful, you receive a response with information
about the copied object.

If the request is an HTTP 1.1 request, the response is chunk encoded.
If it were not, it would not contain the content-length, and you would
need to read the entire body.

Consider the following when using request headers:

=over

=item *

Consideration 1 E<ndash> If both the x-amz-copy-source-if-match and
x-amz-copy-source-if-unmodified-since headers are present in the
request and evaluate as follows, Amazon S3 returns 200 OK and copies
the data:

=over

=item *

x-amz-copy-source-if-match condition evaluates to true

=item *

x-amz-copy-source-if-unmodified-since condition evaluates to false

=back

=item *

Consideration 2 E<ndash> If both of the x-amz-copy-source-if-none-match
and x-amz-copy-source-if-modified-since headers are present in the
request and evaluate as follows, Amazon S3 returns the 412 Precondition
Failed response code:

=over

=item *

x-amz-copy-source-if-none-match condition evaluates to false

=item *

x-amz-copy-source-if-modified-since condition evaluates to true

=back

=back

The copy request charge is based on the storage class and Region you
specify for the destination object. For pricing information, see Amazon
S3 Pricing (https://aws.amazon.com/s3/pricing/).

Following are other considerations when using C<CopyObject>:

=over

=item Versioning

By default, C<x-amz-copy-source> identifies the current version of an
object to copy. (If the current version is a delete marker, Amazon S3
behaves as if the object was deleted.) To copy a different version, use
the C<versionId> subresource.

If you enable versioning on the target bucket, Amazon S3 generates a
unique version ID for the object being copied. This version ID is
different from the version ID of the source object. Amazon S3 returns
the version ID of the copied object in the x-amz-version-id response
header in the response.

If you do not enable versioning or suspend it on the target bucket, the
version ID that Amazon S3 generates is always null.

If the source object's storage class is GLACIER, then you must restore
a copy of this object before you can use it as a source object for the
copy operation. For more information, see .

=item Access Permissions

When copying an object, you can optionally specify the accounts or
groups that should be granted specific permissions on the new object.
There are two ways to grant the permissions using the request headers:

=over

=item *

Specify a canned ACL with the C<x-amz-acl> request header. For more
information, see Canned ACL
(https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#CannedACL).

=item *

Specify access permissions explicitly with the C<x-amz-grant-read>,
C<x-amz-grant-read-acp>, C<x-amz-grant-write-acp>, and
C<x-amz-grant-full-control> headers. These parameters map to the set of
permissions that Amazon S3 supports in an ACL. For more information,
see Access Control List (ACL) Overview
(https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html).

=back

You can use either a canned ACL or specify access permissions
explicitly. You cannot do both.

=item Server-Side- Encryption-Specific Request Headers

To encrypt the target object, you must provide the appropriate
encryption-related request headers. The one you use depends on whether
you want to use AWS-managed encryption keys or provide your own
encryption key.

=over

=item *

To encrypt the target object using server-side encryption with an
AWS-managed encryption key, provide the following request headers, as
appropriate.

=over

=item *

x-amz-server-side-encryption

=item *

x-amz-server-side-encryption-aws-kms-key-id

=item *

x-amz-server-side-encryption-context

=back

If you specify x-amz-server-side-encryption:aws:kms, but don't provide
x-amz-server-side- encryption-aws-kms-key-id, Amazon S3 uses the AWS
managed customer master key (CMK) in KMS to protect the data.

All GET and PUT requests for an object protected by AWS KMS fail if you
don't make them with SSL or by using SigV4.

For more information on Server-Side Encryption with CMKs stored in
Amazon KMS (SSE-KMS), see Protecting Data Using Server-Side Encryption
with CMKs stored in KMS
(https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingKMSEncryption.html).

=item *

To encrypt the target object using server-side encryption with an
encryption key that you provide, use the following headers.

=over

=item *

x-amz-server-side-encryption-customer-algorithm

=item *

x-amz-server-side-encryption-customer-key

=item *

x-amz-server-side-encryption-customer-key-MD5

=back

=item *

If the source object is encrypted using server-side encryption with
customer-provided encryption keys, you must use the following headers.

=over

=item *

x-amz-copy-source-server-side-encryption-customer-algorithm

=item *

x-amz-copy-source-server-side-encryption-customer-key

=item *

x-amz-copy-source-server-side-encryption-customer-key-MD5

=back

For more information on Server-Side Encryption with CMKs stored in
Amazon KMS (SSE-KMS), see Protecting Data Using Server-Side Encryption
with CMKs stored in Amazon KMS
(https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingKMSEncryption.html).

=back

=item Access-Control-List (ACL)-Specific Request Headers

You also can use the following access controlE<ndash>related headers
with this operation. By default, all objects are private. Only the
owner has full access control. When adding a new object, you can grant
permissions to individual AWS accounts or to predefined groups defined
by Amazon S3. These permissions are then added to the Access Control
List (ACL) on the object. For more information, see Using ACLs
(https://docs.aws.amazon.com/AmazonS3/latest/dev/S3_ACLs_UsingACLs.html).
With this operation, you can grant access permissions using one of the
following two methods:

=over

=item *

Specify a canned ACL (x-amz-acl) E<mdash> Amazon S3 supports a set of
predefined ACLs, known as canned ACLs. Each canned ACL has a predefined
set of grantees and permissions. For more information, see Canned ACL
(https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#CannedACL).

=item *

Specify access permissions explicitly E<mdash> To explicitly grant
access permissions to specific AWS accounts or groups, use the
following headers. Each header maps to specific permissions that Amazon
S3 supports in an ACL. For more information, see Access Control List
(ACL) Overview
(https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html). In
the header, you specify a list of grantees who get the specific
permission. To grant permissions explicitly use:

=over

=item *

x-amz-grant-read

=item *

x-amz-grant-write

=item *

x-amz-grant-read-acp

=item *

x-amz-grant-write-acp

=item *

x-amz-grant-full-control

=back

You specify each grantee as a type=value pair, where the type is one of
the following:

=over

=item *

emailAddress E<ndash> if the value specified is the email address of an
AWS account

=item *

id E<ndash> if the value specified is the canonical user ID of an AWS
account

=item *

uri E<ndash> if you are granting permissions to a predefined group

=back

For example, the following x-amz-grant-read header grants the AWS
accounts identified by email addresses permissions to read object data
and its metadata:

C<x-amz-grant-read: emailAddress="xyz@amazon.com",
emailAddress="abc@amazon.com">

=back

=back

The following operation are related to C<CopyObject>

=over

=item *

PutObject

=item *

GetObject

=back

For more information, see Copying Objects
(https://docs.aws.amazon.com/AmazonS3/latest/dev/CopyingObjectsExamples.html).


=head2 CreateBucket

=over

=item Bucket => Str

=item [ACL => Str]

=item [ContentLength => Int]

=item [CreateBucketConfiguration => S3_CreateBucketConfiguration]

=item [GrantFullControl => Str]

=item [GrantRead => Str]

=item [GrantReadACP => Str]

=item [GrantWrite => Str]

=item [GrantWriteACP => Str]

=item [ObjectLockEnabledForBucket => Bool]


=back

Each argument is described in detail in: L<Paws::S3::CreateBucket>

Returns: a L<Paws::S3::CreateBucketOutput> instance

Creates a new bucket. To create a bucket, you must register with Amazon
S3 and have a valid AWS Access Key ID to authenticate requests.
Anonymous requests are never allowed to create buckets. By creating the
bucket, you become the bucket owner.

Not every string is an acceptable bucket name. For information on
bucket naming restrictions, see Working with Amazon S3 Buckets
(https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingBucket.html).

By default, the bucket is created in the US East (N. Virginia) region.
You can optionally specify a region in the request body. You might
choose a region to optimize latency, minimize costs, or address
regulatory requirements. For example, if you reside in Europe, you will
probably find it advantageous to create buckets in the EU (Ireland)
region. For more information, see How to Select a Region for Your
Buckets
(https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingBucket.html#access-bucket-intro).

If you send your create bucket request to the s3.amazonaws.com
endpoint, the request go to the us-east-1 region. Accordingly, the
signature calculations in Signature Version 4 must use us-east-1 as
region, even if the location constraint in the request specifies
another region where the bucket is to be created. If you create a
bucket in a region other than US East (N. Virginia) region, your
application must be able to handle 307 redirect. For more information,
see Virtual Hosting of Buckets
(https://docs.aws.amazon.com/AmazonS3/latest/dev/VirtualHosting.html).

When creating a bucket using this operation, you can optionally specify
the accounts or groups that should be granted specific permissions on
the bucket. There are two ways to grant the appropriate permissions
using the request headers.

=over

=item *

Specify a canned ACL using the C<x-amz-acl> request header. Amazon S3
supports a set of predefined ACLs, known as canned ACLs. Each canned
ACL has a predefined set of grantees and permissions. For more
information, see Canned ACL
(https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#CannedACL).

=item *

Specify access permissions explicitly using the C<x-amz-grant-read>,
C<x-amz-grant-write>, C<x-amz-grant-read-acp>,
C<x-amz-grant-write-acp>, C<x-amz-grant-full-control> headers. These
headers map to the set of permissions Amazon S3 supports in an ACL. For
more information, see Access Control List (ACL) Overview
(https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html).

You specify each grantee as a type=value pair, where the type is one of
the following:

=over

=item *

emailAddress E<ndash> if the value specified is the email address of an
AWS account

=item *

id E<ndash> if the value specified is the canonical user ID of an AWS
account

=item *

uri E<ndash> if you are granting permissions to a predefined group

=back

For example, the following x-amz-grant-read header grants the AWS
accounts identified by email addresses permissions to read object data
and its metadata:

C<x-amz-grant-read: emailAddress="xyz@amazon.com",
emailAddress="abc@amazon.com">

=back

You can use either a canned ACL or specify access permissions
explicitly. You cannot do both.

The following operations are related to C<CreateBucket>:

=over

=item *

PutObject

=item *

DeleteBucket

=back



=head2 CreateMultipartUpload

=over

=item Bucket => Str

=item Key => Str

=item [ACL => Str]

=item [CacheControl => Str]

=item [ContentDisposition => Str]

=item [ContentEncoding => Str]

=item [ContentLanguage => Str]

=item [ContentType => Str]

=item [Expires => Str]

=item [GrantFullControl => Str]

=item [GrantRead => Str]

=item [GrantReadACP => Str]

=item [GrantWriteACP => Str]

=item [Metadata => S3_Metadata]

=item [ObjectLockLegalHoldStatus => Str]

=item [ObjectLockMode => Str]

=item [ObjectLockRetainUntilDate => Str]

=item [RequestPayer => Str]

=item [ServerSideEncryption => Str]

=item [SSECustomerAlgorithm => Str]

=item [SSECustomerKey => Str]

=item [SSECustomerKeyMD5 => Str]

=item [SSEKMSEncryptionContext => Str]

=item [SSEKMSKeyId => Str]

=item [StorageClass => Str]

=item [Tagging => Str]

=item [WebsiteRedirectLocation => Str]


=back

Each argument is described in detail in: L<Paws::S3::CreateMultipartUpload>

Returns: a L<Paws::S3::CreateMultipartUploadOutput> instance

This operation initiates a multipart upload and returns an upload ID.
This upload ID is used to associate all of the parts in the specific
multipart upload. You specify this upload ID in each of your subsequent
upload part requests (see UploadPart). You also include this upload ID
in the final request to either complete or abort the multipart upload
request.

For more information about multipart uploads, see Multipart Upload
Overview
(https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html).

If you have configured a lifecycle rule to abort incomplete multipart
uploads, the upload must complete within the number of days specified
in the bucket lifecycle configuration. Otherwise, the incomplete
multipart upload becomes eligible for an abort operation and Amazon S3
aborts the multipart upload. For more information, see Aborting
Incomplete Multipart Uploads Using a Bucket Lifecycle Policy
(https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html#mpu-abort-incomplete-mpu-lifecycle-config).

For information about the permissions required to use the multipart
upload API, see Multipart Upload API and Permissions
(https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuAndPermissions.html).

For request signing, multipart upload is just a series of regular
requests. You initiate a multipart upload, send one or more requests to
upload parts, and then complete the multipart upload process. You sign
each request individually. There is nothing special about signing
multipart upload requests. For more information about signing, see
Authenticating Requests (AWS Signature Version 4)
(https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html).

After you initiate a multipart upload and upload one or more parts, to
stop being charged for storing the uploaded parts, you must either
complete or abort the multipart upload. Amazon S3 frees up the space
used to store the parts and stop charging you for storing them only
after you either complete or abort a multipart upload.

You can optionally request server-side encryption. For server-side
encryption, Amazon S3 encrypts your data as it writes it to disks in
its data centers and decrypts it when you access it. You can provide
your own encryption key, or use AWS Key Management Service (AWS KMS)
customer master keys (CMKs) or Amazon S3-managed encryption keys. If
you choose to provide your own encryption key, the request headers you
provide in UploadPart) and UploadPartCopy) requests must match the
headers you used in the request to initiate the upload by using
C<CreateMultipartUpload>.

To perform a multipart upload with encryption using an AWS KMS CMK, the
requester must have permission to the C<kms:Encrypt>, C<kms:Decrypt>,
C<kms:ReEncrypt*>, C<kms:GenerateDataKey*>, and C<kms:DescribeKey>
actions on the key. These permissions are required because Amazon S3
must decrypt and read data from the encrypted file parts before it
completes the multipart upload.

If your AWS Identity and Access Management (IAM) user or role is in the
same AWS account as the AWS KMS CMK, then you must have these
permissions on the key policy. If your IAM user or role belongs to a
different account than the key, then you must have the permissions on
both the key policy and your IAM user or role.

For more information, see Protecting Data Using Server-Side Encryption
(https://docs.aws.amazon.com/AmazonS3/latest/dev/serv-side-encryption.html).

=over

=item Access Permissions

When copying an object, you can optionally specify the accounts or
groups that should be granted specific permissions on the new object.
There are two ways to grant the permissions using the request headers:

=over

=item *

Specify a canned ACL with the C<x-amz-acl> request header. For more
information, see Canned ACL
(https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#CannedACL).

=item *

Specify access permissions explicitly with the C<x-amz-grant-read>,
C<x-amz-grant-read-acp>, C<x-amz-grant-write-acp>, and
C<x-amz-grant-full-control> headers. These parameters map to the set of
permissions that Amazon S3 supports in an ACL. For more information,
see Access Control List (ACL) Overview
(https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html).

=back

You can use either a canned ACL or specify access permissions
explicitly. You cannot do both.

=item Server-Side- Encryption-Specific Request Headers

You can optionally tell Amazon S3 to encrypt data at rest using
server-side encryption. Server-side encryption is for data encryption
at rest. Amazon S3 encrypts your data as it writes it to disks in its
data centers and decrypts it when you access it. The option you use
depends on whether you want to use AWS-managed encryption keys or
provide your own encryption key.

=over

=item *

Use encryption keys managed by Amazon S3 or customer master keys (CMKs)
stored in Amazon Key Management Service (KMS) E<ndash> If you want AWS
to manage the keys used to encrypt data, specify the following headers
in the request.

=over

=item *

x-amz-server-side-encryption

=item *

x-amz-server-side-encryption-aws-kms-key-id

=item *

x-amz-server-side-encryption-context

=back

If you specify x-amz-server-side-encryption:aws:kms, but don't provide
x-amz-server-side- encryption-aws-kms-key-id, Amazon S3 uses the AWS
managed CMK in AWS KMS to protect the data.

All GET and PUT requests for an object protected by AWS KMS fail if you
don't make them with SSL or by using SigV4.

For more information on Server-Side Encryption with CMKs Stored in
Amazon KMS (SSE-KMS), see Protecting Data Using Server-Side Encryption
with CMKs stored in AWS KMS
(https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingKMSEncryption.html).

=item *

Use customer-provided encryption keys E<ndash> If you want to manage
your own encryption keys, provide all the following headers in the
request.

=over

=item *

x-amz-server-side-encryption-customer-algorithm

=item *

x-amz-server-side-encryption-customer-key

=item *

x-amz-server-side-encryption-customer-key-MD5

=back

For more information on Server-Side Encryption with CMKs stored in AWS
KMS (SSE-KMS), see Protecting Data Using Server-Side Encryption with
CMKs stored in AWS KMS
(https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingKMSEncryption.html).

=back

=item Access-Control-List (ACL)-Specific Request Headers

You also can use the following access controlE<ndash>related headers
with this operation. By default, all objects are private. Only the
owner has full access control. When adding a new object, you can grant
permissions to individual AWS accounts or to predefined groups defined
by Amazon S3. These permissions are then added to the Access Control
List (ACL) on the object. For more information, see Using ACLs
(https://docs.aws.amazon.com/AmazonS3/latest/dev/S3_ACLs_UsingACLs.html).
With this operation, you can grant access permissions using one of the
following two methods:

=over

=item *

Specify a canned ACL (x-amz-acl) E<mdash> Amazon S3 supports a set of
predefined ACLs, known as canned ACLs. Each canned ACL has a predefined
set of grantees and permissions. For more information, see Canned ACL
(https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#CannedACL).

=item *

Specify access permissions explicitly E<mdash> To explicitly grant
access permissions to specific AWS accounts or groups, use the
following headers. Each header maps to specific permissions that Amazon
S3 supports in an ACL. For more information, see Access Control List
(ACL) Overview
(https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html). In
the header, you specify a list of grantees who get the specific
permission. To grant permissions explicitly use:

=over

=item *

x-amz-grant-read

=item *

x-amz-grant-write

=item *

x-amz-grant-read-acp

=item *

x-amz-grant-write-acp

=item *

x-amz-grant-full-control

=back

You specify each grantee as a type=value pair, where the type is one of
the following:

=over

=item *

emailAddress E<ndash> if the value specified is the email address of an
AWS account

=item *

id E<ndash> if the value specified is the canonical user ID of an AWS
account

=item *

uri E<ndash> if you are granting permissions to a predefined group

=back

For example, the following x-amz-grant-read header grants the AWS
accounts identified by email addresses permissions to read object data
and its metadata:

C<x-amz-grant-read: emailAddress="xyz@amazon.com",
emailAddress="abc@amazon.com">

=back

=back

The following operations are related to C<CreateMultipartUpload>:

=over

=item *

UploadPart

=item *

CompleteMultipartUpload

=item *

AbortMultipartUpload

=item *

ListParts

=item *

ListMultipartUploads

=back



=head2 DeleteBucket

=over

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3::DeleteBucket>

Returns: nothing

Deletes the bucket. All objects (including all object versions and
Delete Markers) in the bucket must be deleted before the bucket itself
can be deleted.

B<Related Resources>

=over

=item *

=item *

=back



=head2 DeleteBucketAnalyticsConfiguration

=over

=item Bucket => Str

=item Id => Str


=back

Each argument is described in detail in: L<Paws::S3::DeleteBucketAnalyticsConfiguration>

Returns: nothing

Deletes an analytics configuration for the bucket (specified by the
analytics configuration ID).

To use this operation, you must have permissions to perform the
s3:PutAnalyticsConfiguration action. The bucket owner has this
permission by default. The bucket owner can grant this permission to
others. For more information about permissions, see Permissions Related
to Bucket Subresource Operations
(https://docs.aws.amazon.com/AmazonS3/latest/dev//using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and Managing Access Permissions to Your Amazon S3 Resources
(https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html).

For information about Amazon S3 analytics feature, see Amazon S3
Analytics E<ndash> Storage Class Analysis
(https://docs.aws.amazon.com/AmazonS3/latest/dev/analytics-storage-class.html).

The following operations are related to
C<DeleteBucketAnalyticsConfiguration>:

=over

=item *

=item *

=item *

=back



=head2 DeleteBucketCors

=over

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3::DeleteBucketCors>

Returns: nothing

Deletes the C<cors> configuration information set for the bucket.

To use this operation, you must have permission to perform the
C<s3:PutBucketCORS> action. The bucket owner has this permission by
default and can grant this permission to others.

For information more about C<cors>, go to Enabling Cross-Origin
Resource Sharing
(https://docs.aws.amazon.com/AmazonS3/latest/dev/cors.html) in the
I<Amazon Simple Storage Service Developer Guide>.

B<Related Resources:>

=over

=item *

=item *

RESTOPTIONSobject

=back



=head2 DeleteBucketEncryption

=over

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3::DeleteBucketEncryption>

Returns: nothing

This implementation of the DELETE operation removes default encryption
from the bucket. For information about the Amazon S3 default encryption
feature, see Amazon S3 Default Bucket Encryption
(https://docs.aws.amazon.com/AmazonS3/latest/dev//bucket-encryption.html)
in the I<Amazon Simple Storage Service Developer Guide>.

To use this operation, you must have permissions to perform the
C<s3:PutEncryptionConfiguration> action. The bucket owner has this
permission by default. The bucket owner can grant this permission to
others. For more information about permissions, see Permissions Related
to Bucket Subresource Operations
(https://docs.aws.amazon.com/AmazonS3/latest/dev//using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and Managing Access Permissions to your Amazon S3 Resources
(https://docs.aws.amazon.com/AmazonS3/latest/dev//s3-access-control.html)
in the I<Amazon Simple Storage Service Developer Guide>.

B<Related Resources>

=over

=item *

PutBucketEncryption

=item *

GetBucketEncryption

=back



=head2 DeleteBucketInventoryConfiguration

=over

=item Bucket => Str

=item Id => Str


=back

Each argument is described in detail in: L<Paws::S3::DeleteBucketInventoryConfiguration>

Returns: nothing

Deletes an inventory configuration (identified by the inventory ID)
from the bucket.

To use this operation, you must have permissions to perform the
C<s3:PutInventoryConfiguration> action. The bucket owner has this
permission by default. The bucket owner can grant this permission to
others. For more information about permissions, see Permissions Related
to Bucket Subresource Operations
(https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and Managing Access Permissions to Your Amazon S3 Resources
(https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html).

For information about the Amazon S3 inventory feature, see Amazon S3
Inventory
(https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-inventory.html).

Operation related to C<DeleteBucketInventoryConfiguration> include:

=over

=item *

GetBucketInventoryConfiguration

=item *

PutBucketInventoryConfiguration

=item *

ListBucketInventoryConfigurations

=back



=head2 DeleteBucketLifecycle

=over

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3::DeleteBucketLifecycle>

Returns: nothing

Deletes the lifecycle configuration from the specified bucket. Amazon
S3 removes all the lifecycle configuration rules in the lifecycle
subresource associated with the bucket. Your objects never expire, and
Amazon S3 no longer automatically deletes any objects on the basis of
rules contained in the deleted lifecycle configuration.

To use this operation, you must have permission to perform the
C<s3:PutLifecycleConfiguration> action. By default, the bucket owner
has this permission and the bucket owner can grant this permission to
others.

There is usually some time lag before lifecycle configuration deletion
is fully propagated to all the Amazon S3 systems.

For more information about the object expiration, see Elements to
Describe Lifecycle Actions
(https://docs.aws.amazon.com/AmazonS3/latest/dev/intro-lifecycle-rules.html#intro-lifecycle-rules-actions).

Related actions include:

=over

=item *

PutBucketLifecycleConfiguration

=item *

GetBucketLifecycleConfiguration

=back



=head2 DeleteBucketMetricsConfiguration

=over

=item Bucket => Str

=item Id => Str


=back

Each argument is described in detail in: L<Paws::S3::DeleteBucketMetricsConfiguration>

Returns: nothing

Deletes a metrics configuration for the Amazon CloudWatch request
metrics (specified by the metrics configuration ID) from the bucket.
Note that this doesn't include the daily storage metrics.

To use this operation, you must have permissions to perform the
C<s3:PutMetricsConfiguration> action. The bucket owner has this
permission by default. The bucket owner can grant this permission to
others. For more information about permissions, see Permissions Related
to Bucket Subresource Operations
(https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and Managing Access Permissions to Your Amazon S3 Resources
(https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html).

For information about CloudWatch request metrics for Amazon S3, see
Monitoring Metrics with Amazon CloudWatch
(https://docs.aws.amazon.com/AmazonS3/latest/dev/cloudwatch-monitoring.html).

The following operations are related to
C<DeleteBucketMetricsConfiguration>

=over

=item *

GetBucketMetricsConfiguration

=item *

PutBucketMetricsConfiguration

=item *

ListBucketMetricsConfigurations

=item *

Monitoring Metrics with Amazon CloudWatch
(https://docs.aws.amazon.com/AmazonS3/latest/dev/cloudwatch-monitoring.html)

=back



=head2 DeleteBucketPolicy

=over

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3::DeleteBucketPolicy>

Returns: nothing

This implementation of the DELETE operation uses the policysubresource
to delete the policy of a specified bucket. If you are using an
identity other than the root user of the AWS account that owns the
bucket, the calling identity must have the C<DeleteBucketPolicy>
permissions on the specified bucket and belong to the bucket owner's
account in order to use this operation.

If you don't have C<DeleteBucketPolicy> permissions, Amazon S3 returns
a C<403 Access Denied> error. If you have the correct permissions, but
you're notusing an identity that belongs to the bucket owner's account,
Amazon S3 returns a C<405 Method Not Allowed> error.

As a security precaution, the root user of the AWS account that owns a
bucket can always use this operation, even if the policy explicitly
denies the root user the ability to perform this action.

For more information about bucket policies, see Using Bucket Policies
and UserPolicies.

The following operations are related to C<DeleteBucketPolicy>

=over

=item *

CreateBucket

=item *

DeleteObject

=back



=head2 DeleteBucketReplication

=over

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3::DeleteBucketReplication>

Returns: nothing

Deletes the replication configuration from the bucket.

To use this operation, you must have permissions to perform the
C<s3:PutReplicationConfiguration> action. The bucket owner has these
permissions by default and can grant it to others. For more information
about permissions, see Permissions Related to Bucket Subresource
Operations
(https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and Managing Access Permissions to Your Amazon S3 Resources
(https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html).

It can take a while for the deletion of a replication configuration to
fully propagate.

For information about replication configuration, see Replication in the
I<Amazon S3 Developer Guide>.

The following operations are related to C<DeleteBucketReplication>

=over

=item *

PutBucketReplication

=item *

GetBucketReplication

=back



=head2 DeleteBucketTagging

=over

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3::DeleteBucketTagging>

Returns: nothing

Deletes the tags from the bucket.

To use this operation, you must have permission to perform the
C<s3:PutBucketTagging> action. By default, the bucket owner has this
permission and can grant this permission to others.

The following operations are related to C<DeleteBucketTagging>

=over

=item *

GetBucketTagging

=item *

PutBucketTagging

=back



=head2 DeleteBucketWebsite

=over

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3::DeleteBucketWebsite>

Returns: nothing

This operation removes the website configuration for a bucket. Amazon
S3 returns a C<200 OK> response upon successfully deleting a website
configuration on the specified bucket. You will get a C<200 OK>
response if the website configuration you are trying to delete does not
exist on the bucket. Amazon S3 returns a C<404> response if the bucket
specified in the request does not exist.

This DELETE operation requires the C<S3:DeleteBucketWebsite>
permission. By default, only the bucket owner can delete the website
configuration attached to a bucket. However, bucket owners can grant
other users permission to delete the website configuration by writing a
bucket policy granting them the C<S3:DeleteBucketWebsite> permission.

For more information about hosting websites, see Hosting Websites on
Amazon S3
(https://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteHosting.html).

The following operations are related to C<DeleteBucketWebsite>

=over

=item *

GetBucketWebsite

=item *

PutBucketWebsite

=back



=head2 DeleteObject

=over

=item Bucket => Str

=item Key => Str

=item [BypassGovernanceRetention => Bool]

=item [MFA => Str]

=item [RequestPayer => Str]

=item [VersionId => Str]


=back

Each argument is described in detail in: L<Paws::S3::DeleteObject>

Returns: a L<Paws::S3::DeleteObjectOutput> instance

Removes the null version (if there is one) of an object and inserts a
delete marker, which becomes the latest version of the object. If there
isn't a null version, Amazon S3 does not remove any objects.

To remove a specific version, you must be the bucket owner and you must
use the version Id subresource. Using this subresource permanently
deletes the version. If the object deleted is a delete marker, Amazon
S3 sets the response header, x-amz-delete-marker, to true.

If the object you want to delete is in a bucket where the bucket
versioning configurationis MFA Delete enabled, you must include the
x-amz-mfa request header in the DELETE versionId request. Requests that
include x-amz-mfa must use HTTPS.

For more information about MFA Delete, see Using MFA Delete
(https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMFADelete.html).
To see sample requests that use versioning, see Sample Request
(https://docs.aws.amazon.com/AmazonS3/latest/API/RESTObjectDELETE.html#ExampleVersionObjectDelete).

You can delete objects by explicitly calling the DELETE Object API or
configure its lifecycle (PutBucketLifecycle) to enable Amazon S3 to
remove them for you. If you want to block users or accounts from
removing or deleting objects from your bucket you must deny them the
s3:DeleteObject, s3:DeleteObjectVersion and
s3:PutLifeCycleConfiguration actions.

The following operation is related to C<DeleteObject>

=over

=item *

PutObject

=back



=head2 DeleteObjects

=over

=item Bucket => Str

=item Delete => S3_Delete

=item [BypassGovernanceRetention => Bool]

=item [ContentLength => Int]

=item [ContentMD5 => Str]

=item [MFA => Str]

=item [RequestPayer => Str]


=back

Each argument is described in detail in: L<Paws::S3::DeleteObjects>

Returns: a L<Paws::S3::DeleteObjectsOutput> instance

This operation enables you to delete multiple objects from a bucket
using a single HTTP request. If you know the object keys that you want
to delete, then this operation provides a suitable alternative to
sending individual delete requests, reducing per-request overhead.

The request contains a list of up to 1000 keys that you want to delete.
In the XML, you provide the object key names, and optionally, version
IDs if you want to delete a specific version of the object from a
versioning-enabled bucket. For each key, Amazon S3 performs a delete
operation and returns the result of that delete, success, or failure,
in the response. Note that, if the object specified in the request is
not found, Amazon S3 returns the result as deleted.

The operation supports two modes for the response; verbose and quiet.
By default, the operation uses verbose mode in which the response
includes the result of deletion of each key in your request. In quiet
mode the response includes only keys where the delete operation
encountered an error. For a successful deletion, the operation does not
return any information about the delete in the response body.

When performing this operation on an MFA Delete enabled bucket, that
attempts to delete any versioned objects, you must include an MFA
token. If you do not provide one, the entire request will fail, even if
there are non versioned objects you are attempting to delete. If you
provide an invalid token, whether there are versioned keys in the
request or not, the entire Multi-Object Delete request will fail. For
information about MFA Delete, see MFA Delete
(https://docs.aws.amazon.com/AmazonS3/latest/dev/Versioning.html#MultiFactorAuthenticationDelete).

Finally, the Content-MD5 header is required for all Multi-Object Delete
requests. Amazon S3 uses the header value to ensure that your request
body has not be altered in transit.

The following operations are related to C<DeleteObjects>

=over

=item *

CreateMultipartUpload

=item *

UploadPart

=item *

CompleteMultipartUpload

=item *

ListParts

=item *

AbortMultipartUpload

=back



=head2 DeleteObjectTagging

=over

=item Bucket => Str

=item Key => Str

=item [VersionId => Str]


=back

Each argument is described in detail in: L<Paws::S3::DeleteObjectTagging>

Returns: a L<Paws::S3::DeleteObjectTaggingOutput> instance

Removes the entire tag set from the specified object. For more
information about managing object tags, see Object Tagging
(https://docs.aws.amazon.com/AmazonS3/latest/dev/Versioning.html#MultiFactorAuthenticationDelete).

To use this operation, you must have permission to perform the
s3:DeleteObjectTagging action.

To delete tags of a specific object version, add the versionId query
parameter in the request. You will need permission for the
s3:DeleteObjectVersionTagging action.

The following operations are related to
C<DeleteBucketMetricsConfiguration>

=over

=item *

PutObjectTagging

=item *

GetObjectTagging

=back



=head2 DeletePublicAccessBlock

=over

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3::DeletePublicAccessBlock>

Returns: nothing

Removes the PublicAccessBlock configuration for an Amazon S3 bucket. In
order to use this operation, you must have the
s3:PutBucketPublicAccessBlock permission. For more information about
permissions, see Permissions Related to Bucket Subresource Operations
(https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and Managing Access Permissions to Your Amazon S3 Resources
(https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html).

The following operations are related to
C<DeleteBucketMetricsConfiguration>:

=over

=item *

Using Amazon S3 Block Public Access
(https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html)

=item *

GetPublicAccessBlock

=item *

PutPublicAccessBlock

=item *

GetBucketPolicyStatus

=back



=head2 GetBucketAccelerateConfiguration

=over

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3::GetBucketAccelerateConfiguration>

Returns: a L<Paws::S3::GetBucketAccelerateConfigurationOutput> instance

This implementation of the GET operation uses the C<accelerate>
subresource to return the Transfer Acceleration state of a bucket,
which is either C<Enabled> or C<Suspended>. Amazon S3 Transfer
Acceleration is a bucket-level feature that enables you to perform
faster data transfers to and from Amazon S3.

To use this operation, you must have permission to perform the
C<s3:GetAccelerateConfiguration> action. The bucket owner has this
permission by default. The bucket owner can grant this permission to
others. For more information about permissions, see Permissions Related
to Bucket Subresource Operations
(https://docs.aws.amazon.com/AmazonS3/latest/dev//using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and Managing Access Permissions to your Amazon S3 Resources
(https://docs.aws.amazon.com/AmazonS3/latest/dev//s3-access-control.html)
in the Amazon Simple Storage Service Developer Guide.

You set the Transfer Acceleration state of an existing bucket to
C<Enabled> or C<Suspended> by using the
PutBucketAccelerateConfiguration operation.

A GET C<accelerate> request does not return a state value for a bucket
that has no transfer acceleration state. A bucket has no Transfer
Acceleration state, if a state has never been set on the bucket.

For more information on transfer acceleration, see Transfer
Acceleration
(https://docs.aws.amazon.com/AmazonS3/latest/dev//transfer-acceleration.html)
in the Amazon Simple Storage Service Developer Guide.

B<Related Resources>

=over

=item *

PutBucketAccelerateConfiguration

=back



=head2 GetBucketAcl

=over

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3::GetBucketAcl>

Returns: a L<Paws::S3::GetBucketAclOutput> instance

This implementation of the C<GET> operation uses the C<acl> subresource
to return the access control list (ACL) of a bucket. To use C<GET> to
return the ACL of the bucket, you must have C<READ_ACP> access to the
bucket. If C<READ_ACP> permission is granted to the anonymous user, you
can return the ACL of the bucket without using an authorization header.

B<Related Resources>

=over

=item *

=back



=head2 GetBucketAnalyticsConfiguration

=over

=item Bucket => Str

=item Id => Str


=back

Each argument is described in detail in: L<Paws::S3::GetBucketAnalyticsConfiguration>

Returns: a L<Paws::S3::GetBucketAnalyticsConfigurationOutput> instance

This implementation of the GET operation returns an analytics
configuration (identified by the analytics configuration ID) from the
bucket.

To use this operation, you must have permissions to perform the
C<s3:GetAnalyticsConfiguration> action. The bucket owner has this
permission by default. The bucket owner can grant this permission to
others. For more information about permissions, see Permissions Related
to Bucket Subresource Operations
(https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and Managing Access Permissions to Your Amazon S3 Resources
(https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html)
in the I<Amazon Simple Storage Service Developer Guide>.

For information about Amazon S3 analytics feature, see Amazon S3
Analytics E<ndash> Storage Class Analysis
(https://docs.aws.amazon.com/AmazonS3/latest/dev/analytics-storage-class.html)
in the I<Amazon Simple Storage Service Developer Guide>.

B<Related Resources>

=over

=item *

=item *

=item *

=back



=head2 GetBucketCors

=over

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3::GetBucketCors>

Returns: a L<Paws::S3::GetBucketCorsOutput> instance

Returns the cors configuration information set for the bucket.

To use this operation, you must have permission to perform the
s3:GetBucketCORS action. By default, the bucket owner has this
permission and can grant it to others.

To learn more cors, see Enabling Cross-Origin Resource Sharing
(https://docs.aws.amazon.com/AmazonS3/latest/dev/cors.html)Enabling
Cross-Origin Resource Sharing.

The following operations are related to C<GetBucketCors>:

=over

=item *

PutBucketCors

=item *

DeleteBucketCors

=back



=head2 GetBucketEncryption

=over

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3::GetBucketEncryption>

Returns: a L<Paws::S3::GetBucketEncryptionOutput> instance

Returns the default encryption configuration for an Amazon S3 bucket.
For information about the Amazon S3 default encryption feature, see
Amazon S3 Default Bucket Encryption
(https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-encryption.html).

To use this operation, you must have permission to perform the
C<s3:GetEncryptionConfiguration> action. The bucket owner has this
permission by default. The bucket owner can grant this permission to
others. For more information about permissions, see Permissions Related
to Bucket Subresource Operations
(https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and Managing Access Permissions to Your Amazon S3 Resources
(https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html).

The following operations are related to C<GetBucketEncryption>:

=over

=item *

PutBucketEncryption

=item *

DeleteBucketEncryption

=back



=head2 GetBucketInventoryConfiguration

=over

=item Bucket => Str

=item Id => Str


=back

Each argument is described in detail in: L<Paws::S3::GetBucketInventoryConfiguration>

Returns: a L<Paws::S3::GetBucketInventoryConfigurationOutput> instance

Returns an inventory configuration (identified by the inventory
configuration ID) from the bucket.

To use this operation, you must have permissions to perform the
C<s3:GetInventoryConfiguration> action. The bucket owner has this
permission by default and can grant this permission to others. For more
information about permissions, see Permissions Related to Bucket
Subresource Operations
(https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and Managing Access Permissions to Your Amazon S3 Resources
(https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html).

For information about the Amazon S3 inventory feature, see Amazon S3
Inventory
(https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-inventory.html).

The following operations are related to
C<GetBucketInventoryConfiguration>:

=over

=item *

DeleteBucketInventoryConfiguration

=item *

ListBucketInventoryConfigurations

=item *

PutBucketInventoryConfiguration

=back



=head2 GetBucketLifecycle

=over

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3::GetBucketLifecycle>

Returns: a L<Paws::S3::GetBucketLifecycleOutput> instance

For an updated version of this API, see
GetBucketLifecycleConfiguration. If you configured a bucket lifecycle
using the C<filter> element, you should the updated version of this
topic. This topic is provided for backward compatibility.

Returns the lifecycle configuration information set on the bucket. For
information about lifecycle configuration, see Object Lifecycle
Management
(https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html).

To use this operation, you must have permission to perform the
C<s3:GetLifecycleConfiguration> action. The bucket owner has this
permission by default. The bucket owner can grant this permission to
others. For more information about permissions, see Permissions Related
to Bucket Subresource Operations
(https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and Managing Access Permissions to Your Amazon S3 Resources
(https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html).

C<GetBucketLifecycle> has the following special error:

=over

=item *

Error code: C<NoSuchLifecycleConfiguration>

=over

=item *

Description: The lifecycle configuration does not exist.

=item *

HTTP Status Code: 404 Not Found

=item *

SOAP Fault Code Prefix: Client

=back

=back

The following operations are related to C<GetBucketLifecycle>:

=over

=item *

GetBucketLifecycleConfiguration

=item *

PutBucketLifecycle

=item *

DeleteBucketLifecycle

=back



=head2 GetBucketLifecycleConfiguration

=over

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3::GetBucketLifecycleConfiguration>

Returns: a L<Paws::S3::GetBucketLifecycleConfigurationOutput> instance

Bucket lifecycle configuration now supports specifying a lifecycle rule
using an object key name prefix, one or more object tags, or a
combination of both. Accordingly, this section describes the latest
API. The response describes the new filter element that you can use to
specify a filter to select a subset of objects to which the rule
applies. If you are still using previous version of the lifecycle
configuration, it works. For the earlier API description, see
GetBucketLifecycle.

Returns the lifecycle configuration information set on the bucket. For
information about lifecycle configuration, see Object Lifecycle
Management
(https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html).

To use this operation, you must have permission to perform the
C<s3:GetLifecycleConfiguration> action. The bucket owner has this
permission, by default. The bucket owner can grant this permission to
others. For more information about permissions, see Permissions Related
to Bucket Subresource Operations
(https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and Managing Access Permissions to Your Amazon S3 Resources
(https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html).

C<GetBucketLifecycleConfiguration> has the following special error:

=over

=item *

Error code: C<NoSuchLifecycleConfiguration>

=over

=item *

Description: The lifecycle configuration does not exist.

=item *

HTTP Status Code: 404 Not Found

=item *

SOAP Fault Code Prefix: Client

=back

=back

The following operations are related to
C<DeleteBucketMetricsConfiguration>:

=over

=item *

GetBucketLifecycle

=item *

PutBucketLifecycle

=item *

DeleteBucketLifecycle

=back



=head2 GetBucketLocation

=over

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3::GetBucketLocation>

Returns: a L<Paws::S3::GetBucketLocationOutput> instance

Returns the region the bucket resides in. You set the bucket's region
using the C<LocationConstraint> request parameter in a C<CreateBucket>
request. For more information, see CreateBucket.

To use this implementation of the operation, you must be the bucket
owner.

The following operations are related to C<GetBucketLocation>:

=over

=item *

GetObject

=item *

CreateBucket

=back



=head2 GetBucketLogging

=over

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3::GetBucketLogging>

Returns: a L<Paws::S3::GetBucketLoggingOutput> instance

Returns the logging status of a bucket and the permissions users have
to view and modify that status. To use GET, you must be the bucket
owner.

The following operations are related to C<GetBucketLogging>:

=over

=item *

CreateBucket

=item *

PutBucketLogging

=back



=head2 GetBucketMetricsConfiguration

=over

=item Bucket => Str

=item Id => Str


=back

Each argument is described in detail in: L<Paws::S3::GetBucketMetricsConfiguration>

Returns: a L<Paws::S3::GetBucketMetricsConfigurationOutput> instance

Gets a metrics configuration (specified by the metrics configuration
ID) from the bucket. Note that this doesn't include the daily storage
metrics.

To use this operation, you must have permissions to perform the
C<s3:GetMetricsConfiguration> action. The bucket owner has this
permission by default. The bucket owner can grant this permission to
others. For more information about permissions, see Permissions Related
to Bucket Subresource Operations
(https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and Managing Access Permissions to Your Amazon S3 Resources
(https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html).

For information about CloudWatch request metrics for Amazon S3, see
Monitoring Metrics with Amazon CloudWatch
(https://docs.aws.amazon.com/AmazonS3/latest/dev/cloudwatch-monitoring.html).

The following operations are related to
C<GetBucketMetricsConfiguration>:

=over

=item *

PutBucketMetricsConfiguration

=item *

DeleteBucketMetricsConfiguration

=item *

ListBucketMetricsConfigurations

=item *

Monitoring Metrics with Amazon CloudWatch
(https://docs.aws.amazon.com/AmazonS3/latest/dev/cloudwatch-monitoring.html)

=back



=head2 GetBucketNotification

=over

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3::GetBucketNotification>

Returns: a L<Paws::S3::NotificationConfigurationDeprecated> instance

No longer used, see GetBucketNotificationConfiguration.


=head2 GetBucketNotificationConfiguration

=over

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3::GetBucketNotificationConfiguration>

Returns: a L<Paws::S3::NotificationConfiguration> instance

Returns the notification configuration of a bucket.

If notifications are not enabled on the bucket, the operation returns
an empty C<NotificationConfiguration> element.

By default, you must be the bucket owner to read the notification
configuration of a bucket. However, the bucket owner can use a bucket
policy to grant permission to other users to read this configuration
with the C<s3:GetBucketNotification> permission.

For more information about setting and reading the notification
configuration on a bucket, see Setting Up Notification of Bucket Events
(https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html).
For more information about bucket policies, see Using Bucket Policies
(https://docs.aws.amazon.com/AmazonS3/latest/dev/using-iam-policies.html).

The following operation is related to C<GetBucketNotification>:

=over

=item *

PutBucketNotification

=back



=head2 GetBucketPolicy

=over

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3::GetBucketPolicy>

Returns: a L<Paws::S3::GetBucketPolicyOutput> instance

Returns the policy of a specified bucket. If you are using an identity
other than the root user of the AWS account that owns the bucket, the
calling identity must have the C<GetBucketPolicy> permissions on the
specified bucket and belong to the bucket owner's account in order to
use this operation.

If you don't have C<GetBucketPolicy> permissions, Amazon S3 returns a
C<403 Access Denied> error. If you have the correct permissions, but
you're not using an identity that belongs to the bucket owner's
account, Amazon S3 returns a C<405 Method Not Allowed> error.

As a security precaution, the root user of the AWS account that owns a
bucket can always use this operation, even if the policy explicitly
denies the root user the ability to perform this action.

For more information about bucket policies, see Using Bucket Policies
and User Policies
(https://docs.aws.amazon.com/AmazonS3/latest/dev/using-iam-policies.html).

The following operation is related to C<GetBucketPolicy>:

=over

=item *

GetObject

=back



=head2 GetBucketPolicyStatus

=over

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3::GetBucketPolicyStatus>

Returns: a L<Paws::S3::GetBucketPolicyStatusOutput> instance

Retrieves the policy status for an Amazon S3 bucket, indicating whether
the bucket is public. In order to use this operation, you must have the
C<s3:GetBucketPolicyStatus> permission. For more information about
Amazon S3 permissions, see Specifying Permissions in a Policy
(https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html).

For more information about when Amazon S3 considers a bucket public,
see The Meaning of "Public"
(https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status).

The following operations are related to C<GetBucketPolicyStatus>:

=over

=item *

Using Amazon S3 Block Public Access
(https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html)

=item *

GetPublicAccessBlock

=item *

PutPublicAccessBlock

=item *

DeletePublicAccessBlock

=back



=head2 GetBucketReplication

=over

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3::GetBucketReplication>

Returns: a L<Paws::S3::GetBucketReplicationOutput> instance

Returns the replication configuration of a bucket.

It can take a while to propagate the put or delete a replication
configuration to all Amazon S3 systems. Therefore, a get request soon
after put or delete can return a wrong result.

For information about replication configuration, see Replication
(https://docs.aws.amazon.com/AmazonS3/latest/dev/replication.html).

This operation requires permissions for the
C<s3:GetReplicationConfiguration> action. For more information about
permissions, see Using Bucket Policies and User Policies
(https://docs.aws.amazon.com/AmazonS3/latest/dev/using-iam-policies.html).

If you include the C<Filter> element in a replication configuration,
you must also include the C<DeleteMarkerReplication> and C<Priority>
elements. The response also returns those elements.

C<GetBucketReplication> has the following special error:

=over

=item *

Error code: C<NoSuchReplicationConfiguration>

=over

=item *

Description: There is no replication configuration with that name.

=item *

HTTP Status Code: 404 Not Found

=item *

SOAP Fault Code Prefix: Client

=back

=back

The following operations are related to C<GetBucketReplication>:

=over

=item *

PutBucketReplication

=item *

DeleteBucketReplication

=back



=head2 GetBucketRequestPayment

=over

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3::GetBucketRequestPayment>

Returns: a L<Paws::S3::GetBucketRequestPaymentOutput> instance

Returns the request payment configuration of a bucket. To use this
version of the operation, you must be the bucket owner. For more
information, see Requester Pays Buckets
(https://docs.aws.amazon.com/AmazonS3/latest/dev/RequesterPaysBuckets.html).

The following operations are related to C<GetBucketRequestPayment>:

=over

=item *

ListObjects

=back



=head2 GetBucketTagging

=over

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3::GetBucketTagging>

Returns: a L<Paws::S3::GetBucketTaggingOutput> instance

Returns the tag set associated with the bucket.

To use this operation, you must have permission to perform the
C<s3:GetBucketTagging> action. By default, the bucket owner has this
permission and can grant this permission to others.

C<GetBucketTagging> has the following special error:

=over

=item *

Error code: C<NoSuchTagSetError>

=over

=item *

Description: There is no tag set associated with the bucket.

=back

=back

The following operations are related to C<GetBucketTagging>:

=over

=item *

PutBucketTagging

=item *

DeleteBucketTagging

=back



=head2 GetBucketVersioning

=over

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3::GetBucketVersioning>

Returns: a L<Paws::S3::GetBucketVersioningOutput> instance

Returns the versioning state of a bucket.

To retrieve the versioning state of a bucket, you must be the bucket
owner.

This implementation also returns the MFA Delete status of the
versioning state, i.e., if the MFA Delete status is C<enabled>, the
bucket owner must use an authentication device to change the versioning
state of the bucket.

The following operations are related to C<GetBucketVersioning>:

=over

=item *

GetObject

=item *

PutObject

=item *

DeleteObject

=back



=head2 GetBucketWebsite

=over

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3::GetBucketWebsite>

Returns: a L<Paws::S3::GetBucketWebsiteOutput> instance

Returns the website configuration for a bucket. To host website on
Amazon S3, you can configure a bucket as website by adding a website
configuration. For more information about hosting websites, see Hosting
Websites on Amazon S3
(https://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteHosting.html).

This GET operation requires the C<S3:GetBucketWebsite> permission. By
default, only the bucket owner can read the bucket website
configuration. However, bucket owners can allow other users to read the
website configuration by writing a bucket policy granting them the
C<S3:GetBucketWebsite> permission.

The following operations are related to C<DeleteBucketWebsite>

=over

=item *

DeleteBucketWebsite

=item *

PutBucketWebsite

=back



=head2 GetObject

=over

=item Bucket => Str

=item Key => Str

=item [IfMatch => Str]

=item [IfModifiedSince => Str]

=item [IfNoneMatch => Str]

=item [IfUnmodifiedSince => Str]

=item [PartNumber => Int]

=item [Range => Str]

=item [RequestPayer => Str]

=item [ResponseCacheControl => Str]

=item [ResponseContentDisposition => Str]

=item [ResponseContentEncoding => Str]

=item [ResponseContentLanguage => Str]

=item [ResponseContentType => Str]

=item [ResponseExpires => Str]

=item [SSECustomerAlgorithm => Str]

=item [SSECustomerKey => Str]

=item [SSECustomerKeyMD5 => Str]

=item [VersionId => Str]


=back

Each argument is described in detail in: L<Paws::S3::GetObject>

Returns: a L<Paws::S3::GetObjectOutput> instance

Retrieves objects from Amazon S3. To use C<GET>, you must have C<READ>
access to the object. If you grant C<READ> access to the anonymous
user, you can return the object without using an authorization header.

An Amazon S3 bucket has no directory hierarchy such as you would find
in a typical computer file system. You can, however, create a logical
hierarchy by using object key names that imply a folder structure. For
example, instead of naming an object C<sample.jpg>, you can name it
C<photos/2006/February/sample.jpg>.

To get an object from such a logical hierarchy, specify the full key
name for the object in the C<GET> operation. For a virtual hosted-style
request example, if you have the object
C<photos/2006/February/sample.jpg>, specify the resource as
C</photos/2006/February/sample.jpg>. For a path-style request example,
if you have the object C<photos/2006/February/sample.jpg> in the bucket
named examplebucket, specify the resource as
C</examplebucket/photos/2006/February/sample.jpg>. For more information
about request types, see HTTP Host Header Bucket Specification
(https://docs.aws.amazon.com/AmazonS3/latest/dev/VirtualHosting.html#VirtualHostingSpecifyBucket).

To distribute large files to many people, you can save bandwidth costs
by using BitTorrent. For more information, see Amazon S3 Torrent
(https://docs.aws.amazon.com/AmazonS3/latest/dev/S3Torrent.html). For
more information about returning the ACL of an object, see
GetObjectAcl.

If the object you are retrieving is stored in the GLACIER or
DEEP_ARCHIVE storage classes, before you can retrieve the object you
must first restore a copy using . Otherwise, this operation returns an
C<InvalidObjectStateError> error. For information about restoring
archived objects, see Restoring Archived Objects
(https://docs.aws.amazon.com/AmazonS3/latest/dev/restoring-objects.html).

Encryption request headers, like C<x-amz-server-side-encryption>,
should not be sent for GET requests if your object uses server-side
encryption with CMKs stored in AWS KMS (SSE-KMS) or server-side
encryption with Amazon S3E<ndash>managed encryption keys (SSE-S3). If
your object does use these types of keys, youE<rsquo>ll get an HTTP 400
BadRequest error.

If you encrypt an object by using server-side encryption with
customer-provided encryption keys (SSE-C) when you store the object in
Amazon S3, then when you GET the object, you must use the following
headers:

=over

=item *

x-amz-server-side-encryption-customer-algorithm

=item *

x-amz-server-side-encryption-customer-key

=item *

x-amz-server-side-encryption-customer-key-MD5

=back

For more information about SSE-C, see Server-Side Encryption (Using
Customer-Provided Encryption Keys)
(https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html).

Assuming you have permission to read object tags (permission for the
C<s3:GetObjectVersionTagging> action), the response also returns the
C<x-amz-tagging-count> header that provides the count of number of tags
associated with the object. You can use GetObjectTagging to retrieve
the tag set associated with an object.

B<Permissions>

You need the C<s3:GetObject> permission for this operation. For more
information, see Specifying Permissions in a Policy
(https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html).
If the object you request does not exist, the error Amazon S3 returns
depends on whether you also have the C<s3:ListBucket> permission.

=over

=item *

If you have the C<s3:ListBucket> permission on the bucket, Amazon S3
will return an HTTP status code 404 ("no such key") error.

=item *

If you donE<rsquo>t have the C<s3:ListBucket> permission, Amazon S3
will return an HTTP status code 403 ("access denied") error.

=back

B<Versioning>

By default, the GET operation returns the current version of an object.
To return a different version, use the C<versionId> subresource.

If the current version of the object is a delete marker, Amazon S3
behaves as if the object was deleted and includes
C<x-amz-delete-marker: true> in the response.

For more information about versioning, see PutBucketVersioning.

B<Overriding Response Header Values>

There are times when you want to override certain response header
values in a GET response. For example, you might override the
Content-Disposition response header value in your GET request.

You can override values for a set of response headers using the
following query parameters. These response header values are sent only
on a successful request, that is, when status code 200 OK is returned.
The set of headers you can override using these parameters is a subset
of the headers that Amazon S3 accepts when you create an object. The
response headers that you can override for the GET response are
C<Content-Type>, C<Content-Language>, C<Expires>, C<Cache-Control>,
C<Content-Disposition>, and C<Content-Encoding>. To override these
header values in the GET response, you use the following request
parameters.

You must sign the request, either using an Authorization header or a
presigned URL, when using these parameters. They cannot be used with an
unsigned (anonymous) request.

=over

=item *

C<response-content-type>

=item *

C<response-content-language>

=item *

C<response-expires>

=item *

C<response-cache-control>

=item *

C<response-content-disposition>

=item *

C<response-content-encoding>

=back

B<Additional Considerations about Request Headers>

If both of the C<If-Match> and C<If-Unmodified-Since> headers are
present in the request as follows: C<If-Match> condition evaluates to
C<true>, and; C<If-Unmodified-Since> condition evaluates to C<false>;
then, S3 returns 200 OK and the data requested.

If both of the C<If-None-Match> and C<If-Modified-Since> headers are
present in the request as follows:C< If-None-Match> condition evaluates
to C<false>, and; C<If-Modified-Since> condition evaluates to C<true>;
then, S3 returns 304 Not Modified response code.

For more information about conditional requests, see RFC 7232
(https://tools.ietf.org/html/rfc7232).

The following operations are related to C<GetObject>:

=over

=item *

ListBuckets

=item *

GetObjectAcl

=back



=head2 GetObjectAcl

=over

=item Bucket => Str

=item Key => Str

=item [RequestPayer => Str]

=item [VersionId => Str]


=back

Each argument is described in detail in: L<Paws::S3::GetObjectAcl>

Returns: a L<Paws::S3::GetObjectAclOutput> instance

Returns the access control list (ACL) of an object. To use this
operation, you must have READ_ACP access to the object.

B<Versioning>

By default, GET returns ACL information about the current version of an
object. To return ACL information about a different version, use the
versionId subresource.

The following operations are related to C<GetObjectAcl>:

=over

=item *

GetObject

=item *

DeleteObject

=item *

PutObject

=back



=head2 GetObjectLegalHold

=over

=item Bucket => Str

=item Key => Str

=item [RequestPayer => Str]

=item [VersionId => Str]


=back

Each argument is described in detail in: L<Paws::S3::GetObjectLegalHold>

Returns: a L<Paws::S3::GetObjectLegalHoldOutput> instance

Gets an object's current Legal Hold status. For more information, see
Locking Objects
(https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html).


=head2 GetObjectLockConfiguration

=over

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3::GetObjectLockConfiguration>

Returns: a L<Paws::S3::GetObjectLockConfigurationOutput> instance

Gets the Object Lock configuration for a bucket. The rule specified in
the Object Lock configuration will be applied by default to every new
object placed in the specified bucket. For more information, see
Locking Objects
(https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html).


=head2 GetObjectRetention

=over

=item Bucket => Str

=item Key => Str

=item [RequestPayer => Str]

=item [VersionId => Str]


=back

Each argument is described in detail in: L<Paws::S3::GetObjectRetention>

Returns: a L<Paws::S3::GetObjectRetentionOutput> instance

Retrieves an object's retention settings. For more information, see
Locking Objects
(https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html).


=head2 GetObjectTagging

=over

=item Bucket => Str

=item Key => Str

=item [VersionId => Str]


=back

Each argument is described in detail in: L<Paws::S3::GetObjectTagging>

Returns: a L<Paws::S3::GetObjectTaggingOutput> instance

Returns the tag-set of an object. You send the GET request against the
tagging subresource associated with the object.

To use this operation, you must have permission to perform the
C<s3:GetObjectTagging> action. By default, the GET operation returns
information about current version of an object. For a versioned bucket,
you can have multiple versions of an object in your bucket. To retrieve
tags of any other version, use the versionId query parameter. You also
need permission for the C<s3:GetObjectVersionTagging> action.

By default, the bucket owner has this permission and can grant this
permission to others.

For information about the Amazon S3 object tagging feature, see Object
Tagging
(https://docs.aws.amazon.com/AmazonS3/latest/dev/object-tagging.html).

The following operation is related to C<GetObjectTagging>:

=over

=item *

PutObjectTagging

=back



=head2 GetObjectTorrent

=over

=item Bucket => Str

=item Key => Str

=item [RequestPayer => Str]


=back

Each argument is described in detail in: L<Paws::S3::GetObjectTorrent>

Returns: a L<Paws::S3::GetObjectTorrentOutput> instance

Return torrent files from a bucket. BitTorrent can save you bandwidth
when you're distributing large files. For more information about
BitTorrent, see Amazon S3 Torrent
(https://docs.aws.amazon.com/AmazonS3/latest/dev/S3Torrent.html).

You can get torrent only for objects that are less than 5 GB in size
and that are not encrypted using server-side encryption with
customer-provided encryption key.

To use GET, you must have READ access to the object.

The following operation is related to C<GetObjectTorrent>:

=over

=item *

GetObject

=back



=head2 GetPublicAccessBlock

=over

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3::GetPublicAccessBlock>

Returns: a L<Paws::S3::GetPublicAccessBlockOutput> instance

Retrieves the C<PublicAccessBlock> configuration for an Amazon S3
bucket. In order to use this operation, you must have the
C<s3:GetBucketPublicAccessBlock> permission. For more information about
Amazon S3 permissions, see Specifying Permissions in a Policy
(https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html).

When Amazon S3 evaluates the C<PublicAccessBlock> configuration for a
bucket or an object, it checks the C<PublicAccessBlock> configuration
for both the bucket (or the bucket that contains the object) and the
bucket owner's account. If the C<PublicAccessBlock> settings are
different between the bucket and the account, Amazon S3 uses the most
restrictive combination of the bucket-level and account-level settings.

For more information about when Amazon S3 considers a bucket or an
object public, see The Meaning of "Public"
(https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status).

The following operations are related to C<GetPublicAccessBlock>:

=over

=item *

Using Amazon S3 Block Public Access
(https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html)

=item *

PutPublicAccessBlock

=item *

GetPublicAccessBlock

=item *

DeletePublicAccessBlock

=back



=head2 HeadBucket

=over

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3::HeadBucket>

Returns: nothing

This operation is useful to determine if a bucket exists and you have
permission to access it. The operation returns a C<200 OK> if the
bucket exists and you have permission to access it. Otherwise, the
operation might return responses such as C<404 Not Found> and C<403
Forbidden>.

To use this operation, you must have permissions to perform the
C<s3:ListBucket> action. The bucket owner has this permission by
default and can grant this permission to others. For more information
about permissions, see Permissions Related to Bucket Subresource
Operations
(https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and Managing Access Permissions to Your Amazon S3 Resources
(https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html).


=head2 HeadObject

=over

=item Bucket => Str

=item Key => Str

=item [IfMatch => Str]

=item [IfModifiedSince => Str]

=item [IfNoneMatch => Str]

=item [IfUnmodifiedSince => Str]

=item [PartNumber => Int]

=item [Range => Str]

=item [RequestPayer => Str]

=item [SSECustomerAlgorithm => Str]

=item [SSECustomerKey => Str]

=item [SSECustomerKeyMD5 => Str]

=item [VersionId => Str]


=back

Each argument is described in detail in: L<Paws::S3::HeadObject>

Returns: a L<Paws::S3::HeadObjectOutput> instance

The HEAD operation retrieves metadata from an object without returning
the object itself. This operation is useful if you're only interested
in an object's metadata. To use HEAD, you must have READ access to the
object.

A C<HEAD> request has the same options as a C<GET> operation on an
object. The response is identical to the C<GET> response except that
there is no response body.

If you encrypt an object by using server-side encryption with
customer-provided encryption keys (SSE-C) when you store the object in
Amazon S3, then when you retrieve the metadata from the object, you
must use the following headers:

=over

=item *

x-amz-server-side-encryption-customer-algorithm

=item *

x-amz-server-side-encryption-customer-key

=item *

x-amz-server-side-encryption-customer-key-MD5

=back

For more information about SSE-C, see Server-Side Encryption (Using
Customer-Provided Encryption Keys)
(https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html).

Encryption request headers, like C<x-amz-server-side-encryption>,
should not be sent for GET requests if your object uses server-side
encryption with CMKs stored in AWS KMS (SSE-KMS) or server-side
encryption with Amazon S3E<ndash>managed encryption keys (SSE-S3). If
your object does use these types of keys, youE<rsquo>ll get an HTTP 400
BadRequest error.

Request headers are limited to 8 KB in size. For more information, see
Common Request Headers
(https://docs.aws.amazon.com/AmazonS3/latest/API/RESTCommonRequestHeaders.html).

Consider the following when using request headers:

=over

=item *

Consideration 1 E<ndash> If both of the C<If-Match> and
C<If-Unmodified-Since> headers are present in the request as follows:

=over

=item *

C<If-Match> condition evaluates to C<true>, and;

=item *

C<If-Unmodified-Since> condition evaluates to C<false>;

=back

Then Amazon S3 returns C<200 OK> and the data requested.

=item *

Consideration 2 E<ndash> If both of the C<If-None-Match> and
C<If-Modified-Since> headers are present in the request as follows:

=over

=item *

C<If-None-Match> condition evaluates to C<false>, and;

=item *

C<If-Modified-Since> condition evaluates to C<true>;

=back

Then Amazon S3 returns the C<304 Not Modified> response code.

=back

For more information about conditional requests, see RFC 7232
(https://tools.ietf.org/html/rfc7232).

B<Permissions>

You need the C<s3:GetObject> permission for this operation. For more
information, see Specifying Permissions in a Policy
(https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html).
If the object you request does not exist, the error Amazon S3 returns
depends on whether you also have the s3:ListBucket permission.

=over

=item *

If you have the C<s3:ListBucket> permission on the bucket, Amazon S3
will return a HTTP status code 404 ("no such key") error.

=item *

If you donE<rsquo>t have the C<s3:ListBucket> permission, Amazon S3
will return a HTTP status code 403 ("access denied") error.

=back

The following operation is related to C<HeadObject>:

=over

=item *

GetObject

=back



=head2 ListBucketAnalyticsConfigurations

=over

=item Bucket => Str

=item [ContinuationToken => Str]


=back

Each argument is described in detail in: L<Paws::S3::ListBucketAnalyticsConfigurations>

Returns: a L<Paws::S3::ListBucketAnalyticsConfigurationsOutput> instance

Lists the analytics configurations for the bucket. You can have up to
1,000 analytics configurations per bucket.

This operation supports list pagination and does not return more than
100 configurations at a time. You should always check the
C<IsTruncated> element in the response. If there are no more
configurations to list, C<IsTruncated> is set to false. If there are
more configurations to list, C<IsTruncated> is set to true, and there
will be a value in C<NextContinuationToken>. You use the
C<NextContinuationToken> value to continue the pagination of the list
by passing the value in continuation-token in the request to C<GET> the
next page.

To use this operation, you must have permissions to perform the
C<s3:GetAnalyticsConfiguration> action. The bucket owner has this
permission by default. The bucket owner can grant this permission to
others. For more information about permissions, see Permissions Related
to Bucket Subresource Operations
(https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and Managing Access Permissions to Your Amazon S3 Resources
(https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html).

For information about Amazon S3 analytics feature, see Amazon S3
Analytics E<ndash> Storage Class Analysis
(https://docs.aws.amazon.com/AmazonS3/latest/dev/analytics-storage-class.html).

The following operations are related to
C<ListBucketAnalyticsConfigurations>:

=over

=item *

GetBucketAnalyticsConfiguration

=item *

DeleteBucketAnalyticsConfiguration

=item *

PutBucketAnalyticsConfiguration

=back



=head2 ListBucketInventoryConfigurations

=over

=item Bucket => Str

=item [ContinuationToken => Str]


=back

Each argument is described in detail in: L<Paws::S3::ListBucketInventoryConfigurations>

Returns: a L<Paws::S3::ListBucketInventoryConfigurationsOutput> instance

Returns a list of inventory configurations for the bucket. You can have
up to 1,000 analytics configurations per bucket.

This operation supports list pagination and does not return more than
100 configurations at a time. Always check the C<IsTruncated> element
in the response. If there are no more configurations to list,
C<IsTruncated> is set to false. If there are more configurations to
list, C<IsTruncated> is set to true, and there is a value in
C<NextContinuationToken>. You use the C<NextContinuationToken> value to
continue the pagination of the list by passing the value in
continuation-token in the request to C<GET> the next page.

To use this operation, you must have permissions to perform the
C<s3:GetInventoryConfiguration> action. The bucket owner has this
permission by default. The bucket owner can grant this permission to
others. For more information about permissions, see Permissions Related
to Bucket Subresource Operations
(https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and Managing Access Permissions to Your Amazon S3 Resources
(https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html).

For information about the Amazon S3 inventory feature, see Amazon S3
Inventory
(https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-inventory.html)

The following operations are related to
C<ListBucketInventoryConfigurations>:

=over

=item *

GetBucketInventoryConfiguration

=item *

DeleteBucketInventoryConfiguration

=item *

PutBucketInventoryConfiguration

=back



=head2 ListBucketMetricsConfigurations

=over

=item Bucket => Str

=item [ContinuationToken => Str]


=back

Each argument is described in detail in: L<Paws::S3::ListBucketMetricsConfigurations>

Returns: a L<Paws::S3::ListBucketMetricsConfigurationsOutput> instance

Lists the metrics configurations for the bucket. The metrics
configurations are only for the request metrics of the bucket and do
not provide information on daily storage metrics. You can have up to
1,000 configurations per bucket.

This operation supports list pagination and does not return more than
100 configurations at a time. Always check the C<IsTruncated> element
in the response. If there are no more configurations to list,
C<IsTruncated> is set to false. If there are more configurations to
list, C<IsTruncated> is set to true, and there is a value in
C<NextContinuationToken>. You use the C<NextContinuationToken> value to
continue the pagination of the list by passing the value in
C<continuation-token> in the request to C<GET> the next page.

To use this operation, you must have permissions to perform the
C<s3:GetMetricsConfiguration> action. The bucket owner has this
permission by default. The bucket owner can grant this permission to
others. For more information about permissions, see Permissions Related
to Bucket Subresource Operations
(https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and Managing Access Permissions to Your Amazon S3 Resources
(https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html).

For more information about metrics configurations and CloudWatch
request metrics, see Monitoring Metrics with Amazon CloudWatch
(https://docs.aws.amazon.com/AmazonS3/latest/dev/cloudwatch-monitoring.html).

The following operations are related to
C<ListBucketMetricsConfigurations>:

=over

=item *

PutBucketMetricsConfiguration

=item *

GetBucketMetricsConfiguration

=item *

DeleteBucketMetricsConfiguration

=back



=head2 ListBuckets

=over

=item  => 


=back

Each argument is described in detail in: L<Paws::S3::ListBuckets>

Returns: a L<Paws::S3::ListBucketsOutput> instance

Returns a list of all buckets owned by the authenticated sender of the
request.


=head2 ListMultipartUploads

=over

=item Bucket => Str

=item [Delimiter => Str]

=item [EncodingType => Str]

=item [KeyMarker => Str]

=item [MaxUploads => Int]

=item [Prefix => Str]

=item [UploadIdMarker => Str]


=back

Each argument is described in detail in: L<Paws::S3::ListMultipartUploads>

Returns: a L<Paws::S3::ListMultipartUploadsOutput> instance

This operation lists in-progress multipart uploads. An in-progress
multipart upload is a multipart upload that has been initiated using
the Initiate Multipart Upload request, but has not yet been completed
or aborted.

This operation returns at most 1,000 multipart uploads in the response.
1,000 multipart uploads is the maximum number of uploads a response can
include, which is also the default value. You can further limit the
number of uploads in a response by specifying the C<max-uploads>
parameter in the response. If additional multipart uploads satisfy the
list criteria, the response will contain an C<IsTruncated> element with
the value true. To list the additional multipart uploads, use the
C<key-marker> and C<upload-id-marker> request parameters.

In the response, the uploads are sorted by key. If your application has
initiated more than one multipart upload using the same object key,
then uploads in the response are first sorted by key. Additionally,
uploads are sorted in ascending order within each key by the upload
initiation time.

For more information on multipart uploads, see Uploading Objects Using
Multipart Upload
(https://docs.aws.amazon.com/AmazonS3/latest/dev/uploadobjusingmpu.html).

For information on permissions required to use the multipart upload
API, see Multipart Upload API and Permissions
(https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuAndPermissions.html).

The following operations are related to C<ListMultipartUploads>:

=over

=item *

CreateMultipartUpload

=item *

UploadPart

=item *

CompleteMultipartUpload

=item *

ListParts

=item *

AbortMultipartUpload

=back



=head2 ListObjects

=over

=item Bucket => Str

=item [Delimiter => Str]

=item [EncodingType => Str]

=item [Marker => Str]

=item [MaxKeys => Int]

=item [Prefix => Str]

=item [RequestPayer => Str]


=back

Each argument is described in detail in: L<Paws::S3::ListObjects>

Returns: a L<Paws::S3::ListObjectsOutput> instance

Returns some or all (up to 1000) of the objects in a bucket. You can
use the request parameters as selection criteria to return a subset of
the objects in a bucket. A 200 OK response can contain valid or invalid
XML. Be sure to design your application to parse the contents of the
response and handle it appropriately.

This API has been revised. We recommend that you use the newer version,
ListObjectsV2, when developing applications. For backward
compatibility, Amazon S3 continues to support C<ListObjects>.

The following operations are related to C<ListObjects>:

=over

=item *

ListObjectsV2

=item *

GetObject

=item *

PutObject

=item *

CreateBucket

=item *

ListBuckets

=back



=head2 ListObjectsV2

=over

=item Bucket => Str

=item [ContinuationToken => Str]

=item [Delimiter => Str]

=item [EncodingType => Str]

=item [FetchOwner => Bool]

=item [MaxKeys => Int]

=item [Prefix => Str]

=item [RequestPayer => Str]

=item [StartAfter => Str]


=back

Each argument is described in detail in: L<Paws::S3::ListObjectsV2>

Returns: a L<Paws::S3::ListObjectsV2Output> instance

Returns some or all (up to 1,000) of the objects in a bucket. You can
use the request parameters as selection criteria to return a subset of
the objects in a bucket. A C<200 OK> response can contain valid or
invalid XML. Make sure to design your application to parse the contents
of the response and handle it appropriately.

To use thisoperation, you must have READ access to the bucket.

To use this operation in an AWS Identity and Access Management (IAM)
policy, you must have permissions to perform the C<s3:ListBucket>
action. The bucket owner has this permission by default and can grant
this permission to others. For more information about permissions, see
Permissions Related to Bucket Subresource Operations
(https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and Managing Access Permissions to Your Amazon S3 Resources
(https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html).

This section describes the latest revision of the API. We recommend
that you use this revised API for application development. For backward
compatibility, Amazon S3 continues to support the prior version of this
API, ListObjects.

To get a list of your buckets, see ListBuckets.

The following operations are related to C<ListObjectsV2>:

=over

=item *

GetObject

=item *

PutObject

=item *

CreateBucket

=back



=head2 ListObjectVersions

=over

=item Bucket => Str

=item [Delimiter => Str]

=item [EncodingType => Str]

=item [KeyMarker => Str]

=item [MaxKeys => Int]

=item [Prefix => Str]

=item [VersionIdMarker => Str]


=back

Each argument is described in detail in: L<Paws::S3::ListObjectVersions>

Returns: a L<Paws::S3::ListObjectVersionsOutput> instance

Returns metadata about all of the versions of objects in a bucket. You
can also use request parameters as selection criteria to return
metadata about a subset of all the object versions.

A 200 OK response can contain valid or invalid XML. Make sure to design
your application to parse the contents of the response and handle it
appropriately.

To use this operation, you must have READ access to the bucket.

The following operations are related to C<ListObjectVersions>:

=over

=item *

ListObjectsV2

=item *

GetObject

=item *

PutObject

=item *

DeleteObject

=back



=head2 ListParts

=over

=item Bucket => Str

=item Key => Str

=item UploadId => Str

=item [MaxParts => Int]

=item [PartNumberMarker => Int]

=item [RequestPayer => Str]


=back

Each argument is described in detail in: L<Paws::S3::ListParts>

Returns: a L<Paws::S3::ListPartsOutput> instance

Lists the parts that have been uploaded for a specific multipart
upload. This operation must include the upload ID, which you obtain by
sending the initiate multipart upload request (see
CreateMultipartUpload). This request returns a maximum of 1,000
uploaded parts. The default number of parts returned is 1,000 parts.
You can restrict the number of parts returned by specifying the
C<max-parts> request parameter. If your multipart upload consists of
more than 1,000 parts, the response returns an C<IsTruncated> field
with the value of true, and a C<NextPartNumberMarker> element. In
subsequent C<ListParts> requests you can include the part-number-marker
query string parameter and set its value to the C<NextPartNumberMarker>
field value from the previous response.

For more information on multipart uploads, see Uploading Objects Using
Multipart Upload
(https://docs.aws.amazon.com/AmazonS3/latest/dev/uploadobjusingmpu.html).

For information on permissions required to use the multipart upload
API, see Multipart Upload API and Permissions
(https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuAndPermissions.html).

The following operations are related to C<ListParts>:

=over

=item *

CreateMultipartUpload

=item *

UploadPart

=item *

CompleteMultipartUpload

=item *

AbortMultipartUpload

=item *

ListMultipartUploads

=back



=head2 PutBucketAccelerateConfiguration

=over

=item AccelerateConfiguration => S3_AccelerateConfiguration

=item Bucket => Str

=item [ContentLength => Int]


=back

Each argument is described in detail in: L<Paws::S3::PutBucketAccelerateConfiguration>

Returns: nothing

Sets the accelerate configuration of an existing bucket. Amazon S3
Transfer Acceleration is a bucket-level feature that enables you to
perform faster data transfers to Amazon S3.

To use this operation, you must have permission to perform the
s3:PutAccelerateConfiguration action. The bucket owner has this
permission by default. The bucket owner can grant this permission to
others. For more information about permissions, see Permissions Related
to Bucket Subresource Operations
(https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and Managing Access Permissions to Your Amazon S3 Resources
(https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html).

The Transfer Acceleration state of a bucket can be set to one of the
following two values:

=over

=item *

Enabled E<ndash> Enables accelerated data transfers to the bucket.

=item *

Suspended E<ndash> Disables accelerated data transfers to the bucket.

=back

The GetBucketAccelerateConfiguration operation returns the transfer
acceleration state of a bucket.

After setting the Transfer Acceleration state of a bucket to Enabled,
it might take up to thirty minutes before the data transfer rates to
the bucket increase.

The name of the bucket used for Transfer Acceleration must be
DNS-compliant and must not contain periods (".").

For more information about transfer acceleration, see Transfer
Acceleration
(https://docs.aws.amazon.com/AmazonS3/latest/dev/transfer-acceleration.html).

The following operations are related to
C<PutBucketAccelerateConfiguration>:

=over

=item *

GetBucketAccelerateConfiguration

=item *

CreateBucket

=back



=head2 PutBucketAcl

=over

=item Bucket => Str

=item [AccessControlPolicy => S3_AccessControlPolicy]

=item [ACL => Str]

=item [ContentLength => Int]

=item [ContentMD5 => Str]

=item [GrantFullControl => Str]

=item [GrantRead => Str]

=item [GrantReadACP => Str]

=item [GrantWrite => Str]

=item [GrantWriteACP => Str]


=back

Each argument is described in detail in: L<Paws::S3::PutBucketAcl>

Returns: nothing

Sets the permissions on an existing bucket using access control lists
(ACL). For more information, see Using ACLs
(https://docs.aws.amazon.com/AmazonS3/latest/dev/S3_ACLs_UsingACLs.html).
To set the ACL of a bucket, you must have WRITE_ACP permission.

You can use one of the following two ways to set a bucket's
permissions:

=over

=item *

Specify the ACL in the request body

=item *

Specify permissions using request headers

=back

You cannot specify access permission using both the body and the
request headers.

Depending on your application needs, you may choose to set the ACL on a
bucket using either the request body or the headers. For example, if
you have an existing application that updates a bucket ACL using the
request body, then you can continue to use that approach.

B<Access Permissions>

You can set access permissions using one of the following methods:

=over

=item *

Specify a canned ACL with the C<x-amz-acl> request header. Amazon S3
supports a set of predefined ACLs, known as canned ACLs. Each canned
ACL has a predefined set of grantees and permissions. Specify the
canned ACL name as the value of x-amz-acl. If you use this header, you
cannot use other access control specific headers in your request. For
more information, see Canned ACL
(https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#CannedACL).

=item *

Specify access permissions explicitly with the C<x-amz-grant-read>,
C<x-amz-grant-read-acp>, C<x-amz-grant-write-acp>, and
C<x-amz-grant-full-control> headers. When using these headers you
specify explicit access permissions and grantees (AWS accounts or a
Amazon S3 groups) who will receive the permission. If you use these ACL
specific headers, you cannot use x-amz-acl header to set a canned ACL.
These parameters map to the set of permissions that Amazon S3 supports
in an ACL. For more information, see Access Control List (ACL) Overview
(https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html).

You specify each grantee as a type=value pair, where the type is one of
the following:

=over

=item *

emailAddress E<ndash> if the value specified is the email address of an
AWS account

=item *

id E<ndash> if the value specified is the canonical user ID of an AWS
account

=item *

uri E<ndash> if you are granting permissions to a predefined group

=back

For example, the following x-amz-grant-write header grants create,
overwrite, and delete objects permission to LogDelivery group
predefined by Amazon S3 and two AWS accounts identified by their email
addresses.

C<x-amz-grant-write:
uri="http://acs.amazonaws.com/groups/s3/LogDelivery",
emailAddress="xyz@amazon.com", emailAddress="abc@amazon.com">

=back

You can use either a canned ACL or specify access permissions
explicitly. You cannot do both.

B<Grantee Values>

You can specify the person (grantee) to whom you're assigning access
rights (using request elements) in the following ways:

=over

=item *

By Email address:

C<E<lt>Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xsi:type="AmazonCustomerByEmail"E<gt>E<lt>EmailAddressE<gt>E<lt>E<gt>Grantees@email.comE<lt>E<gt>E<lt>/EmailAddressE<gt>lt;/GranteeE<gt>>

The grantee is resolved to the CanonicalUser and, in a response to a
GET Object acl request, appears as the CanonicalUser.

=item *

By the person's ID:

C<E<lt>Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xsi:type="CanonicalUser"E<gt>E<lt>IDE<gt>E<lt>E<gt>IDE<lt>E<gt>E<lt>/IDE<gt>E<lt>DisplayNameE<gt>E<lt>E<gt>GranteesEmailE<lt>E<gt>E<lt>/DisplayNameE<gt>
E<lt>/GranteeE<gt>>

DisplayName is optional and ignored in the request

=item *

By URI:

C<E<lt>Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xsi:type="Group"E<gt>E<lt>URIE<gt>E<lt>E<gt>http://acs.amazonaws.com/groups/global/AuthenticatedUsersE<lt>E<gt>E<lt>/URIE<gt>E<lt>/GranteeE<gt>>

=back

B<Related Resources>

=over

=item *

CreateBucket

=item *

DeleteBucket

=item *

GetObjectAcl

=back



=head2 PutBucketAnalyticsConfiguration

=over

=item AnalyticsConfiguration => S3_AnalyticsConfiguration

=item Bucket => Str

=item Id => Str

=item [ContentLength => Int]


=back

Each argument is described in detail in: L<Paws::S3::PutBucketAnalyticsConfiguration>

Returns: nothing

Sets an analytics configuration for the bucket (specified by the
analytics configuration ID). You can have up to 1,000 analytics
configurations per bucket.

You can choose to have storage class analysis export analysis reports
to a comma-separated values (CSV) flat file, see the DataExport request
element. Reports are updated daily and are based on the object filters
you configure. When selecting data export you specify a destination
bucket and optional destination prefix where the file is written. You
can export the data to a destination bucket in a different account.
However, the destination bucket must be in the same region as the
bucket that you are making the PUT analytics configuration to. For more
information, see Amazon S3 Analytics E<ndash> Storage Class Analysis
(https://docs.aws.amazon.com/AmazonS3/latest/dev/analytics-storage-class.html).

You must create a bucket policy on the destination bucket where the
exported file is written to grant permissions to Amazon S3 to write
objects to the bucket. For an example policy, see Granting Permissions
for Amazon S3 Inventory and Storage Class Analysis
(https://docs.aws.amazon.com/AmazonS3/latest/dev/example-bucket-policies.html#example-bucket-policies-use-case-9).

To use this operation, you must have permissions to perform the
C<s3:PutAnalyticsConfiguration> action. The bucket owner has this
permission by default. The bucket owner can grant this permission to
others. For more information about permissions, see Permissions Related
to Bucket Subresource Operations
(https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and Managing Access Permissions to Your Amazon S3 Resources
(https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html).

B<Special Errors>

=over

=item *

=over

=item *

I<HTTP Error: HTTP 400 Bad Request>

=item *

I<Code: InvalidArgument>

=item *

I<Cause: Invalid argument.>

=back

=item *

=over

=item *

I<HTTP Error: HTTP 400 Bad Request>

=item *

I<Code: TooManyConfigurations>

=item *

I<Cause: You are attempting to create a new configuration but have
already reached the 1,000-configuration limit.>

=back

=item *

=over

=item *

I<HTTP Error: HTTP 403 Forbidden>

=item *

I<Code: AccessDenied>

=item *

I<Cause: You are not the owner of the specified bucket, or you do not
have the s3:PutAnalyticsConfiguration bucket permission to set the
configuration on the bucket.>

=back

=back

B<Related Resources>

=over

=item *

=item *

=item *

=back



=head2 PutBucketCors

=over

=item Bucket => Str

=item CORSConfiguration => S3_CORSConfiguration

=item [ContentLength => Int]

=item [ContentMD5 => Str]


=back

Each argument is described in detail in: L<Paws::S3::PutBucketCors>

Returns: nothing

Sets the C<cors> configuration for your bucket. If the configuration
exists, Amazon S3 replaces it.

To use this operation, you must be allowed to perform the
C<s3:PutBucketCORS> action. By default, the bucket owner has this
permission and can grant it to others.

You set this configuration on a bucket so that the bucket can service
cross-origin requests. For example, you might want to enable a request
whose origin is C<http://www.example.com> to access your Amazon S3
bucket at C<my.example.bucket.com> by using the browser's
C<XMLHttpRequest> capability.

To enable cross-origin resource sharing (CORS) on a bucket, you add the
C<cors> subresource to the bucket. The C<cors> subresource is an XML
document in which you configure rules that identify origins and the
HTTP methods that can be executed on your bucket. The document is
limited to 64 KB in size.

When Amazon S3 receives a cross-origin request (or a pre-flight OPTIONS
request) against a bucket, it evaluates the C<cors> configuration on
the bucket and uses the first C<CORSRule> rule that matches the
incoming browser request to enable a cross-origin request. For a rule
to match, the following conditions must be met:

=over

=item *

The request's C<Origin> header must match C<AllowedOrigin> elements.

=item *

The request method (for example, GET, PUT, HEAD and so on) or the
C<Access-Control-Request-Method> header in case of a pre-flight
C<OPTIONS> request must be one of the C<AllowedMethod> elements.

=item *

Every header specified in the C<Access-Control-Request-Headers> request
header of a pre-flight request must match an C<AllowedHeader> element.

=back

For more information about CORS, go to Enabling Cross-Origin Resource
Sharing (https://docs.aws.amazon.com/AmazonS3/latest/dev/cors.html) in
the I<Amazon Simple Storage Service Developer Guide>.

B<Related Resources>

=over

=item *

GetBucketCors

=item *

DeleteBucketCors

=item *

RESTOPTIONSobject

=back



=head2 PutBucketEncryption

=over

=item Bucket => Str

=item ServerSideEncryptionConfiguration => S3_ServerSideEncryptionConfiguration

=item [ContentLength => Int]

=item [ContentMD5 => Str]


=back

Each argument is described in detail in: L<Paws::S3::PutBucketEncryption>

Returns: nothing

This implementation of the C<PUT> operation uses the C<encryption>
subresource to set the default encryption state of an existing bucket.

This implementation of the C<PUT> operation sets default encryption for
a buckets using server-side encryption with Amazon S3-managed keys
SSE-S3 or AWS KMS customer master keys (CMKs) (SSE-KMS) bucket. For
information about the Amazon S3 default encryption feature, see As a
security precaution, the root user of the AWS account that owns a
bucket can always use this operation, even if the policy explicitly
denies the root user the ability to perform this action. in the
I<Amazon Simple Storage Service Developer Guide>.

This operation requires AWS Signature Version 4. For more information,
see Authenticating Requests (AWS Signature Version 4).

To use this operation, you must have permissions to perform the
C<s3:PutEncryptionConfiguration> action. The bucket owner has this
permission by default. The bucket owner can grant this permission to
others. For more information about permissions, see Permissions Related
to Bucket Subresource Operations
(https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and Managing Access Permissions to Your Amazon S3 Resources
(https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html)
in the Amazon Simple Storage Service Developer Guide.

B<Related Resources>

=over

=item *

GetBucketEncryption

=item *

DeleteBucketEncryption

=back



=head2 PutBucketInventoryConfiguration

=over

=item Bucket => Str

=item Id => Str

=item InventoryConfiguration => S3_InventoryConfiguration

=item [ContentLength => Int]


=back

Each argument is described in detail in: L<Paws::S3::PutBucketInventoryConfiguration>

Returns: nothing

This implementation of the C<PUT> operation adds an inventory
configuration (identified by the inventory ID) to the bucket. You can
have up to 1,000 inventory configurations per bucket.

Amazon S3 inventory generates inventories of the objects in the bucket
on a daily or weekly basis, and the results are published to a flat
file. The bucket that is inventoried is called the I<source> bucket,
and the bucket where the inventory flat file is stored is called the
I<destination> bucket. The I<destination> bucket must be in the same
AWS Region as the I<source> bucket.

When you configure an inventory for a I<source> bucket, you specify the
I<destination> bucket where you want the inventory to be stored, and
whether to generate the inventory daily or weekly. You can also
configure what object metadata to include and whether to inventory all
object versions or only current versions. For more information, see
Amazon S3 Inventory
(https://docs.aws.amazon.com/AmazonS3/latest/dev//storage-inventory.html)
in the Amazon Simple Storage Service Developer Guide.

You must create a bucket policy on the I<destination> bucket to grant
permissions to Amazon S3 to write objects to the bucket in the defined
location. For an example policy, see Granting Permissions for Amazon S3
Inventory and Storage Class Analysis.
(https://docs.aws.amazon.com/AmazonS3/latest/dev/example-bucket-policies.html#example-bucket-policies-use-case-9)

To use this operation, you must have permissions to perform the
C<s3:PutInventoryConfiguration> action. The bucket owner has this
permission by default and can grant this permission to others. For more
information about permissions, see Permissions Related to Bucket
Subresource Operations
(https://docs.aws.amazon.com/AmazonS3/latest/dev//using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and Managing Access Permissions to Your Amazon S3 Resources
(https://docs.aws.amazon.com/AmazonS3/latest/dev//s3-access-control.html)
in the Amazon Simple Storage Service Developer Guide.

B<Special Errors>

=over

=item *

B<HTTP 400 Bad Request Error>

=over

=item *

I<Code:> InvalidArgument

=item *

I<Cause:> Invalid Argument

=back

=item *

B<HTTP 400 Bad Request Error>

=over

=item *

I<Code:> TooManyConfigurations

=item *

I<Cause:> You are attempting to create a new configuration but have
already reached the 1,000-configuration limit.

=back

=item *

B<HTTP 403 Forbidden Error>

=over

=item *

I<Code:> AccessDenied

=item *

I<Cause:> You are not the owner of the specified bucket, or you do not
have the C<s3:PutInventoryConfiguration> bucket permission to set the
configuration on the bucket

=back

=back

B<Related Resources>

=over

=item *

GetBucketInventoryConfiguration

=item *

DeleteBucketInventoryConfiguration

=item *

ListBucketInventoryConfigurations

=back



=head2 PutBucketLifecycle

=over

=item Bucket => Str

=item [ContentLength => Int]

=item [ContentMD5 => Str]

=item [LifecycleConfiguration => S3_LifecycleConfiguration]


=back

Each argument is described in detail in: L<Paws::S3::PutBucketLifecycle>

Returns: nothing

For an updated version of this API, see
PutBucketLifecycleConfiguration. This version has been deprecated.
Existing lifecycle configurations will work. For new lifecycle
configurations, use the updated API.

Creates a new lifecycle configuration for the bucket or replaces an
existing lifecycle configuration. For information about lifecycle
configuration, see Object Lifecycle Management
(https://docs.aws.amazon.com/AmazonS3/latest/dev//object-lifecycle-mgmt.html)
in the I<Amazon Simple Storage Service Developer Guide>.

By default, all Amazon S3 resources, including buckets, objects, and
related subresources (for example, lifecycle configuration and website
configuration) are private. Only the resource owner, the AWS account
that created the resource, can access it. The resource owner can
optionally grant access permissions to others by writing an access
policy. For this operation, users must get the
C<s3:PutLifecycleConfiguration> permission.

You can also explicitly deny permissions. Explicit denial also
supersedes any other permissions. If you want to prevent users or
accounts from removing or deleting objects from your bucket, you must
deny them permissions for the following actions:

=over

=item *

C<s3:DeleteObject>

=item *

C<s3:DeleteObjectVersion>

=item *

C<s3:PutLifecycleConfiguration>

=back

For more information about permissions, see Managing Access Permissions
to your Amazon S3 Resources
(https://docs.aws.amazon.com/AmazonS3/latest/dev//s3-access-control.html)
in the I<Amazon Simple Storage Service Developer Guide>.

For more examples of transitioning objects to storage classes such as
STANDARD_IA or ONEZONE_IA, see Examples of Lifecycle Configuration
(https://docs.aws.amazon.com/AmazonS3/latest/dev//intro-lifecycle-rules.html#lifecycle-configuration-examples).

B<Related Resources>

=over

=item *

GetBucketLifecycle(Deprecated)

=item *

GetBucketLifecycleConfiguration

=item *

=item *

By default, a resource ownerE<mdash>in this case, a bucket owner, which
is the AWS account that created the bucketE<mdash>can perform any of
the operations. A resource owner can also grant others permission to
perform the operation. For more information, see the following topics
in the Amazon Simple Storage Service Developer Guide:

=over

=item *

Specifying Permissions in a Policy
(https://docs.aws.amazon.com/AmazonS3/latest/dev//using-with-s3-actions.html)

=item *

Managing Access Permissions to your Amazon S3 Resources
(https://docs.aws.amazon.com/AmazonS3/latest/dev//s3-access-control.html)

=back

=back



=head2 PutBucketLifecycleConfiguration

=over

=item Bucket => Str

=item [LifecycleConfiguration => S3_BucketLifecycleConfiguration]


=back

Each argument is described in detail in: L<Paws::S3::PutBucketLifecycleConfiguration>

Returns: nothing

Creates a new lifecycle configuration for the bucket or replaces an
existing lifecycle configuration. For information about lifecycle
configuration, see Managing Access Permissions to Your Amazon S3
Resources
(https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html).

Bucket lifecycle configuration now supports specifying a lifecycle rule
using an object key name prefix, one or more object tags, or a
combination of both. Accordingly, this section describes the latest
API. The previous version of the API supported filtering based only on
an object key name prefix, which is supported for backward
compatibility. For the related API description, see PutBucketLifecycle.

B<Rules>

You specify the lifecycle configuration in your request body. The
lifecycle configuration is specified as XML consisting of one or more
rules. Each rule consists of the following:

=over

=item *

Filter identifying a subset of objects to which the rule applies. The
filter can be based on a key name prefix, object tags, or a combination
of both.

=item *

Status whether the rule is in effect.

=item *

One or more lifecycle transition and expiration actions that you want
Amazon S3 to perform on the objects identified by the filter. If the
state of your bucket is versioning-enabled or versioning-suspended, you
can have many versions of the same object (one current version and zero
or more noncurrent versions). Amazon S3 provides predefined actions
that you can specify for current and noncurrent object versions.

=back

For more information, see Object Lifecycle Management
(https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html)
and Lifecycle Configuration Elements
(https://docs.aws.amazon.com/AmazonS3/latest/dev/intro-lifecycle-rules.html).

B<Permissions>

By default, all Amazon S3 resources are private, including buckets,
objects, and related subresources (for example, lifecycle configuration
and website configuration). Only the resource owner (that is, the AWS
account that created it) can access the resource. The resource owner
can optionally grant access permissions to others by writing an access
policy. For this operation, a user must get the
s3:PutLifecycleConfiguration permission.

You can also explicitly deny permissions. Explicit deny also supersedes
any other permissions. If you want to block users or accounts from
removing or deleting objects from your bucket, you must deny them
permissions for the following actions:

=over

=item *

s3:DeleteObject

=item *

s3:DeleteObjectVersion

=item *

s3:PutLifecycleConfiguration

=back

For more information about permissions, see Managing Access Permissions
to Your Amazon S3 Resources
(https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html).

The following are related to C<PutBucketLifecycleConfiguration>:

=over

=item *

Examples of Lifecycle Configuration
(https://docs.aws.amazon.com/AmazonS3/latest/dev/lifecycle-configuration-examples.html)

=item *

GetBucketLifecycleConfiguration

=item *

DeleteBucketLifecycle

=back



=head2 PutBucketLogging

=over

=item Bucket => Str

=item BucketLoggingStatus => S3_BucketLoggingStatus

=item [ContentLength => Int]

=item [ContentMD5 => Str]


=back

Each argument is described in detail in: L<Paws::S3::PutBucketLogging>

Returns: nothing

Set the logging parameters for a bucket and to specify permissions for
who can view and modify the logging parameters. All logs are saved to
buckets in the same AWS Region as the source bucket. To set the logging
status of a bucket, you must be the bucket owner.

The bucket owner is automatically granted FULL_CONTROL to all logs. You
use the Grantee request element to grant access to other people. The
Permissions request element specifies the kind of access the grantee
has to the logs.

B<Grantee Values>

You can specify the person (grantee) to whom you're assigning access
rights (using request elements) in the following ways:

=over

=item *

By the person's ID:

C<E<lt>Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xsi:type="CanonicalUser"E<gt>E<lt>IDE<gt>E<lt>E<gt>IDE<lt>E<gt>E<lt>/IDE<gt>E<lt>DisplayNameE<gt>E<lt>E<gt>GranteesEmailE<lt>E<gt>E<lt>/DisplayNameE<gt>
E<lt>/GranteeE<gt>>

DisplayName is optional and ignored in the request.

=item *

By Email address:

C<E<lt>Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xsi:type="AmazonCustomerByEmail"E<gt>E<lt>EmailAddressE<gt>E<lt>E<gt>Grantees@email.comE<lt>E<gt>E<lt>/EmailAddressE<gt>E<lt>/GranteeE<gt>>

The grantee is resolved to the CanonicalUser and, in a response to a
GET Object acl request, appears as the CanonicalUser.

=item *

By URI:

C<E<lt>Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xsi:type="Group"E<gt>E<lt>URIE<gt>E<lt>E<gt>http://acs.amazonaws.com/groups/global/AuthenticatedUsersE<lt>E<gt>E<lt>/URIE<gt>E<lt>/GranteeE<gt>>

=back

To enable logging, you use LoggingEnabled and its children request
elements. To disable logging, you use an empty BucketLoggingStatus
request element:

C<E<lt>BucketLoggingStatus
xmlns="http://doc.s3.amazonaws.com/2006-03-01" /E<gt>>

For more information about server access logging, see Server Access
Logging
(https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerLogs.html).

For more information about creating a bucket, see CreateBucket. For
more information about returning the logging status of a bucket, see
GetBucketLogging.

The following operations are related to C<PutBucketLogging>:

=over

=item *

PutObject

=item *

DeleteBucket

=item *

CreateBucket

=item *

GetBucketLogging

=back



=head2 PutBucketMetricsConfiguration

=over

=item Bucket => Str

=item Id => Str

=item MetricsConfiguration => S3_MetricsConfiguration

=item [ContentLength => Int]


=back

Each argument is described in detail in: L<Paws::S3::PutBucketMetricsConfiguration>

Returns: nothing

Sets a metrics configuration (specified by the metrics configuration
ID) for the bucket. You can have up to 1,000 metrics configurations per
bucket. If you're updating an existing metrics configuration, note that
this is a full replacement of the existing metrics configuration. If
you don't include the elements you want to keep, they are erased.

To use this operation, you must have permissions to perform the
s3:PutMetricsConfiguration action. The bucket owner has this permission
by default. The bucket owner can grant this permission to others. For
more information about permissions, see Permissions Related to Bucket
Subresource Operations
(https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and Managing Access Permissions to Your Amazon S3 Resources
(https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html).

For information about CloudWatch request metrics for Amazon S3, see
Monitoring Metrics with Amazon CloudWatch
(https://docs.aws.amazon.com/AmazonS3/latest/dev/cloudwatch-monitoring.html).

The following operations are related to
C<PutBucketMetricsConfiguration>:

=over

=item *

DeleteBucketMetricsConfiguration

=item *

PutBucketMetricsConfiguration

=item *

ListBucketMetricsConfigurations

=back

C<GetBucketLifecycle> has the following special error:

=over

=item *

Error code: C<TooManyConfigurations>

=over

=item *

Description:You are attempting to create a new configuration but have
already reached the 1,000-configuration limit.

=item *

HTTP Status Code: HTTP 400 Bad Request

=back

=back



=head2 PutBucketNotification

=over

=item Bucket => Str

=item NotificationConfiguration => S3_NotificationConfigurationDeprecated

=item [ContentLength => Int]

=item [ContentMD5 => Str]


=back

Each argument is described in detail in: L<Paws::S3::PutBucketNotification>

Returns: nothing

No longer used, see the PutBucketNotificationConfiguration operation.


=head2 PutBucketNotificationConfiguration

=over

=item Bucket => Str

=item NotificationConfiguration => S3_NotificationConfiguration


=back

Each argument is described in detail in: L<Paws::S3::PutBucketNotificationConfiguration>

Returns: nothing

Enables notifications of specified events for a bucket. For more
information about event notifications, see Configuring Event
Notifications
(https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html).

Using this API, you can replace an existing notification configuration.
The configuration is an XML file that defines the event types that you
want Amazon S3 to publish and the destination where you want Amazon S3
to publish an event notification when it detects an event of the
specified type.

By default, your bucket has no event notifications configured. That is,
the notification configuration will be an empty
C<NotificationConfiguration>.

C<E<lt>NotificationConfigurationE<gt>>

C<E<lt>/NotificationConfigurationE<gt>>

This operation replaces the existing notification configuration with
the configuration you include in the request body.

After Amazon S3 receives this request, it first verifies that any
Amazon Simple Notification Service (Amazon SNS) or Amazon Simple Queue
Service (Amazon SQS) destination exists, and that the bucket owner has
permission to publish to it by sending a test notification. In the case
of AWS Lambda destinations, Amazon S3 verifies that the Lambda function
permissions grant Amazon S3 permission to invoke the function from the
Amazon S3 bucket. For more information, see Configuring Notifications
for Amazon S3 Events
(https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html).

You can disable notifications by adding the empty
NotificationConfiguration element.

By default, only the bucket owner can configure notifications on a
bucket. However, bucket owners can use a bucket policy to grant
permission to other users to set this configuration with
C<s3:PutBucketNotification> permission.

The PUT notification is an atomic operation. For example, suppose your
notification configuration includes SNS topic, SQS queue, and Lambda
function configurations. When you send a PUT request with this
configuration, Amazon S3 sends test messages to your SNS topic. If the
message fails, the entire PUT operation will fail, and Amazon S3 will
not add the configuration to your bucket.

B<Responses>

If the configuration in the request body includes only one
C<TopicConfiguration> specifying only the
I<s3:ReducedRedundancyLostObject> event type, the response will also
include the I<x-amz-sns-test-message-id> header containing the message
ID of the test notification sent to topic.

The following operations is related to
C<PutBucketNotificationConfiguration>:

=over

=item *

GetBucketNotificationConfiguration

=back



=head2 PutBucketPolicy

=over

=item Bucket => Str

=item Policy => Str

=item [ConfirmRemoveSelfBucketAccess => Bool]

=item [ContentLength => Int]

=item [ContentMD5 => Str]


=back

Each argument is described in detail in: L<Paws::S3::PutBucketPolicy>

Returns: nothing

Applies an Amazon S3 bucket policy to an Amazon S3 bucket. If you are
using an identity other than the root user of the AWS account that owns
the bucket, the calling identity must have the C<PutBucketPolicy>
permissions on the specified bucket and belong to the bucket owner's
account in order to use this operation.

If you don't have C<PutBucketPolic>y permissions, Amazon S3 returns a
C<403 Access Denied> error. If you have the correct permissions, but
you're not using an identity that belongs to the bucket owner's
account, Amazon S3 returns a C<405 Method Not Allowed> error.

As a security precaution, the root user of the AWS account that owns a
bucket can always use this operation, even if the policy explicitly
denies the root user the ability to perform this action.

For more information about bucket policies, see Using Bucket Policies
and User Policies
(https://docs.aws.amazon.com/AmazonS3/latest/dev/using-iam-policies.html).

The following operations are related to C<PutBucketPolicy>:

=over

=item *

CreateBucket

=item *

DeleteBucket

=back



=head2 PutBucketReplication

=over

=item Bucket => Str

=item ReplicationConfiguration => S3_ReplicationConfiguration

=item [ContentLength => Int]

=item [ContentMD5 => Str]

=item [Token => Str]


=back

Each argument is described in detail in: L<Paws::S3::PutBucketReplication>

Returns: nothing

Creates a replication configuration or replaces an existing one. For
more information, see Replication
(https://docs.aws.amazon.com/AmazonS3/latest/dev/replication.html) in
the I<Amazon S3 Developer Guide>.

To perform this operation, the user or role performing the operation
must have the iam:PassRole
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_passrole.html)
permission.

Specify the replication configuration in the request body. In the
replication configuration, you provide the name of the destination
bucket where you want Amazon S3 to replicate objects, the IAM role that
Amazon S3 can assume to replicate objects on your behalf, and other
relevant information.

A replication configuration must include at least one rule, and can
contain a maximum of 1,000. Each rule identifies a subset of objects to
replicate by filtering the objects in the source bucket. To choose
additional subsets of objects to replicate, add a rule for each subset.
All rules must specify the same destination bucket.

To specify a subset of the objects in the source bucket to apply a
replication rule to, add the Filter element as a child of the Rule
element. You can filter objects based on an object key prefix, one or
more object tags, or both. When you add the Filter element in the
configuration, you must also add the following elements:
C<DeleteMarkerReplication>, C<Status>, and C<Priority>.

For information about enabling versioning on a bucket, see Using
Versioning
(https://docs.aws.amazon.com/AmazonS3/latest/dev/Versioning.html).

By default, a resource owner, in this case the AWS account that created
the bucket, can perform this operation. The resource owner can also
grant others permissions to perform the operation. For more information
about permissions, see Specifying Permissions in a Policy
(https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html)
and Managing Access Permissions to Your Amazon S3 Resources
(https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html).

B<Handling Replication of Encrypted Objects>

By default, Amazon S3 doesn't replicate objects that are stored at rest
using server-side encryption with CMKs stored in AWS KMS. To replicate
AWS KMS-encrypted objects, add the following:
C<SourceSelectionCriteria>, C<SseKmsEncryptedObjects>, C<Status>,
C<EncryptionConfiguration>, and C<ReplicaKmsKeyID>. For information
about replication configuration, see Replicating Objects Created with
SSE Using CMKs stored in AWS KMS
(https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-config-for-kms-objects.html).

C<PutBucketReplication> has the following special errors:

=over

=item *

Error code: C<InvalidRequest>

=over

=item *

Description: If the E<lt>OwnerE<gt> in
E<lt>AccessControlTranslationE<gt> has a value, the E<lt>AccountE<gt>
element must be specified.

=item *

HTTP 400

=back

=item *

Error code: C<InvalidArgument>

=over

=item *

Description: The E<lt>AccountE<gt> element is empty. It must contain a
valid account ID.

=item *

HTTP 400

=back

=item *

Error code: C<InvalidArgument>

=over

=item *

Description: The AWS account specified in the E<lt>AccountE<gt> element
must match the destination bucket owner.

=item *

HTTP 400

=back

=back

The following operations are related to C<PutBucketReplication>:

=over

=item *

GetBucketReplication

=item *

DeleteBucketReplication

=back



=head2 PutBucketRequestPayment

=over

=item Bucket => Str

=item RequestPaymentConfiguration => S3_RequestPaymentConfiguration

=item [ContentLength => Int]

=item [ContentMD5 => Str]


=back

Each argument is described in detail in: L<Paws::S3::PutBucketRequestPayment>

Returns: nothing

Sets the request payment configuration for a bucket. By default, the
bucket owner pays for downloads from the bucket. This configuration
parameter enables the bucket owner (only) to specify that the person
requesting the download will be charged for the download. For more
information, see Requester Pays Buckets
(https://docs.aws.amazon.com/AmazonS3/latest/dev/RequesterPaysBuckets.html).

The following operations are related to C<PutBucketRequestPayment>:

=over

=item *

CreateBucket

=item *

GetBucketRequestPayment

=back



=head2 PutBucketTagging

=over

=item Bucket => Str

=item Tagging => S3_Tagging

=item [ContentLength => Int]

=item [ContentMD5 => Str]


=back

Each argument is described in detail in: L<Paws::S3::PutBucketTagging>

Returns: nothing

Sets the tags for a bucket.

Use tags to organize your AWS bill to reflect your own cost structure.
To do this, sign up to get your AWS account bill with tag key values
included. Then, to see the cost of combined resources, organize your
billing information according to resources with the same tag key
values. For example, you can tag several resources with a specific
application name, and then organize your billing information to see the
total cost of that application across several services. For more
information, see Cost Allocation and Tagging
(https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html).

Within a bucket, if you add a tag that has the same key as an existing
tag, the new value overwrites the old value. For more information, see
Using Cost Allocation in Amazon S3 Bucket Tags
(https://docs.aws.amazon.com/AmazonS3/latest/dev/CostAllocTagging.html).

To use this operation, you must have permissions to perform the
C<s3:PutBucketTagging> action. The bucket owner has this permission by
default and can grant this permission to others. For more information
about permissions, see Permissions Related to Bucket Subresource
Operations
(https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and Managing Access Permissions to Your Amazon S3 Resources
(https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html).

C<PutBucketTagging> has the following special errors:

=over

=item *

Error code: C<InvalidTagError>

=over

=item *

Description: The tag provided was not a valid tag. This error can occur
if the tag did not pass input validation. For information about tag
restrictions, see User-Defined Tag Restrictions
(https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2//allocation-tag-restrictions.html)
and AWS-Generated Cost Allocation Tag Restrictions
(https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2//aws-tag-restrictions.html).

=back

=item *

Error code: C<MalformedXMLError>

=over

=item *

Description: The XML provided does not match the schema.

=back

=item *

Error code: C<OperationAbortedError>

=over

=item *

Description: A conflicting conditional operation is currently in
progress against this resource. Please try again.

=back

=item *

Error code: C<InternalError>

=over

=item *

Description: The service was unable to apply the provided tag to the
bucket.

=back

=back

The following operations are related to C<PutBucketTagging>:

=over

=item *

GetBucketTagging

=item *

DeleteBucketTagging

=back



=head2 PutBucketVersioning

=over

=item Bucket => Str

=item VersioningConfiguration => S3_VersioningConfiguration

=item [ContentLength => Int]

=item [ContentMD5 => Str]

=item [MFA => Str]


=back

Each argument is described in detail in: L<Paws::S3::PutBucketVersioning>

Returns: nothing

Sets the versioning state of an existing bucket. To set the versioning
state, you must be the bucket owner.

You can set the versioning state with one of the following values:

B<Enabled>E<mdash>Enables versioning for the objects in the bucket. All
objects added to the bucket receive a unique version ID.

B<Suspended>E<mdash>Disables versioning for the objects in the bucket.
All objects added to the bucket receive the version ID null.

If the versioning state has never been set on a bucket, it has no
versioning state; a GetBucketVersioning request does not return a
versioning state value.

If the bucket owner enables MFA Delete in the bucket versioning
configuration, the bucket owner must include the C<x-amz-mfa request>
header and the Status and the C<MfaDelete> request elements in a
request to set the versioning state of the bucket.

If you have an object expiration lifecycle policy in your non-versioned
bucket and you want to maintain the same permanent delete behavior when
you enable versioning, you must add a noncurrent expiration policy. The
noncurrent expiration lifecycle policy will manage the deletes of the
noncurrent object versions in the version-enabled bucket. (A
version-enabled bucket maintains one current and zero or more
noncurrent object versions.) For more information, see Lifecycle and
Versioning
(https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html#lifecycle-and-other-bucket-config).

B<Related Resources>

=over

=item *

CreateBucket

=item *

DeleteBucket

=item *

GetBucketVersioning

=back



=head2 PutBucketWebsite

=over

=item Bucket => Str

=item WebsiteConfiguration => S3_WebsiteConfiguration

=item [ContentLength => Int]

=item [ContentMD5 => Str]


=back

Each argument is described in detail in: L<Paws::S3::PutBucketWebsite>

Returns: nothing

Sets the configuration of the website that is specified in the
C<website> subresource. To configure a bucket as a website, you can add
this subresource on the bucket with website configuration information
such as the file name of the index document and any redirect rules. For
more information, see Hosting Websites on Amazon S3
(https://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteHosting.html).

This PUT operation requires the C<S3:PutBucketWebsite> permission. By
default, only the bucket owner can configure the website attached to a
bucket; however, bucket owners can allow other users to set the website
configuration by writing a bucket policy that grants them the
C<S3:PutBucketWebsite> permission.

To redirect all website requests sent to the bucket's website endpoint,
you add a website configuration with the following elements. Because
all requests are sent to another website, you don't need to provide
index document name for the bucket.

=over

=item *

WebsiteConfiguration

=item *

RedirectAllRequestsTo

=item *

HostName

=item *

Protocol

=back

If you want granular control over redirects, you can use the following
elements to add routing rules that describe conditions for redirecting
requests and information about the redirect destination. In this case,
the website configuration must provide an index document for the
bucket, because some requests might not be redirected.

=over

=item *

WebsiteConfiguration

=item *

IndexDocument

=item *

Suffix

=item *

ErrorDocument

=item *

Key

=item *

RoutingRules

=item *

RoutingRule

=item *

Condition

=item *

HttpErrorCodeReturnedEquals

=item *

KeyPrefixEquals

=item *

Redirect

=item *

Protocol

=item *

HostName

=item *

ReplaceKeyPrefixWith

=item *

ReplaceKeyWith

=item *

HttpRedirectCode

=back



=head2 PutObject

=over

=item Bucket => Str

=item Key => Str

=item [ACL => Str]

=item [Body => Str]

=item [CacheControl => Str]

=item [ContentDisposition => Str]

=item [ContentEncoding => Str]

=item [ContentLanguage => Str]

=item [ContentLength => Int]

=item [ContentMD5 => Str]

=item [ContentType => Str]

=item [Expires => Str]

=item [GrantFullControl => Str]

=item [GrantRead => Str]

=item [GrantReadACP => Str]

=item [GrantWriteACP => Str]

=item [Metadata => S3_Metadata]

=item [ObjectLockLegalHoldStatus => Str]

=item [ObjectLockMode => Str]

=item [ObjectLockRetainUntilDate => Str]

=item [RequestPayer => Str]

=item [ServerSideEncryption => Str]

=item [SSECustomerAlgorithm => Str]

=item [SSECustomerKey => Str]

=item [SSECustomerKeyMD5 => Str]

=item [SSEKMSEncryptionContext => Str]

=item [SSEKMSKeyId => Str]

=item [StorageClass => Str]

=item [Tagging => Str]

=item [WebsiteRedirectLocation => Str]


=back

Each argument is described in detail in: L<Paws::S3::PutObject>

Returns: a L<Paws::S3::PutObjectOutput> instance

Adds an object to a bucket. You must have WRITE permissions on a bucket
to add an object to it.

Amazon S3 never adds partial objects; if you receive a success
response, Amazon S3 added the entire object to the bucket.

Amazon S3 is a distributed system. If it receives multiple write
requests for the same object simultaneously, it overwrites all but the
last object written. Amazon S3 does not provide object locking; if you
need this, make sure to build it into your application layer or use
versioning instead.

To ensure that data is not corrupted traversing the network, use the
C<Content-MD5> header. When you use this header, Amazon S3 checks the
object against the provided MD5 value and, if they do not match,
returns an error. Additionally, you can calculate the MD5 while putting
an object to Amazon S3 and compare the returned ETag to the calculated
MD5 value.

To configure your application to send the request headers before
sending the request body, use the C<100-continue> HTTP status code. For
PUT operations, this helps you avoid sending the message body if the
message is rejected based on the headers (for example, because
authentication fails or a redirect occurs). For more information on the
C<100-continue> HTTP status code, see Section 8.2.3 of
http://www.ietf.org/rfc/rfc2616.txt
(http://www.ietf.org/rfc/rfc2616.txt).

You can optionally request server-side encryption. With server-side
encryption, Amazon S3 encrypts your data as it writes it to disks in
its data centers and decrypts the data when you access it. You have the
option to provide your own encryption key or use AWS-managed encryption
keys. For more information, see Using Server-Side Encryption
(https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingServerSideEncryption.html).

=over

=item Access Permissions

You can optionally specify the accounts or groups that should be
granted specific permissions on the new object. There are two ways to
grant the permissions using the request headers:

=over

=item *

Specify a canned ACL with the C<x-amz-acl> request header. For more
information, see Canned ACL
(https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#CannedACL).

=item *

Specify access permissions explicitly with the C<x-amz-grant-read>,
C<x-amz-grant-read-acp>, C<x-amz-grant-write-acp>, and
C<x-amz-grant-full-control> headers. These parameters map to the set of
permissions that Amazon S3 supports in an ACL. For more information,
see Access Control List (ACL) Overview
(https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html).

=back

You can use either a canned ACL or specify access permissions
explicitly. You cannot do both.

=item Server-Side- Encryption-Specific Request Headers

You can optionally tell Amazon S3 to encrypt data at rest using
server-side encryption. Server-side encryption is for data encryption
at rest. Amazon S3 encrypts your data as it writes it to disks in its
data centers and decrypts it when you access it. The option you use
depends on whether you want to use AWS-managed encryption keys or
provide your own encryption key.

=over

=item *

Use encryption keys managed Amazon S3 or customer master keys (CMKs)
stored in AWS Key Management Service (KMS) E<ndash> If you want AWS to
manage the keys used to encrypt data, specify the following headers in
the request.

=over

=item *

x-amz-server-side-encryption

=item *

x-amz-server-side-encryption-aws-kms-key-id

=item *

x-amz-server-side-encryption-context

=back

If you specify x-amz-server-side-encryption:aws:kms, but don't provide
x-amz-server-side- encryption-aws-kms-key-id, Amazon S3 uses the AWS
managed CMK in AWS KMS to protect the data.

All GET and PUT requests for an object protected by AWS KMS fail if you
don't make them with SSL or by using SigV4.

For more information on Server-Side Encryption with CMKs stored in AWS
KMS (SSE-KMS), see Protecting Data Using Server-Side Encryption with
CMKs stored in AWS
(https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingKMSEncryption.html).

=item *

Use customer-provided encryption keys E<ndash> If you want to manage
your own encryption keys, provide all the following headers in the
request.

=over

=item *

x-amz-server-side-encryption-customer-algorithm

=item *

x-amz-server-side-encryption-customer-key

=item *

x-amz-server-side-encryption-customer-key-MD5

=back

For more information on Server-Side Encryption with CMKs stored in KMS
(SSE-KMS), see Protecting Data Using Server-Side Encryption with CMKs
stored in AWS KMS
(https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingKMSEncryption.html).

=back

=item Access-Control-List (ACL)-Specific Request Headers

You also can use the following access controlE<ndash>related headers
with this operation. By default, all objects are private. Only the
owner has full access control. When adding a new object, you can grant
permissions to individual AWS accounts or to predefined groups defined
by Amazon S3. These permissions are then added to the Access Control
List (ACL) on the object. For more information, see Using ACLs
(https://docs.aws.amazon.com/AmazonS3/latest/dev/S3_ACLs_UsingACLs.html).
With this operation, you can grant access permissions using one of the
following two methods:

=over

=item *

Specify a canned ACL (x-amz-acl) E<mdash> Amazon S3 supports a set of
predefined ACLs, known as canned ACLs. Each canned ACL has a predefined
set of grantees and permissions. For more information, see Canned ACL
(https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#CannedACL).

=item *

Specify access permissions explicitly E<mdash> To explicitly grant
access permissions to specific AWS accounts or groups, use the
following headers. Each header maps to specific permissions that Amazon
S3 supports in an ACL. For more information, see Access Control List
(ACL) Overview
(https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html). In
the header, you specify a list of grantees who get the specific
permission. To grant permissions explicitly use:

=over

=item *

x-amz-grant-read

=item *

x-amz-grant-write

=item *

x-amz-grant-read-acp

=item *

x-amz-grant-write-acp

=item *

x-amz-grant-full-control

=back

You specify each grantee as a type=value pair, where the type is one of
the following:

=over

=item *

emailAddress E<ndash> if the value specified is the email address of an
AWS account

Using email addresses to specify a grantee is only supported in the
following AWS Regions:

=over

=item *

US East (N. Virginia)

=item *

US West (N. California)

=item *

US West (Oregon)

=item *

Asia Pacific (Singapore)

=item *

Asia Pacific (Sydney)

=item *

Asia Pacific (Tokyo)

=item *

EU (Ireland)

=item *

South America (SE<atilde>o Paulo)

=back

For a list of all the Amazon S3 supported regions and endpoints, see
Regions and Endpoints
(https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region) in
the AWS General Reference

=item *

id E<ndash> if the value specified is the canonical user ID of an AWS
account

=item *

uri E<ndash> if you are granting permissions to a predefined group

=back

For example, the following x-amz-grant-read header grants the AWS
accounts identified by email addresses permissions to read object data
and its metadata:

C<x-amz-grant-read: emailAddress="xyz@amazon.com",
emailAddress="abc@amazon.com">

=back

=item Server-Side- Encryption-Specific Request Headers

You can optionally tell Amazon S3 to encrypt data at rest using
server-side encryption. Server-side encryption is for data encryption
at rest. Amazon S3 encrypts your data as it writes it to disks in its
data centers and decrypts it when you access it. The option you use
depends on whether you want to use AWS-managed encryption keys or
provide your own encryption key.

=over

=item *

Use encryption keys managed by Amazon S3 or customer master keys (CMKs)
stored in AWS Key Management Service (KMS) E<ndash> If you want AWS to
manage the keys used to encrypt data, specify the following headers in
the request.

=over

=item *

x-amz-server-side-encryption

=item *

x-amz-server-side-encryption-aws-kms-key-id

=item *

x-amz-server-side-encryption-context

=back

If you specify x-amz-server-side-encryption:aws:kms, but don't provide
x-amz-server-side- encryption-aws-kms-key-id, Amazon S3 uses the
default AWS KMS CMK to protect the data.

All GET and PUT requests for an object protected by AWS KMS fail if you
don't make them with SSL or by using SigV4.

For more information on Server-Side Encryption with CMKs stored in AWS
KMS (SSE-KMS), see Protecting Data Using Server-Side Encryption with
CMKs stored in AWS KMS
(https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingKMSEncryption.html).

=item *

Use customer-provided encryption keys E<ndash> If you want to manage
your own encryption keys, provide all the following headers in the
request.

If you use this feature, the ETag value that Amazon S3 returns in the
response is not the MD5 of the object.

=over

=item *

x-amz-server-side-encryption-customer-algorithm

=item *

x-amz-server-side-encryption-customer-key

=item *

x-amz-server-side-encryption-customer-key-MD5

=back

For more information on Server-Side Encryption with CMKs stored in AWS
KMS (SSE-KMS), see Protecting Data Using Server-Side Encryption with
CMKs stored in AWS KMS
(https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingKMSEncryption.html).

=back

=back

B<Storage Class Options>

By default, Amazon S3 uses the Standard storage class to store newly
created objects. The Standard storage class provides high durability
and high availability. You can specify other storage classes depending
on the performance needs. For more information, see Storage Classes
(https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html)
in the Amazon Simple Storage Service Developer Guide.

B<Versioning>

If you enable versioning for a bucket, Amazon S3 automatically
generates a unique version ID for the object being stored. Amazon S3
returns this ID in the response using the C<x-amz-version-id response>
header. If versioning is suspended, Amazon S3 always uses null as the
version ID for the object stored. For more information about returning
the versioning state of a bucket, see GetBucketVersioning. If you
enable versioning for a bucket, when Amazon S3 receives multiple write
requests for the same object simultaneously, it stores all of the
objects.

B<Related Resources>

=over

=item *

CopyObject

=item *

DeleteObject

=back



=head2 PutObjectAcl

=over

=item Bucket => Str

=item Key => Str

=item [AccessControlPolicy => S3_AccessControlPolicy]

=item [ACL => Str]

=item [ContentLength => Int]

=item [ContentMD5 => Str]

=item [GrantFullControl => Str]

=item [GrantRead => Str]

=item [GrantReadACP => Str]

=item [GrantWrite => Str]

=item [GrantWriteACP => Str]

=item [RequestPayer => Str]

=item [VersionId => Str]


=back

Each argument is described in detail in: L<Paws::S3::PutObjectAcl>

Returns: a L<Paws::S3::PutObjectAclOutput> instance

uses the acl subresource to set the access control list (ACL)
permissions for an object that already exists in a bucket. You must
have WRITE_ACP permission to set the ACL of an object.

Depending on your application needs, you may choose to set the ACL on
an object using either the request body or the headers. For example, if
you have an existing application that updates a bucket ACL using the
request body, then you can continue to use that approach.

B<Access Permissions>

You can set access permissions using one of the following methods:

=over

=item *

Specify a canned ACL with the C<x-amz-acl> request header. Amazon S3
supports a set of predefined ACLs, known as canned ACLs. Each canned
ACL has a predefined set of grantees and permissions. Specify the
canned ACL name as the value of x-amz-acl. If you use this header, you
cannot use other access control specific headers in your request. For
more information, see Canned ACL
(https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#CannedACL).

=item *

Specify access permissions explicitly with the C<x-amz-grant-read>,
C<x-amz-grant-read-acp>, C<x-amz-grant-write-acp>, and
C<x-amz-grant-full-control> headers. When using these headers you
specify explicit access permissions and grantees (AWS accounts or a
Amazon S3 groups) who will receive the permission. If you use these ACL
specific headers, you cannot use x-amz-acl header to set a canned ACL.
These parameters map to the set of permissions that Amazon S3 supports
in an ACL. For more information, see Access Control List (ACL) Overview
(https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html).

You specify each grantee as a type=value pair, where the type is one of
the following:

=over

=item *

emailAddress E<ndash> if the value specified is the email address of an
AWS account

=item *

id E<ndash> if the value specified is the canonical user ID of an AWS
account

=item *

uri E<ndash> if you are granting permissions to a predefined group

=back

For example, the following x-amz-grant-read header grants list objects
permission to the two AWS accounts identified by their email addresses.

C<x-amz-grant-read: emailAddress="xyz@amazon.com",
emailAddress="abc@amazon.com">

=back

You can use either a canned ACL or specify access permissions
explicitly. You cannot do both.

B<Grantee Values>

You can specify the person (grantee) to whom you're assigning access
rights (using request elements) in the following ways:

=over

=item *

By Email address:

C<E<lt>Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xsi:type="AmazonCustomerByEmail"E<gt>E<lt>EmailAddressE<gt>E<lt>E<gt>Grantees@email.comE<lt>E<gt>E<lt>/EmailAddressE<gt>lt;/GranteeE<gt>>

The grantee is resolved to the CanonicalUser and, in a response to a
GET Object acl request, appears as the CanonicalUser.

=item *

By the person's ID:

C<E<lt>Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xsi:type="CanonicalUser"E<gt>E<lt>IDE<gt>E<lt>E<gt>IDE<lt>E<gt>E<lt>/IDE<gt>E<lt>DisplayNameE<gt>E<lt>E<gt>GranteesEmailE<lt>E<gt>E<lt>/DisplayNameE<gt>
E<lt>/GranteeE<gt>>

DisplayName is optional and ignored in the request

=item *

By URI:

C<E<lt>Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xsi:type="Group"E<gt>E<lt>URIE<gt>E<lt>E<gt>http://acs.amazonaws.com/groups/global/AuthenticatedUsersE<lt>E<gt>E<lt>/URIE<gt>E<lt>/GranteeE<gt>>

=back

B<Versioning>

The ACL of an object is set at the object version level. By default,
PUT sets the ACL of the current version of an object. To set the ACL of
a different version, use the C<versionId> subresource.

B<Related Resources>

=over

=item *

CopyObject

=item *

GetObject

=back



=head2 PutObjectLegalHold

=over

=item Bucket => Str

=item Key => Str

=item [ContentMD5 => Str]

=item [LegalHold => S3_ObjectLockLegalHold]

=item [RequestPayer => Str]

=item [VersionId => Str]


=back

Each argument is described in detail in: L<Paws::S3::PutObjectLegalHold>

Returns: a L<Paws::S3::PutObjectLegalHoldOutput> instance

Applies a Legal Hold configuration to the specified object.

B<Related Resources>

=over

=item *

Locking Objects
(https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html)

=back



=head2 PutObjectLockConfiguration

=over

=item Bucket => Str

=item [ContentMD5 => Str]

=item [ObjectLockConfiguration => S3_ObjectLockConfiguration]

=item [RequestPayer => Str]

=item [Token => Str]


=back

Each argument is described in detail in: L<Paws::S3::PutObjectLockConfiguration>

Returns: a L<Paws::S3::PutObjectLockConfigurationOutput> instance

Places an Object Lock configuration on the specified bucket. The rule
specified in the Object Lock configuration will be applied by default
to every new object placed in the specified bucket.

C<DefaultRetention> requires either Days or Years. You can't specify
both at the same time.

B<Related Resources>

=over

=item *

Locking Objects
(https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html)

=back



=head2 PutObjectRetention

=over

=item Bucket => Str

=item Key => Str

=item [BypassGovernanceRetention => Bool]

=item [ContentMD5 => Str]

=item [RequestPayer => Str]

=item [Retention => S3_ObjectLockRetention]

=item [VersionId => Str]


=back

Each argument is described in detail in: L<Paws::S3::PutObjectRetention>

Returns: a L<Paws::S3::PutObjectRetentionOutput> instance

Places an Object Retention configuration on an object.

B<Related Resources>

=over

=item *

Locking Objects
(https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html)

=back



=head2 PutObjectTagging

=over

=item Bucket => Str

=item Key => Str

=item Tagging => S3_Tagging

=item [ContentLength => Int]

=item [ContentMD5 => Str]

=item [VersionId => Str]


=back

Each argument is described in detail in: L<Paws::S3::PutObjectTagging>

Returns: a L<Paws::S3::PutObjectTaggingOutput> instance

Sets the supplied tag-set to an object that already exists in a bucket

A tag is a key-value pair. You can associate tags with an object by
sending a PUT request against the tagging subresource that is
associated with the object. You can retrieve tags by sending a GET
request. For more information, see GetObjectTagging.

For tagging-related restrictions related to characters and encodings,
see Tag Restrictions
(https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html).
Note that Amazon S3 limits the maximum number of tags to 10 tags per
object.

To use this operation, you must have permission to perform the
C<s3:PutObjectTagging> action. By default, the bucket owner has this
permission and can grant this permission to others.

To put tags of any other version, use the C<versionId> query parameter.
You also need permission for the C<s3:PutObjectVersionTagging> action.

For information about the Amazon S3 object tagging feature, see Object
Tagging
(https://docs.aws.amazon.com/AmazonS3/latest/dev/object-tagging.html).

B<Special Errors>

=over

=item *

B<>

=over

=item *

I<Code: InvalidTagError>

=item *

I<Cause: The tag provided was not a valid tag. This error can occur if
the tag did not pass input validation. For more information, see Object
Tagging
(https://docs.aws.amazon.com/AmazonS3/latest/dev/object-tagging.html).>

=back

=item *

B<>

=over

=item *

I<Code: MalformedXMLError>

=item *

I<Cause: The XML provided does not match the schema.>

=back

=item *

=over

=item *

I<Code: OperationAbortedError>

=item *

I<Cause: A conflicting conditional operation is currently in progress
against this resource. Please try again.>

=back

=item *

=over

=item *

I<Code: InternalError>

=item *

I<Cause: The service was unable to apply the provided tag to the
object.>

=back

=back

B<Related Resources>

=over

=item *

GetObjectTagging

=back



=head2 PutPublicAccessBlock

=over

=item Bucket => Str

=item PublicAccessBlockConfiguration => S3_PublicAccessBlockConfiguration

=item [ContentMD5 => Str]


=back

Each argument is described in detail in: L<Paws::S3::PutPublicAccessBlock>

Returns: nothing

Creates or modifies the C<PublicAccessBlock> configuration for an
Amazon S3 bucket. In order to use this operation, you must have the
C<s3:PutBucketPublicAccessBlock> permission. For more information about
Amazon S3 permissions, see Specifying Permissions in a Policy
(https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html).

When Amazon S3 evaluates the PublicAccessBlock configuration for a
bucket or an object, it checks the PublicAccessBlock configuration for
both the bucket (or the bucket that contains the object) and the bucket
owner's account. If the PublicAccessBlock configurations are different
between the bucket and the account, Amazon S3 uses the most restrictive
combination of the bucket-level and account-level settings.

For more information about when Amazon S3 considers a bucket or an
object public, see The Meaning of "Public"
(https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status).

B<Related Resources>

=over

=item *

GetPublicAccessBlock

=item *

DeletePublicAccessBlock

=item *

GetBucketPolicyStatus

=item *

Using Amazon S3 Block Public Access
(https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html)

=back



=head2 RestoreObject

=over

=item Bucket => Str

=item Key => Str

=item [ContentMD5 => Str]

=item [RequestPayer => Str]

=item [RestoreRequest => S3_RestoreRequest]

=item [VersionId => Str]


=back

Each argument is described in detail in: L<Paws::S3::RestoreObject>

Returns: a L<Paws::S3::RestoreObjectOutput> instance

Restores an archived copy of an object back into Amazon S3

This operation performs the following types of requests:

=over

=item *

C<select> - Perform a select query on an archived object

=item *

C<restore an archive> - Restore an archived object

=back

To use this operation, you must have permissions to perform the
C<s3:RestoreObject> and C<s3:GetObject> actions. The bucket owner has
this permission by default and can grant this permission to others. For
more information about permissions, see Permissions Related to Bucket
Subresource Operations
(https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and Managing Access Permissions to Your Amazon S3 Resources
(https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html)
in the I<Amazon Simple Storage Service Developer Guide>.

B<Querying Archives with Select Requests>

You use a select type of request to perform SQL queries on archived
objects. The archived objects that are being queried by the select
request must be formatted as uncompressed comma-separated values (CSV)
files. You can run queries and custom analytics on your archived data
without having to restore your data to a hotter Amazon S3 tier. For an
overview about select requests, see Querying Archived Objects
(https://docs.aws.amazon.com/AmazonS3/latest/dev/querying-glacier-archives.html)
in the I<Amazon Simple Storage Service Developer Guide>.

When making a select request, do the following:

=over

=item *

Define an output location for the select query's output. This must be
an Amazon S3 bucket in the same AWS Region as the bucket that contains
the archive object that is being queried. The AWS account that
initiates the job must have permissions to write to the S3 bucket. You
can specify the storage class and encryption for the output objects
stored in the bucket. For more information about output, see Querying
Archived Objects
(https://docs.aws.amazon.com/AmazonS3/latest/dev/querying-glacier-archives.html)
in the I<Amazon Simple Storage Service Developer Guide>.

For more information about the C<S3> structure in the request body, see
the following:

=over

=item *

PutObject

=item *

Managing Access with ACLs
(https://docs.aws.amazon.com/AmazonS3/latest/dev/S3_ACLs_UsingACLs.html)
in the I<Amazon Simple Storage Service Developer Guide>

=item *

Protecting Data Using Server-Side Encryption
(https://docs.aws.amazon.com/AmazonS3/latest/dev/serv-side-encryption.html)
in the I<Amazon Simple Storage Service Developer Guide>

=back

=item *

Define the SQL expression for the C<SELECT> type of restoration for
your query in the request body's C<SelectParameters> structure. You can
use expressions like the following examples.

=over

=item *

The following expression returns all records from the specified object.

C<SELECT * FROM Object>

=item *

Assuming that you are not using any headers for data stored in the
object, you can specify columns with positional headers.

C<SELECT s._1, s._2 FROM Object s WHERE s._3 E<gt> 100>

=item *

If you have headers and you set the C<fileHeaderInfo> in the C<CSV>
structure in the request body to C<USE>, you can specify headers in the
query. (If you set the C<fileHeaderInfo> field to C<IGNORE>, the first
row is skipped for the query.) You cannot mix ordinal positions with
header column names.

C<SELECT s.Id, s.FirstName, s.SSN FROM S3Object s>

=back

=back

For more information about using SQL with Glacier Select restore, see
SQL Reference for Amazon S3 Select and Glacier Select
(https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-glacier-select-sql-reference.html)
in the I<Amazon Simple Storage Service Developer Guide>.

When making a select request, you can also do the following:

=over

=item *

To expedite your queries, specify the C<Expedited> tier. For more
information about tiers, see "Restoring Archives," later in this topic.

=item *

Specify details about the data serialization format of both the input
object that is being queried and the serialization of the CSV-encoded
query results.

=back

The following are additional important facts about the select feature:

=over

=item *

The output results are new Amazon S3 objects. Unlike archive
retrievals, they are stored until explicitly deleted-manually or
through a lifecycle policy.

=item *

You can issue more than one select request on the same Amazon S3
object. Amazon S3 doesn't deduplicate requests, so avoid issuing
duplicate requests.

=item *

Amazon S3 accepts a select request even if the object has already been
restored. A select request doesnE<rsquo>t return error response C<409>.

=back

B<Restoring Archives>

Objects in the GLACIER and DEEP_ARCHIVE storage classes are archived.
To access an archived object, you must first initiate a restore
request. This restores a temporary copy of the archived object. In a
restore request, you specify the number of days that you want the
restored copy to exist. After the specified period, Amazon S3 deletes
the temporary copy but the object remains archived in the GLACIER or
DEEP_ARCHIVE storage class that object was restored from.

To restore a specific object version, you can provide a version ID. If
you don't provide a version ID, Amazon S3 restores the current version.

The time it takes restore jobs to finish depends on which storage class
the object is being restored from and which data access tier you
specify.

When restoring an archived object (or using a select request), you can
specify one of the following data access tier options in the C<Tier>
element of the request body:

=over

=item *

B<C<Expedited> > - Expedited retrievals allow you to quickly access
your data stored in the GLACIER storage class when occasional urgent
requests for a subset of archives are required. For all but the largest
archived objects (250 MB+), data accessed using Expedited retrievals
are typically made available within 1E<ndash>5 minutes. Provisioned
capacity ensures that retrieval capacity for Expedited retrievals is
available when you need it. Expedited retrievals and provisioned
capacity are not available for the DEEP_ARCHIVE storage class.

=item *

B<C<Standard> > - Standard retrievals allow you to access any of your
archived objects within several hours. This is the default option for
the GLACIER and DEEP_ARCHIVE retrieval requests that do not specify the
retrieval option. Standard retrievals typically complete within 3-5
hours from the GLACIER storage class and typically complete within 12
hours from the DEEP_ARCHIVE storage class.

=item *

B<C<Bulk> > - Bulk retrievals are Amazon GlacierE<rsquo>s lowest-cost
retrieval option, enabling you to retrieve large amounts, even
petabytes, of data inexpensively in a day. Bulk retrievals typically
complete within 5-12 hours from the GLACIER storage class and typically
complete within 48 hours from the DEEP_ARCHIVE storage class.

=back

For more information about archive retrieval options and provisioned
capacity for C<Expedited> data access, see Restoring Archived Objects
(https://docs.aws.amazon.com/AmazonS3/latest/dev/restoring-objects.html)
in the I<Amazon Simple Storage Service Developer Guide>.

You can use Amazon S3 restore speed upgrade to change the restore speed
to a faster speed while it is in progress. You upgrade the speed of an
in-progress restoration by issuing another restore request to the same
object, setting a new C<Tier> request element. When issuing a request
to upgrade the restore tier, you must choose a tier that is faster than
the tier that the in-progress restore is using. You must not change any
other parameters, such as the C<Days> request element. For more
information, see Upgrading the Speed of an In-Progress Restore
(https://docs.aws.amazon.com/AmazonS3/latest/dev/restoring-objects.html#restoring-objects-upgrade-tier.title.html)
in the I<Amazon Simple Storage Service Developer Guide>.

To get the status of object restoration, you can send a C<HEAD>
request. Operations return the C<x-amz-restore> header, which provides
information about the restoration status, in the response. You can use
Amazon S3 event notifications to notify you when a restore is initiated
or completed. For more information, see Configuring Amazon S3 Event
Notifications
(https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html)
in the I<Amazon Simple Storage Service Developer Guide>.

After restoring an archived object, you can update the restoration
period by reissuing the request with a new period. Amazon S3 updates
the restoration period relative to the current time and charges only
for the request-there are no data transfer charges. You cannot update
the restoration period when Amazon S3 is actively processing your
current restore request for the object.

If your bucket has a lifecycle configuration with a rule that includes
an expiration action, the object expiration overrides the life span
that you specify in a restore request. For example, if you restore an
object copy for 10 days, but the object is scheduled to expire in 3
days, Amazon S3 deletes the object in 3 days. For more information
about lifecycle configuration, see PutBucketLifecycleConfiguration and
Object Lifecycle Management
(https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html)
in I<Amazon Simple Storage Service Developer Guide>.

B<Responses>

A successful operation returns either the C<200 OK> or C<202 Accepted>
status code.

=over

=item *

If the object copy is not previously restored, then Amazon S3 returns
C<202 Accepted> in the response.

=item *

If the object copy is previously restored, Amazon S3 returns C<200 OK>
in the response.

=back

B<Special Errors>

=over

=item *

B<>

=over

=item *

I<Code: RestoreAlreadyInProgress>

=item *

I<Cause: Object restore is already in progress. (This error does not
apply to SELECT type requests.)>

=item *

I<HTTP Status Code: 409 Conflict>

=item *

I<SOAP Fault Code Prefix: Client>

=back

=item *

B<>

=over

=item *

I<Code: GlacierExpeditedRetrievalNotAvailable>

=item *

I<Cause: Glacier expedited retrievals are currently not available. Try
again later. (Returned if there is insufficient capacity to process the
Expedited request. This error applies only to Expedited retrievals and
not to Standard or Bulk retrievals.)>

=item *

I<HTTP Status Code: 503>

=item *

I<SOAP Fault Code Prefix: N/A>

=back

=back

B<Related Resources>

=over

=item *

PutBucketLifecycleConfiguration

=item *

GetBucketNotificationConfiguration

=item *

SQL Reference for Amazon S3 Select and Glacier Select
(https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-glacier-select-sql-reference.html)
in the I<Amazon Simple Storage Service Developer Guide>

=back



=head2 SelectObjectContent

=over

=item Bucket => Str

=item Expression => Str

=item ExpressionType => Str

=item InputSerialization => S3_InputSerialization

=item Key => Str

=item OutputSerialization => S3_OutputSerialization

=item [RequestProgress => S3_RequestProgress]

=item [ScanRange => S3_ScanRange]

=item [SSECustomerAlgorithm => Str]

=item [SSECustomerKey => Str]

=item [SSECustomerKeyMD5 => Str]


=back

Each argument is described in detail in: L<Paws::S3::SelectObjectContent>

Returns: a L<Paws::S3::SelectObjectContentOutput> instance

This operation filters the contents of an Amazon S3 object based on a
simple structured query language (SQL) statement. In the request, along
with the SQL expression, you must also specify a data serialization
format (JSON, CSV, or Apache Parquet) of the object. Amazon S3 uses
this format to parse object data into records, and returns only records
that match the specified SQL expression. You must also specify the data
serialization format for the response.

For more information about Amazon S3 Select, see Selecting Content from
Objects
(https://docs.aws.amazon.com/AmazonS3/latest/dev/selecting-content-from-objects.html)
in the I<Amazon Simple Storage Service Developer Guide>.

For more information about using SQL with Amazon S3 Select, see SQL
Reference for Amazon S3 Select and Glacier Select
(https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-glacier-select-sql-reference.html)
in the I<Amazon Simple Storage Service Developer Guide>.

B<Permissions>

You must have C<s3:GetObject> permission for this operation. Amazon S3
Select does not support anonymous access. For more information about
permissions, see Specifying Permissions in a Policy
(https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html)
in the I<Amazon Simple Storage Service Developer Guide>.

I<Object Data Formats>

You can use Amazon S3 Select to query objects that have the following
format properties:

=over

=item *

I<CSV, JSON, and Parquet> - Objects must be in CSV, JSON, or Parquet
format.

=item *

I<UTF-8> - UTF-8 is the only encoding type Amazon S3 Select supports.

=item *

I<GZIP or BZIP2> - CSV and JSON files can be compressed using GZIP or
BZIP2. GZIP and BZIP2 are the only compression formats that Amazon S3
Select supports for CSV and JSON files. Amazon S3 Select supports
columnar compression for Parquet using GZIP or Snappy. Amazon S3 Select
does not support whole-object compression for Parquet objects.

=item *

I<Server-side encryption> - Amazon S3 Select supports querying objects
that are protected with server-side encryption.

For objects that are encrypted with customer-provided encryption keys
(SSE-C), you must use HTTPS, and you must use the headers that are
documented in the GetObject. For more information about SSE-C, see
Server-Side Encryption (Using Customer-Provided Encryption Keys)
(https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html)
in the I<Amazon Simple Storage Service Developer Guide>.

For objects that are encrypted with Amazon S3 managed encryption keys
(SSE-S3) and customer master keys (CMKs) stored in AWS Key Management
Service (SSE-KMS), server-side encryption is handled transparently, so
you don't need to specify anything. For more information about
server-side encryption, including SSE-S3 and SSE-KMS, see Protecting
Data Using Server-Side Encryption
(https://docs.aws.amazon.com/AmazonS3/latest/dev/serv-side-encryption.html)
in the I<Amazon Simple Storage Service Developer Guide>.

=back

B<Working with the Response Body>

Given the response size is unknown, Amazon S3 Select streams the
response as a series of messages and includes a C<Transfer-Encoding>
header with C<chunked> as its value in the response. For more
information, see RESTSelectObjectAppendix .

B<GetObject Support>

The C<SelectObjectContent> operation does not support the following
C<GetObject> functionality. For more information, see GetObject.

=over

=item *

C<Range>: While you can specify a scan range for a Amazon S3 Select
request, see SelectObjectContentRequest$ScanRange in the request
parameters below, you cannot specify the range of bytes of an object to
return.

=item *

GLACIER, DEEP_ARCHIVE and REDUCED_REDUNDANCY storage classes: You
cannot specify the GLACIER, DEEP_ARCHIVE, or C<REDUCED_REDUNDANCY>
storage classes. For more information, about storage classes see
Storage Classes
(https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMetadata.html#storage-class-intro)
in the I<Amazon Simple Storage Service Developer Guide>.

=back

B<Special Errors>

For a list of special errors for this operation and for general
information about Amazon S3 errors and a list of error codes, see
ErrorResponses

B<Related Resources>

=over

=item *

GetObject

=item *

GetBucketLifecycleConfiguration

=item *

PutBucketLifecycleConfiguration

=back



=head2 UploadPart

=over

=item Bucket => Str

=item Key => Str

=item PartNumber => Int

=item UploadId => Str

=item [Body => Str]

=item [ContentLength => Int]

=item [ContentMD5 => Str]

=item [RequestPayer => Str]

=item [SSECustomerAlgorithm => Str]

=item [SSECustomerKey => Str]

=item [SSECustomerKeyMD5 => Str]


=back

Each argument is described in detail in: L<Paws::S3::UploadPart>

Returns: a L<Paws::S3::UploadPartOutput> instance

Uploads a part in a multipart upload.

In this operation, you provide part data in your request. However, you
have an option to specify your existing Amazon S3 object as a data
source for the part you are uploading. To upload a part from an
existing object, you use the UploadPartCopy operation.

You must initiate a multipart upload (see CreateMultipartUpload) before
you can upload any part. In response to your initiate request, Amazon
S3 returns an upload ID, a unique identifier, that you must include in
your upload part request.

Part numbers can be any number from 1 to 10,000, inclusive. A part
number uniquely identifies a part and also defines its position within
the object being created. If you upload a new part using the same part
number that was used with a previous part, the previously uploaded part
is overwritten. Each part must be at least 5 MB in size, except the
last part. There is no size limit on the last part of your multipart
upload.

To ensure that data is not corrupted when traversing the network,
specify the C<Content-MD5> header in the upload part request. Amazon S3
checks the part data against the provided MD5 value. If they do not
match, Amazon S3 returns an error.

B<Note:> After you initiate multipart upload and upload one or more
parts, you must either complete or abort multipart upload in order to
stop getting charged for storage of the uploaded parts. Only after you
either complete or abort multipart upload, Amazon S3 frees up the parts
storage and stops charging you for the parts storage.

For more information on multipart uploads, go to Multipart Upload
Overview
(https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html) in
the I<Amazon Simple Storage Service Developer Guide >.

For information on the permissions required to use the multipart upload
API, go to Multipart Upload API and Permissions
(https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuAndPermissions.html)
in the I<Amazon Simple Storage Service Developer Guide>.

You can optionally request server-side encryption where Amazon S3
encrypts your data as it writes it to disks in its data centers and
decrypts it for you when you access it. You have the option of
providing your own encryption key, or you can use the AWS-managed
encryption keys. If you choose to provide your own encryption key, the
request headers you provide in the request must match the headers you
used in the request to initiate the upload by using
CreateMultipartUpload. For more information, go to Using Server-Side
Encryption
(https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingServerSideEncryption.html)
in the I<Amazon Simple Storage Service Developer Guide>.

Server-side encryption is supported by the S3 Multipart Upload actions.
Unless you are using a customer-provided encryption key, you don't need
to specify the encryption parameters in each UploadPart request.
Instead, you only need to specify the server side encryption parameters
in the initial Initiate Multipart request. For more information, see
CreateMultipartUpload.

If you requested server-side encryption using a customer-provided
encryption key in your initiate multipart upload request, you must
provide identical encryption information in each part upload using the
following headers.

=over

=item *

x-amz-server-side-encryption-customer-algorithm

=item *

x-amz-server-side-encryption-customer-key

=item *

x-amz-server-side-encryption-customer-key-MD5

=back

B<Special Errors>

=over

=item *

B<>

=over

=item *

I<Code: NoSuchUpload>

=item *

I<Cause: The specified multipart upload does not exist. The upload ID
might be invalid, or the multipart upload might have been aborted or
completed.>

=item *

I<HTTP Status Code: 404 Not Found>

=item *

I<SOAP Fault Code Prefix: Client>

=back

=back

B<Related Resources>

=over

=item *

CreateMultipartUpload

=item *

CompleteMultipartUpload

=item *

AbortMultipartUpload

=item *

ListParts

=item *

ListMultipartUploads

=back



=head2 UploadPartCopy

=over

=item Bucket => Str

=item CopySource => Str

=item Key => Str

=item PartNumber => Int

=item UploadId => Str

=item [CopySourceIfMatch => Str]

=item [CopySourceIfModifiedSince => Str]

=item [CopySourceIfNoneMatch => Str]

=item [CopySourceIfUnmodifiedSince => Str]

=item [CopySourceRange => Str]

=item [CopySourceSSECustomerAlgorithm => Str]

=item [CopySourceSSECustomerKey => Str]

=item [CopySourceSSECustomerKeyMD5 => Str]

=item [RequestPayer => Str]

=item [SSECustomerAlgorithm => Str]

=item [SSECustomerKey => Str]

=item [SSECustomerKeyMD5 => Str]


=back

Each argument is described in detail in: L<Paws::S3::UploadPartCopy>

Returns: a L<Paws::S3::UploadPartCopyOutput> instance

Uploads a part by copying data from an existing object as data source.
You specify the data source by adding the request header
C<x-amz-copy-source> in your request and a byte range by adding the
request header C<x-amz-copy-source-range> in your request.

The minimum allowable part size for a multipart upload is 5 MB. For
more information about multipart upload limits, go to Quick Facts
(https://docs.aws.amazon.com/AmazonS3/latest/dev/qfacts.html) in the
I<Amazon Simple Storage Service Developer Guide>.

Instead of using an existing object as part data, you might use the
UploadPart operation and provide data in your request.

You must initiate a multipart upload before you can upload any part. In
response to your initiate request. Amazon S3 returns a unique
identifier, the upload ID, that you must include in your upload part
request.

B<For more information on using the UploadPartCopy operation, see the
following topics:>

=over

=item *

For conceptual information on multipart uploads, go to Uploading
Objects Using Multipart Upload
(https://docs.aws.amazon.com/AmazonS3/latest/dev/uploadobjusingmpu.html)
in the I<Amazon Simple Storage Service Developer Guide>.

=item *

For information on permissions required to use the multipart upload
API, go to Multipart Upload API and Permissions
(https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuAndPermissions.html)
in the I<Amazon Simple Storage Service Developer Guide>.

=item *

For information about copying objects using a single atomic operation
vs. the multipart upload, go to Operations on Objects
(https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectOperations.html)
in the I<Amazon Simple Storage Service Developer Guide>.

=item *

For information about using server-side encryption with
customer-provided encryption keys with the UploadPartCopy operation,
see CopyObject and UploadPart.

=back

Note the following additional considerations about the request headers
C<x-amz-copy-source-if-match>, C<x-amz-copy-source-if-none-match>
C<x-amz-copy-source-if-unmodified-since>
C<x-amz-copy-source-if-modified-since>

=over

=item *

B<Consideration 1> - If both of the C<x-amz-copy-source-if-match> and
C<x-amz-copy-source-if-unmodified-since> headers are present in the
request as follows:

C<x-amz-copy-source-if-match> condition evaluates to C<true>, and;

C<x-amz-copy-source-if-unmodified-since> condition evaluates to
C<false>;

then, S3 returns C<200 OK> and copies the data.

=item *

B<Consideration 2> - If both of the C<x-amz-copy-source-if-none-match>
and C<x-amz-copy-source-if-modified-since> headers are present in the
request as follows:

C<x-amz-copy-source-if-none-match> condition evaluates to C<false>,
and;

C<x-amz-copy-source-if-modified-since> condition evaluates to C<true>;

then, S3 returns C<412 Precondition Failed> response code.

=back

B<Versioning>

If your bucket has versioning enabled, you could have multiple versions
of the same object. By default, C<x-amz-copy-source> identifies the
current version of the object to copy. If the current version is a
delete marker and you don't specify a versionId in the
C<x-amz-copy-source>, Amazon S3 returns a 404 error, because the object
does not exist. If you specify versionId in the C<x-amz-copy-source>
and the versionId is a delete marker, Amazon S3 returns an HTTP 400
error, because you are not allowed to specify a delete marker as a
version for the C<x-amz-copy-source>.

You can optionally specify a specific version of the source object to
copy by adding the C<versionId> subresource as shown in the following
example:

C<x-amz-copy-source: /bucket/object?versionId=version id>

B<Special Errors>

=over

=item *

B<>

=over

=item *

I<Code: NoSuchUpload>

=item *

I<Cause: The specified multipart upload does not exist. The upload ID
might be invalid, or the multipart upload might have been aborted or
completed.>

=item *

I<HTTP Status Code: 404 Not Found>

=back

=item *

B<>

=over

=item *

I<Code: InvalidRequest>

=item *

I<Cause: The specified copy source is not supported as a byte-range
copy source.>

=item *

I<HTTP Status Code: 400 Bad Request>

=back

=back

B<Related Resources>

=over

=item *

CreateMultipartUpload

=item *

UploadPart

=item *

CompleteMultipartUpload

=item *

AbortMultipartUpload

=item *

ListParts

=item *

ListMultipartUploads

=back





=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllMultipartUploads(sub { },Bucket => Str, [Delimiter => Str, EncodingType => Str, KeyMarker => Str, MaxUploads => Int, Prefix => Str, UploadIdMarker => Str])

=head2 ListAllMultipartUploads(Bucket => Str, [Delimiter => Str, EncodingType => Str, KeyMarker => Str, MaxUploads => Int, Prefix => Str, UploadIdMarker => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Uploads, passing the object as the first parameter, and the string 'Uploads' as the second parameter 

 - CommonPrefixes, passing the object as the first parameter, and the string 'CommonPrefixes' as the second parameter 

If not, it will return a a L<Paws::S3::ListMultipartUploadsOutput> instance with all the C<param>s; andC<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllObjects(sub { },Bucket => Str, [Delimiter => Str, EncodingType => Str, Marker => Str, MaxKeys => Int, Prefix => Str, RequestPayer => Str])

=head2 ListAllObjects(Bucket => Str, [Delimiter => Str, EncodingType => Str, Marker => Str, MaxKeys => Int, Prefix => Str, RequestPayer => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Contents, passing the object as the first parameter, and the string 'Contents' as the second parameter 

 - CommonPrefixes, passing the object as the first parameter, and the string 'CommonPrefixes' as the second parameter 

If not, it will return a a L<Paws::S3::ListObjectsOutput> instance with all the C<param>s; andC<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllObjectsV2(sub { },Bucket => Str, [ContinuationToken => Str, Delimiter => Str, EncodingType => Str, FetchOwner => Bool, MaxKeys => Int, Prefix => Str, RequestPayer => Str, StartAfter => Str])

=head2 ListAllObjectsV2(Bucket => Str, [ContinuationToken => Str, Delimiter => Str, EncodingType => Str, FetchOwner => Bool, MaxKeys => Int, Prefix => Str, RequestPayer => Str, StartAfter => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Contents, passing the object as the first parameter, and the string 'Contents' as the second parameter 

 - CommonPrefixes, passing the object as the first parameter, and the string 'CommonPrefixes' as the second parameter 

If not, it will return a a L<Paws::S3::ListObjectsV2Output> instance with all the C<param>s; andC<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllObjectVersions(sub { },Bucket => Str, [Delimiter => Str, EncodingType => Str, KeyMarker => Str, MaxKeys => Int, Prefix => Str, VersionIdMarker => Str])

=head2 ListAllObjectVersions(Bucket => Str, [Delimiter => Str, EncodingType => Str, KeyMarker => Str, MaxKeys => Int, Prefix => Str, VersionIdMarker => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Versions, passing the object as the first parameter, and the string 'Versions' as the second parameter 

 - DeleteMarkers, passing the object as the first parameter, and the string 'DeleteMarkers' as the second parameter 

 - CommonPrefixes, passing the object as the first parameter, and the string 'CommonPrefixes' as the second parameter 

If not, it will return a a L<Paws::S3::ListObjectVersionsOutput> instance with all the C<param>s; andC<param>s; andC<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllParts(sub { },Bucket => Str, Key => Str, UploadId => Str, [MaxParts => Int, PartNumberMarker => Int, RequestPayer => Str])

=head2 ListAllParts(Bucket => Str, Key => Str, UploadId => Str, [MaxParts => Int, PartNumberMarker => Int, RequestPayer => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Parts, passing the object as the first parameter, and the string 'Parts' as the second parameter 

If not, it will return a a L<Paws::S3::ListPartsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

