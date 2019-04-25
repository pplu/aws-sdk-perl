package Paws::CloudFront;
  warn "Paws::CloudFront is not stable / supported / entirely developed" unless $ENV{'PAWS_SILENCE_UNSTABLE_WARNINGS'};
  use Moose;
  sub service { 'cloudfront' }
  sub signing_name { 'cloudfront' }
  sub version { '2018-11-05' }
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
  sub CreateInvalidation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::CreateInvalidation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePublicKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::CreatePublicKey', @_);
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
  sub DeletePublicKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::DeletePublicKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteStreamingDistribution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::DeleteStreamingDistribution', @_);
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
  sub GetInvalidation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetInvalidation', @_);
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
  sub ListInvalidations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListInvalidations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPublicKeys {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListPublicKeys', @_);
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
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::UntagResource', @_);
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
  sub UpdatePublicKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::UpdatePublicKey', @_);
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


  sub operations { qw/CreateCloudFrontOriginAccessIdentity CreateDistribution CreateDistributionWithTags CreateFieldLevelEncryptionConfig CreateFieldLevelEncryptionProfile CreateInvalidation CreatePublicKey CreateStreamingDistribution CreateStreamingDistributionWithTags DeleteCloudFrontOriginAccessIdentity DeleteDistribution DeleteFieldLevelEncryptionConfig DeleteFieldLevelEncryptionProfile DeletePublicKey DeleteStreamingDistribution GetCloudFrontOriginAccessIdentity GetCloudFrontOriginAccessIdentityConfig GetDistribution GetDistributionConfig GetFieldLevelEncryption GetFieldLevelEncryptionConfig GetFieldLevelEncryptionProfile GetFieldLevelEncryptionProfileConfig GetInvalidation GetPublicKey GetPublicKeyConfig GetStreamingDistribution GetStreamingDistributionConfig ListCloudFrontOriginAccessIdentities ListDistributions ListDistributionsByWebACLId ListFieldLevelEncryptionConfigs ListFieldLevelEncryptionProfiles ListInvalidations ListPublicKeys ListStreamingDistributions ListTagsForResource TagResource UntagResource UpdateCloudFrontOriginAccessIdentity UpdateDistribution UpdateFieldLevelEncryptionConfig UpdateFieldLevelEncryptionProfile UpdatePublicKey UpdateStreamingDistribution / }

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

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-11-05>


=head1 METHODS

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
(http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html)
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
using UpdateDistribution, follow the steps included in the
documentation to get the current configuration and then make your
updates. This helps to make sure that you include all of the required
fields. To view a summary, see Required Fields for Create Distribution
and Update Distribution
(http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-overview-required-fields.html)
in the I<Amazon CloudFront Developer Guide>.

If you are using Adobe Flash Media Server's RTMP protocol, you set up a
different kind of CloudFront distribution. For more information, see
CreateStreamingDistribution.


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


=head2 CreateInvalidation

=over

=item DistributionId => Str

=item InvalidationBatch => L<Paws::CloudFront::InvalidationBatch>


=back

Each argument is described in detail in: L<Paws::CloudFront::CreateInvalidation>

Returns: a L<Paws::CloudFront::CreateInvalidationResult> instance

Create a new invalidation.


=head2 CreatePublicKey

=over

=item PublicKeyConfig => L<Paws::CloudFront::PublicKeyConfig>


=back

Each argument is described in detail in: L<Paws::CloudFront::CreatePublicKey>

Returns: a L<Paws::CloudFront::CreatePublicKeyResult> instance

Add a new public key to CloudFront to use, for example, for field-level
encryption. You can add a maximum of 10 public keys with one AWS
account.


=head2 CreateStreamingDistribution

=over

=item StreamingDistributionConfig => L<Paws::CloudFront::StreamingDistributionConfig>


=back

Each argument is described in detail in: L<Paws::CloudFront::CreateStreamingDistribution>

Returns: a L<Paws::CloudFront::CreateStreamingDistributionResult> instance

Creates a new RMTP distribution. An RTMP distribution is similar to a
web distribution, but an RTMP distribution streams media files using
the Adobe Real-Time Messaging Protocol (RTMP) instead of serving files
using HTTP.

To create a new web distribution, submit a C<POST> request to the
I<CloudFront API version>/distribution resource. The request body must
include a document with a I<StreamingDistributionConfig> element. The
response echoes the C<StreamingDistributionConfig> element and returns
other information about the RTMP distribution.

To get the status of your request, use the I<GET StreamingDistribution>
API action. When the value of C<Enabled> is C<true> and the value of
C<Status> is C<Deployed>, your distribution is ready. A distribution
usually deploys in less than 15 minutes.

For more information about web distributions, see Working with RTMP
Distributions
(http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-rtmp.html)
in the I<Amazon CloudFront Developer Guide>.

Beginning with the 2012-05-05 version of the CloudFront API, we made
substantial changes to the format of the XML document that you include
in the request body when you create or update a web distribution or an
RTMP distribution, and when you invalidate objects. With previous
versions of the API, we discovered that it was too easy to accidentally
delete one or more values for an element that accepts multiple values,
for example, CNAMEs and trusted signers. Our changes for the 2012-05-05
release are intended to prevent these accidental deletions and to
notify you when there's a mismatch between the number of values you say
you're specifying in the C<Quantity> element and the number of values
specified.


=head2 CreateStreamingDistributionWithTags

=over

=item StreamingDistributionConfigWithTags => L<Paws::CloudFront::StreamingDistributionConfigWithTags>


=back

Each argument is described in detail in: L<Paws::CloudFront::CreateStreamingDistributionWithTags>

Returns: a L<Paws::CloudFront::CreateStreamingDistributionWithTagsResult> instance

Create a new streaming distribution with tags.


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


=head2 DeletePublicKey

=over

=item Id => Str

=item [IfMatch => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::DeletePublicKey>

Returns: nothing

Remove a public key you previously added to CloudFront.


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
(http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/HowToDeleteDistribution.html)
in the I<Amazon CloudFront Developer Guide>.


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


=head2 GetInvalidation

=over

=item DistributionId => Str

=item Id => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::GetInvalidation>

Returns: a L<Paws::CloudFront::GetInvalidationResult> instance

Get the information about an invalidation.


=head2 GetPublicKey

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::GetPublicKey>

Returns: a L<Paws::CloudFront::GetPublicKeyResult> instance

Get the public key information.


=head2 GetPublicKeyConfig

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::GetPublicKeyConfig>

Returns: a L<Paws::CloudFront::GetPublicKeyConfigResult> instance

Return public key configuration informaation


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

List distributions.


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


=head2 ListInvalidations

=over

=item DistributionId => Str

=item [Marker => Str]

=item [MaxItems => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::ListInvalidations>

Returns: a L<Paws::CloudFront::ListInvalidationsResult> instance

Lists invalidation batches.


=head2 ListPublicKeys

=over

=item [Marker => Str]

=item [MaxItems => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::ListPublicKeys>

Returns: a L<Paws::CloudFront::ListPublicKeysResult> instance

List all public keys that have been added to CloudFront for this
account.


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


=head2 TagResource

=over

=item Resource => Str

=item Tags => L<Paws::CloudFront::Tags>


=back

Each argument is described in detail in: L<Paws::CloudFront::TagResource>

Returns: nothing

Add tags to a CloudFront resource.


=head2 UntagResource

=over

=item Resource => Str

=item TagKeys => L<Paws::CloudFront::TagKeys>


=back

Each argument is described in detail in: L<Paws::CloudFront::UntagResource>

Returns: nothing

Remove tags from a CloudFront resource.


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
(http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-overview-required-fields.html)
in the I<Amazon CloudFront Developer Guide>.

The update process includes getting the current distribution
configuration, updating the XML document that is returned to make your
changes, and then submitting an C<UpdateDistribution> request to make
the updates.

For information about updating a distribution using the CloudFront
console instead, see Creating a Distribution
(http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-creating-console.html)
in the I<Amazon CloudFront Developer Guide>.

B<To update a web distribution using the CloudFront API>

=over

=item 1.

Submit a GetDistributionConfig request to get the current configuration
and an C<Etag> header for the distribution.

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

Optional: Submit a GetDistribution request to confirm that your changes
have propagated. When propagation is complete, the value of C<Status>
is C<Deployed>.

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

