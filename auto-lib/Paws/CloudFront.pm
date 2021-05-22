package Paws::CloudFront;
  warn "Paws::CloudFront is not stable / supported / entirely developed" unless $ENV{'PAWS_SILENCE_UNSTABLE_WARNINGS'};
  use Moose;
  sub service { 'cloudfront' }
  sub signing_name { 'cloudfront' }
  sub version { '2020-05-31' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestXmlCaller';

  has '+region_rules' => (default => sub {
    my $regioninfo;
      $regioninfo = [
    {
      constraints => [
        [
          'region',
          'notStartsWith',
          'cn-'
        ]
      ],
      properties => {
        credentialScope => {
          region => 'us-east-1'
        }
      },
      uri => 'https://cloudfront.amazonaws.com'
    }
  ];

    return $regioninfo;
  });

  
  sub CreateCachePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::CreateCachePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCloudFrontOriginAccessIdentity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::CreateCloudFrontOriginAccessIdentity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDistribution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::CreateDistribution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDistributionWithTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::CreateDistributionWithTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFieldLevelEncryptionConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::CreateFieldLevelEncryptionConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFieldLevelEncryptionProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::CreateFieldLevelEncryptionProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFunction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::CreateFunction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateInvalidation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::CreateInvalidation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateKeyGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::CreateKeyGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMonitoringSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::CreateMonitoringSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateOriginRequestPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::CreateOriginRequestPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePublicKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::CreatePublicKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRealtimeLogConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::CreateRealtimeLogConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateStreamingDistribution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::CreateStreamingDistribution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateStreamingDistributionWithTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::CreateStreamingDistributionWithTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCachePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::DeleteCachePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCloudFrontOriginAccessIdentity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::DeleteCloudFrontOriginAccessIdentity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDistribution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::DeleteDistribution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFieldLevelEncryptionConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::DeleteFieldLevelEncryptionConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFieldLevelEncryptionProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::DeleteFieldLevelEncryptionProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFunction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::DeleteFunction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteKeyGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::DeleteKeyGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMonitoringSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::DeleteMonitoringSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteOriginRequestPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::DeleteOriginRequestPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePublicKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::DeletePublicKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRealtimeLogConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::DeleteRealtimeLogConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteStreamingDistribution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::DeleteStreamingDistribution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFunction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::DescribeFunction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCachePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetCachePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCachePolicyConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetCachePolicyConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCloudFrontOriginAccessIdentity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetCloudFrontOriginAccessIdentity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCloudFrontOriginAccessIdentityConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetCloudFrontOriginAccessIdentityConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDistribution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetDistribution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDistributionConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetDistributionConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFieldLevelEncryption {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetFieldLevelEncryption', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFieldLevelEncryptionConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetFieldLevelEncryptionConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFieldLevelEncryptionProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetFieldLevelEncryptionProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFieldLevelEncryptionProfileConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetFieldLevelEncryptionProfileConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFunction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetFunction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetInvalidation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetInvalidation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetKeyGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetKeyGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetKeyGroupConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetKeyGroupConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMonitoringSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetMonitoringSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetOriginRequestPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetOriginRequestPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetOriginRequestPolicyConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetOriginRequestPolicyConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPublicKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetPublicKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPublicKeyConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetPublicKeyConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRealtimeLogConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetRealtimeLogConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetStreamingDistribution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetStreamingDistribution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetStreamingDistributionConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetStreamingDistributionConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCachePolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListCachePolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCloudFrontOriginAccessIdentities {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListCloudFrontOriginAccessIdentities', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDistributions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListDistributions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDistributionsByCachePolicyId {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListDistributionsByCachePolicyId', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDistributionsByKeyGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListDistributionsByKeyGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDistributionsByOriginRequestPolicyId {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListDistributionsByOriginRequestPolicyId', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDistributionsByRealtimeLogConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListDistributionsByRealtimeLogConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDistributionsByWebACLId {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListDistributionsByWebACLId', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFieldLevelEncryptionConfigs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListFieldLevelEncryptionConfigs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFieldLevelEncryptionProfiles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListFieldLevelEncryptionProfiles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFunctions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListFunctions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListInvalidations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListInvalidations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListKeyGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListKeyGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListOriginRequestPolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListOriginRequestPolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPublicKeys {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListPublicKeys', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRealtimeLogConfigs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListRealtimeLogConfigs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListStreamingDistributions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListStreamingDistributions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PublishFunction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::PublishFunction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TestFunction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::TestFunction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCachePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::UpdateCachePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCloudFrontOriginAccessIdentity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::UpdateCloudFrontOriginAccessIdentity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDistribution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::UpdateDistribution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFieldLevelEncryptionConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::UpdateFieldLevelEncryptionConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFieldLevelEncryptionProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::UpdateFieldLevelEncryptionProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFunction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::UpdateFunction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateKeyGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::UpdateKeyGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateOriginRequestPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::UpdateOriginRequestPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePublicKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::UpdatePublicKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRealtimeLogConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::UpdateRealtimeLogConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateStreamingDistribution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::UpdateStreamingDistribution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllCloudFrontOriginAccessIdentities {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCloudFrontOriginAccessIdentities(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->CloudFrontOriginAccessIdentityList->IsTruncated) {
        $next_result = $self->ListCloudFrontOriginAccessIdentities(@_, Marker => $next_result->CloudFrontOriginAccessIdentityList->NextMarker);
        push @{ $result->CloudFrontOriginAccessIdentityList->Items }, @{ $next_result->CloudFrontOriginAccessIdentityList->Items };
      }
      return $result;
    } else {
      while ($result->CloudFrontOriginAccessIdentityList->IsTruncated) {
        $callback->($_ => 'CloudFrontOriginAccessIdentityList.Items') foreach (@{ $result->CloudFrontOriginAccessIdentityList->Items });
        $result = $self->ListCloudFrontOriginAccessIdentities(@_, Marker => $result->CloudFrontOriginAccessIdentityList->NextMarker);
      }
      $callback->($_ => 'CloudFrontOriginAccessIdentityList.Items') foreach (@{ $result->CloudFrontOriginAccessIdentityList->Items });
    }

    return undef
  }
  sub ListAllDistributions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDistributions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->DistributionList->IsTruncated) {
        $next_result = $self->ListDistributions(@_, Marker => $next_result->DistributionList->NextMarker);
        push @{ $result->DistributionList->Items }, @{ $next_result->DistributionList->Items };
      }
      return $result;
    } else {
      while ($result->DistributionList->IsTruncated) {
        $callback->($_ => 'DistributionList.Items') foreach (@{ $result->DistributionList->Items });
        $result = $self->ListDistributions(@_, Marker => $result->DistributionList->NextMarker);
      }
      $callback->($_ => 'DistributionList.Items') foreach (@{ $result->DistributionList->Items });
    }

    return undef
  }
  sub ListAllInvalidations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListInvalidations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->InvalidationList->IsTruncated) {
        $next_result = $self->ListInvalidations(@_, Marker => $next_result->InvalidationList->NextMarker);
        push @{ $result->InvalidationList->Items }, @{ $next_result->InvalidationList->Items };
      }
      return $result;
    } else {
      while ($result->InvalidationList->IsTruncated) {
        $callback->($_ => 'InvalidationList.Items') foreach (@{ $result->InvalidationList->Items });
        $result = $self->ListInvalidations(@_, Marker => $result->InvalidationList->NextMarker);
      }
      $callback->($_ => 'InvalidationList.Items') foreach (@{ $result->InvalidationList->Items });
    }

    return undef
  }
  sub ListAllStreamingDistributions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListStreamingDistributions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->StreamingDistributionList->IsTruncated) {
        $next_result = $self->ListStreamingDistributions(@_, Marker => $next_result->StreamingDistributionList->NextMarker);
        push @{ $result->StreamingDistributionList->Items }, @{ $next_result->StreamingDistributionList->Items };
      }
      return $result;
    } else {
      while ($result->StreamingDistributionList->IsTruncated) {
        $callback->($_ => 'StreamingDistributionList.Items') foreach (@{ $result->StreamingDistributionList->Items });
        $result = $self->ListStreamingDistributions(@_, Marker => $result->StreamingDistributionList->NextMarker);
      }
      $callback->($_ => 'StreamingDistributionList.Items') foreach (@{ $result->StreamingDistributionList->Items });
    }

    return undef
  }


  sub operations { qw/CreateCachePolicy CreateCloudFrontOriginAccessIdentity CreateDistribution CreateDistributionWithTags CreateFieldLevelEncryptionConfig CreateFieldLevelEncryptionProfile CreateFunction CreateInvalidation CreateKeyGroup CreateMonitoringSubscription CreateOriginRequestPolicy CreatePublicKey CreateRealtimeLogConfig CreateStreamingDistribution CreateStreamingDistributionWithTags DeleteCachePolicy DeleteCloudFrontOriginAccessIdentity DeleteDistribution DeleteFieldLevelEncryptionConfig DeleteFieldLevelEncryptionProfile DeleteFunction DeleteKeyGroup DeleteMonitoringSubscription DeleteOriginRequestPolicy DeletePublicKey DeleteRealtimeLogConfig DeleteStreamingDistribution DescribeFunction GetCachePolicy GetCachePolicyConfig GetCloudFrontOriginAccessIdentity GetCloudFrontOriginAccessIdentityConfig GetDistribution GetDistributionConfig GetFieldLevelEncryption GetFieldLevelEncryptionConfig GetFieldLevelEncryptionProfile GetFieldLevelEncryptionProfileConfig GetFunction GetInvalidation GetKeyGroup GetKeyGroupConfig GetMonitoringSubscription GetOriginRequestPolicy GetOriginRequestPolicyConfig GetPublicKey GetPublicKeyConfig GetRealtimeLogConfig GetStreamingDistribution GetStreamingDistributionConfig ListCachePolicies ListCloudFrontOriginAccessIdentities ListDistributions ListDistributionsByCachePolicyId ListDistributionsByKeyGroup ListDistributionsByOriginRequestPolicyId ListDistributionsByRealtimeLogConfig ListDistributionsByWebACLId ListFieldLevelEncryptionConfigs ListFieldLevelEncryptionProfiles ListFunctions ListInvalidations ListKeyGroups ListOriginRequestPolicies ListPublicKeys ListRealtimeLogConfigs ListStreamingDistributions ListTagsForResource PublishFunction TagResource TestFunction UntagResource UpdateCachePolicy UpdateCloudFrontOriginAccessIdentity UpdateDistribution UpdateFieldLevelEncryptionConfig UpdateFieldLevelEncryptionProfile UpdateFunction UpdateKeyGroup UpdateOriginRequestPolicy UpdatePublicKey UpdateRealtimeLogConfig UpdateStreamingDistribution / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront - Perl Interface to AWS Amazon CloudFront

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('CloudFront');
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

Amazon CloudFront

This is the I<Amazon CloudFront API Reference>. This guide is for
developers who need detailed information about CloudFront API actions,
data types, and errors. For detailed information about CloudFront
features, see the I<Amazon CloudFront Developer Guide>.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31>


=head1 METHODS

=head2 CreateCachePolicy

=over

=item CachePolicyConfig => L<Paws::CloudFront::CachePolicyConfig>


=back

Each argument is described in detail in: L<Paws::CloudFront::CreateCachePolicy>

Returns: a L<Paws::CloudFront::CreateCachePolicyResult> instance

Creates a cache policy.

After you create a cache policy, you can attach it to one or more cache
behaviors. When itE<rsquo>s attached to a cache behavior, the cache
policy determines the following:

=over

=item *

The values that CloudFront includes in the I<cache key>. These values
can include HTTP headers, cookies, and URL query strings. CloudFront
uses the cache key to find an object in its cache that it can return to
the viewer.

=item *

The default, minimum, and maximum time to live (TTL) values that you
want objects to stay in the CloudFront cache.

=back

The headers, cookies, and query strings that are included in the cache
key are automatically included in requests that CloudFront sends to the
origin. CloudFront sends a request when it canE<rsquo>t find an object
in its cache that matches the requestE<rsquo>s cache key. If you want
to send values to the origin but I<not> include them in the cache key,
use C<OriginRequestPolicy>.

For more information about cache policies, see Controlling the cache
key
(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html)
in the I<Amazon CloudFront Developer Guide>.


=head2 CreateCloudFrontOriginAccessIdentity

=over

=item CloudFrontOriginAccessIdentityConfig => L<Paws::CloudFront::CloudFrontOriginAccessIdentityConfig>


=back

Each argument is described in detail in: L<Paws::CloudFront::CreateCloudFrontOriginAccessIdentity>

Returns: a L<Paws::CloudFront::CreateCloudFrontOriginAccessIdentityResult> instance

Creates a new origin access identity. If you're using Amazon S3 for
your origin, you can use an origin access identity to require users to
access your content using a CloudFront URL instead of the Amazon S3
URL. For more information about how to use origin access identities,
see Serving Private Content through CloudFront
(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html)
in the I<Amazon CloudFront Developer Guide>.


=head2 CreateDistribution

=over

=item DistributionConfig => L<Paws::CloudFront::DistributionConfig>


=back

Each argument is described in detail in: L<Paws::CloudFront::CreateDistribution>

Returns: a L<Paws::CloudFront::CreateDistributionResult> instance

Creates a new web distribution. You create a CloudFront distribution to
tell CloudFront where you want content to be delivered from, and the
details about how to track and manage content delivery. Send a C<POST>
request to the C</I<CloudFront API
version>/distribution>/C<distribution ID> resource.

When you update a distribution, there are more required fields than
when you create a distribution. When you update your distribution by
using UpdateDistribution
(https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_UpdateDistribution.html),
follow the steps included in the documentation to get the current
configuration and then make your updates. This helps to make sure that
you include all of the required fields. To view a summary, see Required
Fields for Create Distribution and Update Distribution
(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-overview-required-fields.html)
in the I<Amazon CloudFront Developer Guide>.


=head2 CreateDistributionWithTags

=over

=item DistributionConfigWithTags => L<Paws::CloudFront::DistributionConfigWithTags>


=back

Each argument is described in detail in: L<Paws::CloudFront::CreateDistributionWithTags>

Returns: a L<Paws::CloudFront::CreateDistributionWithTagsResult> instance

Create a new distribution with tags.


=head2 CreateFieldLevelEncryptionConfig

=over

=item FieldLevelEncryptionConfig => L<Paws::CloudFront::FieldLevelEncryptionConfig>


=back

Each argument is described in detail in: L<Paws::CloudFront::CreateFieldLevelEncryptionConfig>

Returns: a L<Paws::CloudFront::CreateFieldLevelEncryptionConfigResult> instance

Create a new field-level encryption configuration.


=head2 CreateFieldLevelEncryptionProfile

=over

=item FieldLevelEncryptionProfileConfig => L<Paws::CloudFront::FieldLevelEncryptionProfileConfig>


=back

Each argument is described in detail in: L<Paws::CloudFront::CreateFieldLevelEncryptionProfile>

Returns: a L<Paws::CloudFront::CreateFieldLevelEncryptionProfileResult> instance

Create a field-level encryption profile.


=head2 CreateFunction

=over

=item FunctionCode => Str

=item FunctionConfig => L<Paws::CloudFront::FunctionConfig>

=item Name => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::CreateFunction>

Returns: a L<Paws::CloudFront::CreateFunctionResult> instance

Creates a CloudFront function.

To create a function, you provide the function code and some
configuration information about the function. The response contains an
Amazon Resource Name (ARN) that uniquely identifies the function.

When you create a function, itE<rsquo>s in the C<DEVELOPMENT> stage. In
this stage, you can test the function with C<TestFunction>, and update
it with C<UpdateFunction>.

When youE<rsquo>re ready to use your function with a CloudFront
distribution, use C<PublishFunction> to copy the function from the
C<DEVELOPMENT> stage to C<LIVE>. When itE<rsquo>s live, you can attach
the function to a distributionE<rsquo>s cache behavior, using the
functionE<rsquo>s ARN.


=head2 CreateInvalidation

=over

=item DistributionId => Str

=item InvalidationBatch => L<Paws::CloudFront::InvalidationBatch>


=back

Each argument is described in detail in: L<Paws::CloudFront::CreateInvalidation>

Returns: a L<Paws::CloudFront::CreateInvalidationResult> instance

Create a new invalidation.


=head2 CreateKeyGroup

=over

=item KeyGroupConfig => L<Paws::CloudFront::KeyGroupConfig>


=back

Each argument is described in detail in: L<Paws::CloudFront::CreateKeyGroup>

Returns: a L<Paws::CloudFront::CreateKeyGroupResult> instance

Creates a key group that you can use with CloudFront signed URLs and
signed cookies
(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html).

To create a key group, you must specify at least one public key for the
key group. After you create a key group, you can reference it from one
or more cache behaviors. When you reference a key group in a cache
behavior, CloudFront requires signed URLs or signed cookies for all
requests that match the cache behavior. The URLs or cookies must be
signed with a private key whose corresponding public key is in the key
group. The signed URL or cookie contains information about which public
key CloudFront should use to verify the signature. For more
information, see Serving private content
(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html)
in the I<Amazon CloudFront Developer Guide>.


=head2 CreateMonitoringSubscription

=over

=item DistributionId => Str

=item MonitoringSubscription => L<Paws::CloudFront::MonitoringSubscription>


=back

Each argument is described in detail in: L<Paws::CloudFront::CreateMonitoringSubscription>

Returns: a L<Paws::CloudFront::CreateMonitoringSubscriptionResult> instance

Enables additional CloudWatch metrics for the specified CloudFront
distribution. The additional metrics incur an additional cost.

For more information, see Viewing additional CloudFront distribution
metrics
(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/viewing-cloudfront-metrics.html#monitoring-console.distributions-additional)
in the I<Amazon CloudFront Developer Guide>.


=head2 CreateOriginRequestPolicy

=over

=item OriginRequestPolicyConfig => L<Paws::CloudFront::OriginRequestPolicyConfig>


=back

Each argument is described in detail in: L<Paws::CloudFront::CreateOriginRequestPolicy>

Returns: a L<Paws::CloudFront::CreateOriginRequestPolicyResult> instance

Creates an origin request policy.

After you create an origin request policy, you can attach it to one or
more cache behaviors. When itE<rsquo>s attached to a cache behavior,
the origin request policy determines the values that CloudFront
includes in requests that it sends to the origin. Each request that
CloudFront sends to the origin includes the following:

=over

=item *

The request body and the URL path (without the domain name) from the
viewer request.

=item *

The headers that CloudFront automatically includes in every origin
request, including C<Host>, C<User-Agent>, and C<X-Amz-Cf-Id>.

=item *

All HTTP headers, cookies, and URL query strings that are specified in
the cache policy or the origin request policy. These can include items
from the viewer request and, in the case of headers, additional ones
that are added by CloudFront.

=back

CloudFront sends a request when it canE<rsquo>t find a valid object in
its cache that matches the request. If you want to send values to the
origin and also include them in the cache key, use C<CachePolicy>.

For more information about origin request policies, see Controlling
origin requests
(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html)
in the I<Amazon CloudFront Developer Guide>.


=head2 CreatePublicKey

=over

=item PublicKeyConfig => L<Paws::CloudFront::PublicKeyConfig>


=back

Each argument is described in detail in: L<Paws::CloudFront::CreatePublicKey>

Returns: a L<Paws::CloudFront::CreatePublicKeyResult> instance

Uploads a public key to CloudFront that you can use with signed URLs
and signed cookies
(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html),
or with field-level encryption
(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/field-level-encryption.html).


=head2 CreateRealtimeLogConfig

=over

=item EndPoints => ArrayRef[L<Paws::CloudFront::EndPoint>]

=item Fields => ArrayRef[Str|Undef]

=item Name => Str

=item SamplingRate => Int


=back

Each argument is described in detail in: L<Paws::CloudFront::CreateRealtimeLogConfig>

Returns: a L<Paws::CloudFront::CreateRealtimeLogConfigResult> instance

Creates a real-time log configuration.

After you create a real-time log configuration, you can attach it to
one or more cache behaviors to send real-time log data to the specified
Amazon Kinesis data stream.

For more information about real-time log configurations, see Real-time
logs
(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html)
in the I<Amazon CloudFront Developer Guide>.


=head2 CreateStreamingDistribution

=over

=item StreamingDistributionConfig => L<Paws::CloudFront::StreamingDistributionConfig>


=back

Each argument is described in detail in: L<Paws::CloudFront::CreateStreamingDistribution>

Returns: a L<Paws::CloudFront::CreateStreamingDistributionResult> instance

This API is deprecated. Amazon CloudFront is deprecating real-time
messaging protocol (RTMP) distributions on December 31, 2020. For more
information, read the announcement
(http://forums.aws.amazon.com/ann.jspa?annID=7356) on the Amazon
CloudFront discussion forum.


=head2 CreateStreamingDistributionWithTags

=over

=item StreamingDistributionConfigWithTags => L<Paws::CloudFront::StreamingDistributionConfigWithTags>


=back

Each argument is described in detail in: L<Paws::CloudFront::CreateStreamingDistributionWithTags>

Returns: a L<Paws::CloudFront::CreateStreamingDistributionWithTagsResult> instance

This API is deprecated. Amazon CloudFront is deprecating real-time
messaging protocol (RTMP) distributions on December 31, 2020. For more
information, read the announcement
(http://forums.aws.amazon.com/ann.jspa?annID=7356) on the Amazon
CloudFront discussion forum.


=head2 DeleteCachePolicy

=over

=item Id => Str

=item [IfMatch => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::DeleteCachePolicy>

Returns: nothing

Deletes a cache policy.

You cannot delete a cache policy if itE<rsquo>s attached to a cache
behavior. First update your distributions to remove the cache policy
from all cache behaviors, then delete the cache policy.

To delete a cache policy, you must provide the policyE<rsquo>s
identifier and version. To get these values, you can use
C<ListCachePolicies> or C<GetCachePolicy>.


=head2 DeleteCloudFrontOriginAccessIdentity

=over

=item Id => Str

=item [IfMatch => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::DeleteCloudFrontOriginAccessIdentity>

Returns: nothing

Delete an origin access identity.


=head2 DeleteDistribution

=over

=item Id => Str

=item [IfMatch => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::DeleteDistribution>

Returns: nothing

Delete a distribution.


=head2 DeleteFieldLevelEncryptionConfig

=over

=item Id => Str

=item [IfMatch => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::DeleteFieldLevelEncryptionConfig>

Returns: nothing

Remove a field-level encryption configuration.


=head2 DeleteFieldLevelEncryptionProfile

=over

=item Id => Str

=item [IfMatch => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::DeleteFieldLevelEncryptionProfile>

Returns: nothing

Remove a field-level encryption profile.


=head2 DeleteFunction

=over

=item IfMatch => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::DeleteFunction>

Returns: nothing

Deletes a CloudFront function.

You cannot delete a function if itE<rsquo>s associated with a cache
behavior. First, update your distributions to remove the function
association from all cache behaviors, then delete the function.

To delete a function, you must provide the functionE<rsquo>s name and
version (C<ETag> value). To get these values, you can use
C<ListFunctions> and C<DescribeFunction>.


=head2 DeleteKeyGroup

=over

=item Id => Str

=item [IfMatch => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::DeleteKeyGroup>

Returns: nothing

Deletes a key group.

You cannot delete a key group that is referenced in a cache behavior.
First update your distributions to remove the key group from all cache
behaviors, then delete the key group.

To delete a key group, you must provide the key groupE<rsquo>s
identifier and version. To get these values, use C<ListKeyGroups>
followed by C<GetKeyGroup> or C<GetKeyGroupConfig>.


=head2 DeleteMonitoringSubscription

=over

=item DistributionId => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::DeleteMonitoringSubscription>

Returns: a L<Paws::CloudFront::DeleteMonitoringSubscriptionResult> instance

Disables additional CloudWatch metrics for the specified CloudFront
distribution.


=head2 DeleteOriginRequestPolicy

=over

=item Id => Str

=item [IfMatch => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::DeleteOriginRequestPolicy>

Returns: nothing

Deletes an origin request policy.

You cannot delete an origin request policy if itE<rsquo>s attached to
any cache behaviors. First update your distributions to remove the
origin request policy from all cache behaviors, then delete the origin
request policy.

To delete an origin request policy, you must provide the
policyE<rsquo>s identifier and version. To get the identifier, you can
use C<ListOriginRequestPolicies> or C<GetOriginRequestPolicy>.


=head2 DeletePublicKey

=over

=item Id => Str

=item [IfMatch => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::DeletePublicKey>

Returns: nothing

Remove a public key you previously added to CloudFront.


=head2 DeleteRealtimeLogConfig

=over

=item [ARN => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::DeleteRealtimeLogConfig>

Returns: nothing

Deletes a real-time log configuration.

You cannot delete a real-time log configuration if itE<rsquo>s attached
to a cache behavior. First update your distributions to remove the
real-time log configuration from all cache behaviors, then delete the
real-time log configuration.

To delete a real-time log configuration, you can provide the
configurationE<rsquo>s name or its Amazon Resource Name (ARN). You must
provide at least one. If you provide both, CloudFront uses the name to
identify the real-time log configuration to delete.


=head2 DeleteStreamingDistribution

=over

=item Id => Str

=item [IfMatch => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::DeleteStreamingDistribution>

Returns: nothing

Delete a streaming distribution. To delete an RTMP distribution using
the CloudFront API, perform the following steps.

B<To delete an RTMP distribution using the CloudFront API>:

=over

=item 1.

Disable the RTMP distribution.

=item 2.

Submit a C<GET Streaming Distribution Config> request to get the
current configuration and the C<Etag> header for the distribution.

=item 3.

Update the XML document that was returned in the response to your C<GET
Streaming Distribution Config> request to change the value of
C<Enabled> to C<false>.

=item 4.

Submit a C<PUT Streaming Distribution Config> request to update the
configuration for your distribution. In the request body, include the
XML document that you updated in Step 3. Then set the value of the HTTP
C<If-Match> header to the value of the C<ETag> header that CloudFront
returned when you submitted the C<GET Streaming Distribution Config>
request in Step 2.

=item 5.

Review the response to the C<PUT Streaming Distribution Config> request
to confirm that the distribution was successfully disabled.

=item 6.

Submit a C<GET Streaming Distribution Config> request to confirm that
your changes have propagated. When propagation is complete, the value
of C<Status> is C<Deployed>.

=item 7.

Submit a C<DELETE Streaming Distribution> request. Set the value of the
HTTP C<If-Match> header to the value of the C<ETag> header that
CloudFront returned when you submitted the C<GET Streaming Distribution
Config> request in Step 2.

=item 8.

Review the response to your C<DELETE Streaming Distribution> request to
confirm that the distribution was successfully deleted.

=back

For information about deleting a distribution using the CloudFront
console, see Deleting a Distribution
(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/HowToDeleteDistribution.html)
in the I<Amazon CloudFront Developer Guide>.


=head2 DescribeFunction

=over

=item Name => Str

=item [Stage => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::DescribeFunction>

Returns: a L<Paws::CloudFront::DescribeFunctionResult> instance

Gets configuration information and metadata about a CloudFront
function, but not the functionE<rsquo>s code. To get a
functionE<rsquo>s code, use C<GetFunction>.

To get configuration information and metadata about a function, you
must provide the functionE<rsquo>s name and stage. To get these values,
you can use C<ListFunctions>.


=head2 GetCachePolicy

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::GetCachePolicy>

Returns: a L<Paws::CloudFront::GetCachePolicyResult> instance

Gets a cache policy, including the following metadata:

=over

=item *

The policyE<rsquo>s identifier.

=item *

The date and time when the policy was last modified.

=back

To get a cache policy, you must provide the policyE<rsquo>s identifier.
If the cache policy is attached to a distributionE<rsquo>s cache
behavior, you can get the policyE<rsquo>s identifier using
C<ListDistributions> or C<GetDistribution>. If the cache policy is not
attached to a cache behavior, you can get the identifier using
C<ListCachePolicies>.


=head2 GetCachePolicyConfig

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::GetCachePolicyConfig>

Returns: a L<Paws::CloudFront::GetCachePolicyConfigResult> instance

Gets a cache policy configuration.

To get a cache policy configuration, you must provide the
policyE<rsquo>s identifier. If the cache policy is attached to a
distributionE<rsquo>s cache behavior, you can get the policyE<rsquo>s
identifier using C<ListDistributions> or C<GetDistribution>. If the
cache policy is not attached to a cache behavior, you can get the
identifier using C<ListCachePolicies>.


=head2 GetCloudFrontOriginAccessIdentity

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::GetCloudFrontOriginAccessIdentity>

Returns: a L<Paws::CloudFront::GetCloudFrontOriginAccessIdentityResult> instance

Get the information about an origin access identity.


=head2 GetCloudFrontOriginAccessIdentityConfig

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::GetCloudFrontOriginAccessIdentityConfig>

Returns: a L<Paws::CloudFront::GetCloudFrontOriginAccessIdentityConfigResult> instance

Get the configuration information about an origin access identity.


=head2 GetDistribution

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::GetDistribution>

Returns: a L<Paws::CloudFront::GetDistributionResult> instance

Get the information about a distribution.


=head2 GetDistributionConfig

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::GetDistributionConfig>

Returns: a L<Paws::CloudFront::GetDistributionConfigResult> instance

Get the configuration information about a distribution.


=head2 GetFieldLevelEncryption

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::GetFieldLevelEncryption>

Returns: a L<Paws::CloudFront::GetFieldLevelEncryptionResult> instance

Get the field-level encryption configuration information.


=head2 GetFieldLevelEncryptionConfig

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::GetFieldLevelEncryptionConfig>

Returns: a L<Paws::CloudFront::GetFieldLevelEncryptionConfigResult> instance

Get the field-level encryption configuration information.


=head2 GetFieldLevelEncryptionProfile

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::GetFieldLevelEncryptionProfile>

Returns: a L<Paws::CloudFront::GetFieldLevelEncryptionProfileResult> instance

Get the field-level encryption profile information.


=head2 GetFieldLevelEncryptionProfileConfig

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::GetFieldLevelEncryptionProfileConfig>

Returns: a L<Paws::CloudFront::GetFieldLevelEncryptionProfileConfigResult> instance

Get the field-level encryption profile configuration information.


=head2 GetFunction

=over

=item Name => Str

=item [Stage => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::GetFunction>

Returns: a L<Paws::CloudFront::GetFunctionResult> instance

Gets the code of a CloudFront function. To get configuration
information and metadata about a function, use C<DescribeFunction>.

To get a functionE<rsquo>s code, you must provide the functionE<rsquo>s
name and stage. To get these values, you can use C<ListFunctions>.


=head2 GetInvalidation

=over

=item DistributionId => Str

=item Id => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::GetInvalidation>

Returns: a L<Paws::CloudFront::GetInvalidationResult> instance

Get the information about an invalidation.


=head2 GetKeyGroup

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::GetKeyGroup>

Returns: a L<Paws::CloudFront::GetKeyGroupResult> instance

Gets a key group, including the date and time when the key group was
last modified.

To get a key group, you must provide the key groupE<rsquo>s identifier.
If the key group is referenced in a distributionE<rsquo>s cache
behavior, you can get the key groupE<rsquo>s identifier using
C<ListDistributions> or C<GetDistribution>. If the key group is not
referenced in a cache behavior, you can get the identifier using
C<ListKeyGroups>.


=head2 GetKeyGroupConfig

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::GetKeyGroupConfig>

Returns: a L<Paws::CloudFront::GetKeyGroupConfigResult> instance

Gets a key group configuration.

To get a key group configuration, you must provide the key
groupE<rsquo>s identifier. If the key group is referenced in a
distributionE<rsquo>s cache behavior, you can get the key
groupE<rsquo>s identifier using C<ListDistributions> or
C<GetDistribution>. If the key group is not referenced in a cache
behavior, you can get the identifier using C<ListKeyGroups>.


=head2 GetMonitoringSubscription

=over

=item DistributionId => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::GetMonitoringSubscription>

Returns: a L<Paws::CloudFront::GetMonitoringSubscriptionResult> instance

Gets information about whether additional CloudWatch metrics are
enabled for the specified CloudFront distribution.


=head2 GetOriginRequestPolicy

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::GetOriginRequestPolicy>

Returns: a L<Paws::CloudFront::GetOriginRequestPolicyResult> instance

Gets an origin request policy, including the following metadata:

=over

=item *

The policyE<rsquo>s identifier.

=item *

The date and time when the policy was last modified.

=back

To get an origin request policy, you must provide the policyE<rsquo>s
identifier. If the origin request policy is attached to a
distributionE<rsquo>s cache behavior, you can get the policyE<rsquo>s
identifier using C<ListDistributions> or C<GetDistribution>. If the
origin request policy is not attached to a cache behavior, you can get
the identifier using C<ListOriginRequestPolicies>.


=head2 GetOriginRequestPolicyConfig

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::GetOriginRequestPolicyConfig>

Returns: a L<Paws::CloudFront::GetOriginRequestPolicyConfigResult> instance

Gets an origin request policy configuration.

To get an origin request policy configuration, you must provide the
policyE<rsquo>s identifier. If the origin request policy is attached to
a distributionE<rsquo>s cache behavior, you can get the policyE<rsquo>s
identifier using C<ListDistributions> or C<GetDistribution>. If the
origin request policy is not attached to a cache behavior, you can get
the identifier using C<ListOriginRequestPolicies>.


=head2 GetPublicKey

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::GetPublicKey>

Returns: a L<Paws::CloudFront::GetPublicKeyResult> instance

Gets a public key.


=head2 GetPublicKeyConfig

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::GetPublicKeyConfig>

Returns: a L<Paws::CloudFront::GetPublicKeyConfigResult> instance

Gets a public key configuration.


=head2 GetRealtimeLogConfig

=over

=item [ARN => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::GetRealtimeLogConfig>

Returns: a L<Paws::CloudFront::GetRealtimeLogConfigResult> instance

Gets a real-time log configuration.

To get a real-time log configuration, you can provide the
configurationE<rsquo>s name or its Amazon Resource Name (ARN). You must
provide at least one. If you provide both, CloudFront uses the name to
identify the real-time log configuration to get.


=head2 GetStreamingDistribution

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::GetStreamingDistribution>

Returns: a L<Paws::CloudFront::GetStreamingDistributionResult> instance

Gets information about a specified RTMP distribution, including the
distribution configuration.


=head2 GetStreamingDistributionConfig

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::GetStreamingDistributionConfig>

Returns: a L<Paws::CloudFront::GetStreamingDistributionConfigResult> instance

Get the configuration information about a streaming distribution.


=head2 ListCachePolicies

=over

=item [Marker => Str]

=item [MaxItems => Str]

=item [Type => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::ListCachePolicies>

Returns: a L<Paws::CloudFront::ListCachePoliciesResult> instance

Gets a list of cache policies.

You can optionally apply a filter to return only the managed policies
created by AWS, or only the custom policies created in your AWS
account.

You can optionally specify the maximum number of items to receive in
the response. If the total number of items in the list exceeds the
maximum that you specify, or the default maximum, the response is
paginated. To get the next page of items, send a subsequent request
that specifies the C<NextMarker> value from the current response as the
C<Marker> value in the subsequent request.


=head2 ListCloudFrontOriginAccessIdentities

=over

=item [Marker => Str]

=item [MaxItems => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::ListCloudFrontOriginAccessIdentities>

Returns: a L<Paws::CloudFront::ListCloudFrontOriginAccessIdentitiesResult> instance

Lists origin access identities.


=head2 ListDistributions

=over

=item [Marker => Str]

=item [MaxItems => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::ListDistributions>

Returns: a L<Paws::CloudFront::ListDistributionsResult> instance

List CloudFront distributions.


=head2 ListDistributionsByCachePolicyId

=over

=item CachePolicyId => Str

=item [Marker => Str]

=item [MaxItems => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::ListDistributionsByCachePolicyId>

Returns: a L<Paws::CloudFront::ListDistributionsByCachePolicyIdResult> instance

Gets a list of distribution IDs for distributions that have a cache
behavior thatE<rsquo>s associated with the specified cache policy.

You can optionally specify the maximum number of items to receive in
the response. If the total number of items in the list exceeds the
maximum that you specify, or the default maximum, the response is
paginated. To get the next page of items, send a subsequent request
that specifies the C<NextMarker> value from the current response as the
C<Marker> value in the subsequent request.


=head2 ListDistributionsByKeyGroup

=over

=item KeyGroupId => Str

=item [Marker => Str]

=item [MaxItems => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::ListDistributionsByKeyGroup>

Returns: a L<Paws::CloudFront::ListDistributionsByKeyGroupResult> instance

Gets a list of distribution IDs for distributions that have a cache
behavior that references the specified key group.

You can optionally specify the maximum number of items to receive in
the response. If the total number of items in the list exceeds the
maximum that you specify, or the default maximum, the response is
paginated. To get the next page of items, send a subsequent request
that specifies the C<NextMarker> value from the current response as the
C<Marker> value in the subsequent request.


=head2 ListDistributionsByOriginRequestPolicyId

=over

=item OriginRequestPolicyId => Str

=item [Marker => Str]

=item [MaxItems => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::ListDistributionsByOriginRequestPolicyId>

Returns: a L<Paws::CloudFront::ListDistributionsByOriginRequestPolicyIdResult> instance

Gets a list of distribution IDs for distributions that have a cache
behavior thatE<rsquo>s associated with the specified origin request
policy.

You can optionally specify the maximum number of items to receive in
the response. If the total number of items in the list exceeds the
maximum that you specify, or the default maximum, the response is
paginated. To get the next page of items, send a subsequent request
that specifies the C<NextMarker> value from the current response as the
C<Marker> value in the subsequent request.


=head2 ListDistributionsByRealtimeLogConfig

=over

=item [Marker => Str]

=item [MaxItems => Str]

=item [RealtimeLogConfigArn => Str]

=item [RealtimeLogConfigName => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::ListDistributionsByRealtimeLogConfig>

Returns: a L<Paws::CloudFront::ListDistributionsByRealtimeLogConfigResult> instance

Gets a list of distributions that have a cache behavior thatE<rsquo>s
associated with the specified real-time log configuration.

You can specify the real-time log configuration by its name or its
Amazon Resource Name (ARN). You must provide at least one. If you
provide both, CloudFront uses the name to identify the real-time log
configuration to list distributions for.

You can optionally specify the maximum number of items to receive in
the response. If the total number of items in the list exceeds the
maximum that you specify, or the default maximum, the response is
paginated. To get the next page of items, send a subsequent request
that specifies the C<NextMarker> value from the current response as the
C<Marker> value in the subsequent request.


=head2 ListDistributionsByWebACLId

=over

=item WebACLId => Str

=item [Marker => Str]

=item [MaxItems => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::ListDistributionsByWebACLId>

Returns: a L<Paws::CloudFront::ListDistributionsByWebACLIdResult> instance

List the distributions that are associated with a specified AWS WAF web
ACL.


=head2 ListFieldLevelEncryptionConfigs

=over

=item [Marker => Str]

=item [MaxItems => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::ListFieldLevelEncryptionConfigs>

Returns: a L<Paws::CloudFront::ListFieldLevelEncryptionConfigsResult> instance

List all field-level encryption configurations that have been created
in CloudFront for this account.


=head2 ListFieldLevelEncryptionProfiles

=over

=item [Marker => Str]

=item [MaxItems => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::ListFieldLevelEncryptionProfiles>

Returns: a L<Paws::CloudFront::ListFieldLevelEncryptionProfilesResult> instance

Request a list of field-level encryption profiles that have been
created in CloudFront for this account.


=head2 ListFunctions

=over

=item [Marker => Str]

=item [MaxItems => Str]

=item [Stage => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::ListFunctions>

Returns: a L<Paws::CloudFront::ListFunctionsResult> instance

Gets a list of all CloudFront functions in your AWS account.

You can optionally apply a filter to return only the functions that are
in the specified stage, either C<DEVELOPMENT> or C<LIVE>.

You can optionally specify the maximum number of items to receive in
the response. If the total number of items in the list exceeds the
maximum that you specify, or the default maximum, the response is
paginated. To get the next page of items, send a subsequent request
that specifies the C<NextMarker> value from the current response as the
C<Marker> value in the subsequent request.


=head2 ListInvalidations

=over

=item DistributionId => Str

=item [Marker => Str]

=item [MaxItems => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::ListInvalidations>

Returns: a L<Paws::CloudFront::ListInvalidationsResult> instance

Lists invalidation batches.


=head2 ListKeyGroups

=over

=item [Marker => Str]

=item [MaxItems => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::ListKeyGroups>

Returns: a L<Paws::CloudFront::ListKeyGroupsResult> instance

Gets a list of key groups.

You can optionally specify the maximum number of items to receive in
the response. If the total number of items in the list exceeds the
maximum that you specify, or the default maximum, the response is
paginated. To get the next page of items, send a subsequent request
that specifies the C<NextMarker> value from the current response as the
C<Marker> value in the subsequent request.


=head2 ListOriginRequestPolicies

=over

=item [Marker => Str]

=item [MaxItems => Str]

=item [Type => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::ListOriginRequestPolicies>

Returns: a L<Paws::CloudFront::ListOriginRequestPoliciesResult> instance

Gets a list of origin request policies.

You can optionally apply a filter to return only the managed policies
created by AWS, or only the custom policies created in your AWS
account.

You can optionally specify the maximum number of items to receive in
the response. If the total number of items in the list exceeds the
maximum that you specify, or the default maximum, the response is
paginated. To get the next page of items, send a subsequent request
that specifies the C<NextMarker> value from the current response as the
C<Marker> value in the subsequent request.


=head2 ListPublicKeys

=over

=item [Marker => Str]

=item [MaxItems => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::ListPublicKeys>

Returns: a L<Paws::CloudFront::ListPublicKeysResult> instance

List all public keys that have been added to CloudFront for this
account.


=head2 ListRealtimeLogConfigs

=over

=item [Marker => Str]

=item [MaxItems => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::ListRealtimeLogConfigs>

Returns: a L<Paws::CloudFront::ListRealtimeLogConfigsResult> instance

Gets a list of real-time log configurations.

You can optionally specify the maximum number of items to receive in
the response. If the total number of items in the list exceeds the
maximum that you specify, or the default maximum, the response is
paginated. To get the next page of items, send a subsequent request
that specifies the C<NextMarker> value from the current response as the
C<Marker> value in the subsequent request.


=head2 ListStreamingDistributions

=over

=item [Marker => Str]

=item [MaxItems => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::ListStreamingDistributions>

Returns: a L<Paws::CloudFront::ListStreamingDistributionsResult> instance

List streaming distributions.


=head2 ListTagsForResource

=over

=item Resource => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::ListTagsForResource>

Returns: a L<Paws::CloudFront::ListTagsForResourceResult> instance

List tags for a CloudFront resource.


=head2 PublishFunction

=over

=item IfMatch => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::PublishFunction>

Returns: a L<Paws::CloudFront::PublishFunctionResult> instance

Publishes a CloudFront function by copying the function code from the
C<DEVELOPMENT> stage to C<LIVE>. This automatically updates all cache
behaviors that are using this function to use the newly published copy
in the C<LIVE> stage.

When a function is published to the C<LIVE> stage, you can attach the
function to a distributionE<rsquo>s cache behavior, using the
functionE<rsquo>s Amazon Resource Name (ARN).

To publish a function, you must provide the functionE<rsquo>s name and
version (C<ETag> value). To get these values, you can use
C<ListFunctions> and C<DescribeFunction>.


=head2 TagResource

=over

=item Resource => Str

=item Tags => L<Paws::CloudFront::Tags>


=back

Each argument is described in detail in: L<Paws::CloudFront::TagResource>

Returns: nothing

Add tags to a CloudFront resource.


=head2 TestFunction

=over

=item EventObject => Str

=item IfMatch => Str

=item Name => Str

=item [Stage => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::TestFunction>

Returns: a L<Paws::CloudFront::TestFunctionResult> instance

Tests a CloudFront function.

To test a function, you provide an I<event object> that represents an
HTTP request or response that your CloudFront distribution could
receive in production. CloudFront runs the function, passing it the
event object that you provided, and returns the functionE<rsquo>s
result (the modified event object) in the response. The response also
contains function logs and error messages, if any exist. For more
information about testing functions, see Testing functions
(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/managing-functions.html#test-function)
in the I<Amazon CloudFront Developer Guide>.

To test a function, you provide the functionE<rsquo>s name and version
(C<ETag> value) along with the event object. To get the
functionE<rsquo>s name and version, you can use C<ListFunctions> and
C<DescribeFunction>.


=head2 UntagResource

=over

=item Resource => Str

=item TagKeys => L<Paws::CloudFront::TagKeys>


=back

Each argument is described in detail in: L<Paws::CloudFront::UntagResource>

Returns: nothing

Remove tags from a CloudFront resource.


=head2 UpdateCachePolicy

=over

=item CachePolicyConfig => L<Paws::CloudFront::CachePolicyConfig>

=item Id => Str

=item [IfMatch => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::UpdateCachePolicy>

Returns: a L<Paws::CloudFront::UpdateCachePolicyResult> instance

Updates a cache policy configuration.

When you update a cache policy configuration, all the fields are
updated with the values provided in the request. You cannot update some
fields independent of others. To update a cache policy configuration:

=over

=item 1.

Use C<GetCachePolicyConfig> to get the current configuration.

=item 2.

Locally modify the fields in the cache policy configuration that you
want to update.

=item 3.

Call C<UpdateCachePolicy> by providing the entire cache policy
configuration, including the fields that you modified and those that
you didnE<rsquo>t.

=back



=head2 UpdateCloudFrontOriginAccessIdentity

=over

=item CloudFrontOriginAccessIdentityConfig => L<Paws::CloudFront::CloudFrontOriginAccessIdentityConfig>

=item Id => Str

=item [IfMatch => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::UpdateCloudFrontOriginAccessIdentity>

Returns: a L<Paws::CloudFront::UpdateCloudFrontOriginAccessIdentityResult> instance

Update an origin access identity.


=head2 UpdateDistribution

=over

=item DistributionConfig => L<Paws::CloudFront::DistributionConfig>

=item Id => Str

=item [IfMatch => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::UpdateDistribution>

Returns: a L<Paws::CloudFront::UpdateDistributionResult> instance

Updates the configuration for a web distribution.

When you update a distribution, there are more required fields than
when you create a distribution. When you update your distribution by
using this API action, follow the steps here to get the current
configuration and then make your updates, to make sure that you include
all of the required fields. To view a summary, see Required Fields for
Create Distribution and Update Distribution
(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-overview-required-fields.html)
in the I<Amazon CloudFront Developer Guide>.

The update process includes getting the current distribution
configuration, updating the XML document that is returned to make your
changes, and then submitting an C<UpdateDistribution> request to make
the updates.

For information about updating a distribution using the CloudFront
console instead, see Creating a Distribution
(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-creating-console.html)
in the I<Amazon CloudFront Developer Guide>.

B<To update a web distribution using the CloudFront API>

=over

=item 1.

Submit a GetDistributionConfig
(https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_GetDistributionConfig.html)
request to get the current configuration and an C<Etag> header for the
distribution.

If you update the distribution again, you must get a new C<Etag>
header.

=item 2.

Update the XML document that was returned in the response to your
C<GetDistributionConfig> request to include your changes.

When you edit the XML file, be aware of the following:

=over

=item *

You must strip out the ETag parameter that is returned.

=item *

Additional fields are required when you update a distribution. There
may be fields included in the XML file for features that you haven't
configured for your distribution. This is expected and required to
successfully update the distribution.

=item *

You can't change the value of C<CallerReference>. If you try to change
this value, CloudFront returns an C<IllegalUpdate> error.

=item *

The new configuration replaces the existing configuration; the values
that you specify in an C<UpdateDistribution> request are not merged
into your existing configuration. When you add, delete, or replace
values in an element that allows multiple values (for example,
C<CNAME>), you must specify all of the values that you want to appear
in the updated distribution. In addition, you must update the
corresponding C<Quantity> element.

=back

=item 3.

Submit an C<UpdateDistribution> request to update the configuration for
your distribution:

=over

=item *

In the request body, include the XML document that you updated in Step
2. The request body must include an XML document with a
C<DistributionConfig> element.

=item *

Set the value of the HTTP C<If-Match> header to the value of the
C<ETag> header that CloudFront returned when you submitted the
C<GetDistributionConfig> request in Step 1.

=back

=item 4.

Review the response to the C<UpdateDistribution> request to confirm
that the configuration was successfully updated.

=item 5.

Optional: Submit a GetDistribution
(https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_GetDistribution.html)
request to confirm that your changes have propagated. When propagation
is complete, the value of C<Status> is C<Deployed>.

=back



=head2 UpdateFieldLevelEncryptionConfig

=over

=item FieldLevelEncryptionConfig => L<Paws::CloudFront::FieldLevelEncryptionConfig>

=item Id => Str

=item [IfMatch => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::UpdateFieldLevelEncryptionConfig>

Returns: a L<Paws::CloudFront::UpdateFieldLevelEncryptionConfigResult> instance

Update a field-level encryption configuration.


=head2 UpdateFieldLevelEncryptionProfile

=over

=item FieldLevelEncryptionProfileConfig => L<Paws::CloudFront::FieldLevelEncryptionProfileConfig>

=item Id => Str

=item [IfMatch => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::UpdateFieldLevelEncryptionProfile>

Returns: a L<Paws::CloudFront::UpdateFieldLevelEncryptionProfileResult> instance

Update a field-level encryption profile.


=head2 UpdateFunction

=over

=item FunctionCode => Str

=item FunctionConfig => L<Paws::CloudFront::FunctionConfig>

=item IfMatch => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::UpdateFunction>

Returns: a L<Paws::CloudFront::UpdateFunctionResult> instance

Updates a CloudFront function.

You can update a functionE<rsquo>s code or the comment that describes
the function. You cannot update a functionE<rsquo>s name.

To update a function, you provide the functionE<rsquo>s name and
version (C<ETag> value) along with the updated function code. To get
the name and version, you can use C<ListFunctions> and
C<DescribeFunction>.


=head2 UpdateKeyGroup

=over

=item Id => Str

=item KeyGroupConfig => L<Paws::CloudFront::KeyGroupConfig>

=item [IfMatch => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::UpdateKeyGroup>

Returns: a L<Paws::CloudFront::UpdateKeyGroupResult> instance

Updates a key group.

When you update a key group, all the fields are updated with the values
provided in the request. You cannot update some fields independent of
others. To update a key group:

=over

=item 1.

Get the current key group with C<GetKeyGroup> or C<GetKeyGroupConfig>.

=item 2.

Locally modify the fields in the key group that you want to update. For
example, add or remove public key IDs.

=item 3.

Call C<UpdateKeyGroup> with the entire key group object, including the
fields that you modified and those that you didnE<rsquo>t.

=back



=head2 UpdateOriginRequestPolicy

=over

=item Id => Str

=item OriginRequestPolicyConfig => L<Paws::CloudFront::OriginRequestPolicyConfig>

=item [IfMatch => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::UpdateOriginRequestPolicy>

Returns: a L<Paws::CloudFront::UpdateOriginRequestPolicyResult> instance

Updates an origin request policy configuration.

When you update an origin request policy configuration, all the fields
are updated with the values provided in the request. You cannot update
some fields independent of others. To update an origin request policy
configuration:

=over

=item 1.

Use C<GetOriginRequestPolicyConfig> to get the current configuration.

=item 2.

Locally modify the fields in the origin request policy configuration
that you want to update.

=item 3.

Call C<UpdateOriginRequestPolicy> by providing the entire origin
request policy configuration, including the fields that you modified
and those that you didnE<rsquo>t.

=back



=head2 UpdatePublicKey

=over

=item Id => Str

=item PublicKeyConfig => L<Paws::CloudFront::PublicKeyConfig>

=item [IfMatch => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::UpdatePublicKey>

Returns: a L<Paws::CloudFront::UpdatePublicKeyResult> instance

Update public key information. Note that the only value you can change
is the comment.


=head2 UpdateRealtimeLogConfig

=over

=item [ARN => Str]

=item [EndPoints => ArrayRef[L<Paws::CloudFront::EndPoint>]]

=item [Fields => ArrayRef[Str|Undef]]

=item [Name => Str]

=item [SamplingRate => Int]


=back

Each argument is described in detail in: L<Paws::CloudFront::UpdateRealtimeLogConfig>

Returns: a L<Paws::CloudFront::UpdateRealtimeLogConfigResult> instance

Updates a real-time log configuration.

When you update a real-time log configuration, all the parameters are
updated with the values provided in the request. You cannot update some
parameters independent of others. To update a real-time log
configuration:

=over

=item 1.

Call C<GetRealtimeLogConfig> to get the current real-time log
configuration.

=item 2.

Locally modify the parameters in the real-time log configuration that
you want to update.

=item 3.

Call this API (C<UpdateRealtimeLogConfig>) by providing the entire
real-time log configuration, including the parameters that you modified
and those that you didnE<rsquo>t.

=back

You cannot update a real-time log configurationE<rsquo>s C<Name> or
C<ARN>.


=head2 UpdateStreamingDistribution

=over

=item Id => Str

=item StreamingDistributionConfig => L<Paws::CloudFront::StreamingDistributionConfig>

=item [IfMatch => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::UpdateStreamingDistribution>

Returns: a L<Paws::CloudFront::UpdateStreamingDistributionResult> instance

Update a streaming distribution.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllCloudFrontOriginAccessIdentities(sub { },[Marker => Str, MaxItems => Str])

=head2 ListAllCloudFrontOriginAccessIdentities([Marker => Str, MaxItems => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - CloudFrontOriginAccessIdentityList.Items, passing the object as the first parameter, and the string 'CloudFrontOriginAccessIdentityList.Items' as the second parameter 

If not, it will return a a L<Paws::CloudFront::ListCloudFrontOriginAccessIdentitiesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDistributions(sub { },[Marker => Str, MaxItems => Str])

=head2 ListAllDistributions([Marker => Str, MaxItems => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DistributionList.Items, passing the object as the first parameter, and the string 'DistributionList.Items' as the second parameter 

If not, it will return a a L<Paws::CloudFront::ListDistributionsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllInvalidations(sub { },DistributionId => Str, [Marker => Str, MaxItems => Str])

=head2 ListAllInvalidations(DistributionId => Str, [Marker => Str, MaxItems => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - InvalidationList.Items, passing the object as the first parameter, and the string 'InvalidationList.Items' as the second parameter 

If not, it will return a a L<Paws::CloudFront::ListInvalidationsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllStreamingDistributions(sub { },[Marker => Str, MaxItems => Str])

=head2 ListAllStreamingDistributions([Marker => Str, MaxItems => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - StreamingDistributionList.Items, passing the object as the first parameter, and the string 'StreamingDistributionList.Items' as the second parameter 

If not, it will return a a L<Paws::CloudFront::ListStreamingDistributionsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

