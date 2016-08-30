package Paws::CloudFront;
  warn "Paws::CloudFront is not stable / supported / entirely developed";
  use Moose;
  sub service { 'cloudfront' }
  sub version { '2016-08-01' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestXmlCaller', 'Paws::Net::RestXMLResponse';

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
  sub CreateInvalidation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::CreateInvalidation', @_);
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
  sub GetInvalidation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetInvalidation', @_);
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
  sub ListInvalidations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListInvalidations', @_);
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
  sub UpdateStreamingDistribution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::UpdateStreamingDistribution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllCloudFrontOriginAccessIdentities {
    my $self = shift;

    my $result = $self->ListCloudFrontOriginAccessIdentities(@_);
    my $params = {};
    
    $params->{ CloudFrontOriginAccessIdentityList.Items } = $result->CloudFrontOriginAccessIdentityList->Items;
    

    
    while ($result->CloudFrontOriginAccessIdentityList.IsTruncated) {
      $result = $self->ListCloudFrontOriginAccessIdentities(@_, Marker => $result->CloudFrontOriginAccessIdentityList->NextMarker);
      
      push @{ $params->{ CloudFrontOriginAccessIdentityList.Items } }, @{ $result->CloudFrontOriginAccessIdentityList->Items };
      
    }
    

    return $self->new_with_coercions(Paws::CloudFront::ListCloudFrontOriginAccessIdentities->_returns, %$params);
  }
  sub ListAllDistributions {
    my $self = shift;

    my $result = $self->ListDistributions(@_);
    my $params = {};
    
    $params->{ DistributionList.Items } = $result->DistributionList->Items;
    

    
    while ($result->DistributionList.IsTruncated) {
      $result = $self->ListDistributions(@_, Marker => $result->DistributionList->NextMarker);
      
      push @{ $params->{ DistributionList.Items } }, @{ $result->DistributionList->Items };
      
    }
    

    return $self->new_with_coercions(Paws::CloudFront::ListDistributions->_returns, %$params);
  }
  sub ListAllInvalidations {
    my $self = shift;

    my $result = $self->ListInvalidations(@_);
    my $params = {};
    
    $params->{ InvalidationList.Items } = $result->InvalidationList->Items;
    

    
    while ($result->InvalidationList.IsTruncated) {
      $result = $self->ListInvalidations(@_, Marker => $result->InvalidationList->NextMarker);
      
      push @{ $params->{ InvalidationList.Items } }, @{ $result->InvalidationList->Items };
      
    }
    

    return $self->new_with_coercions(Paws::CloudFront::ListInvalidations->_returns, %$params);
  }
  sub ListAllStreamingDistributions {
    my $self = shift;

    my $result = $self->ListStreamingDistributions(@_);
    my $params = {};
    
    $params->{ StreamingDistributionList.Items } = $result->StreamingDistributionList->Items;
    

    
    while ($result->StreamingDistributionList.IsTruncated) {
      $result = $self->ListStreamingDistributions(@_, Marker => $result->StreamingDistributionList->NextMarker);
      
      push @{ $params->{ StreamingDistributionList.Items } }, @{ $result->StreamingDistributionList->Items };
      
    }
    

    return $self->new_with_coercions(Paws::CloudFront::ListStreamingDistributions->_returns, %$params);
  }


  sub operations { qw/CreateCloudFrontOriginAccessIdentity CreateDistribution CreateDistributionWithTags CreateInvalidation CreateStreamingDistribution CreateStreamingDistributionWithTags DeleteCloudFrontOriginAccessIdentity DeleteDistribution DeleteStreamingDistribution GetCloudFrontOriginAccessIdentity GetCloudFrontOriginAccessIdentityConfig GetDistribution GetDistributionConfig GetInvalidation GetStreamingDistribution GetStreamingDistributionConfig ListCloudFrontOriginAccessIdentities ListDistributions ListDistributionsByWebACLId ListInvalidations ListStreamingDistributions ListTagsForResource TagResource UntagResource UpdateCloudFrontOriginAccessIdentity UpdateDistribution UpdateStreamingDistribution / }

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

Amazon CloudFront is a global content delivery network (CDN) service
that accelerates delivery of your websites, APIs, video content or
other web assets. It integrates with other Amazon Web Services products
to give developers and businesses an easy way to accelerate content to
end users with no minimum usage commitments.

=head1 METHODS

=head2 CreateCloudFrontOriginAccessIdentity(CloudFrontOriginAccessIdentityConfig => L<Paws::CloudFront::CloudFrontOriginAccessIdentityConfig>)

Each argument is described in detail in: L<Paws::CloudFront::CreateCloudFrontOriginAccessIdentity>

Returns: a L<Paws::CloudFront::CreateCloudFrontOriginAccessIdentityResult> instance

  Create a new origin access identity.


=head2 CreateDistribution(DistributionConfig => L<Paws::CloudFront::DistributionConfig>)

Each argument is described in detail in: L<Paws::CloudFront::CreateDistribution>

Returns: a L<Paws::CloudFront::CreateDistributionResult> instance

  Create a new distribution.


=head2 CreateDistributionWithTags(DistributionConfigWithTags => L<Paws::CloudFront::DistributionConfigWithTags>)

Each argument is described in detail in: L<Paws::CloudFront::CreateDistributionWithTags>

Returns: a L<Paws::CloudFront::CreateDistributionWithTagsResult> instance

  Create a new distribution with tags.


=head2 CreateInvalidation(DistributionId => Str, InvalidationBatch => L<Paws::CloudFront::InvalidationBatch>)

Each argument is described in detail in: L<Paws::CloudFront::CreateInvalidation>

Returns: a L<Paws::CloudFront::CreateInvalidationResult> instance

  Create a new invalidation.


=head2 CreateStreamingDistribution(StreamingDistributionConfig => L<Paws::CloudFront::StreamingDistributionConfig>)

Each argument is described in detail in: L<Paws::CloudFront::CreateStreamingDistribution>

Returns: a L<Paws::CloudFront::CreateStreamingDistributionResult> instance

  Create a new streaming distribution.


=head2 CreateStreamingDistributionWithTags(StreamingDistributionConfigWithTags => L<Paws::CloudFront::StreamingDistributionConfigWithTags>)

Each argument is described in detail in: L<Paws::CloudFront::CreateStreamingDistributionWithTags>

Returns: a L<Paws::CloudFront::CreateStreamingDistributionWithTagsResult> instance

  Create a new streaming distribution with tags.


=head2 DeleteCloudFrontOriginAccessIdentity(Id => Str, [IfMatch => Str])

Each argument is described in detail in: L<Paws::CloudFront::DeleteCloudFrontOriginAccessIdentity>

Returns: nothing

  Delete an origin access identity.


=head2 DeleteDistribution(Id => Str, [IfMatch => Str])

Each argument is described in detail in: L<Paws::CloudFront::DeleteDistribution>

Returns: nothing

  Delete a distribution.


=head2 DeleteStreamingDistribution(Id => Str, [IfMatch => Str])

Each argument is described in detail in: L<Paws::CloudFront::DeleteStreamingDistribution>

Returns: nothing

  Delete a streaming distribution.


=head2 GetCloudFrontOriginAccessIdentity(Id => Str)

Each argument is described in detail in: L<Paws::CloudFront::GetCloudFrontOriginAccessIdentity>

Returns: a L<Paws::CloudFront::GetCloudFrontOriginAccessIdentityResult> instance

  Get the information about an origin access identity.


=head2 GetCloudFrontOriginAccessIdentityConfig(Id => Str)

Each argument is described in detail in: L<Paws::CloudFront::GetCloudFrontOriginAccessIdentityConfig>

Returns: a L<Paws::CloudFront::GetCloudFrontOriginAccessIdentityConfigResult> instance

  Get the configuration information about an origin access identity.


=head2 GetDistribution(Id => Str)

Each argument is described in detail in: L<Paws::CloudFront::GetDistribution>

Returns: a L<Paws::CloudFront::GetDistributionResult> instance

  Get the information about a distribution.


=head2 GetDistributionConfig(Id => Str)

Each argument is described in detail in: L<Paws::CloudFront::GetDistributionConfig>

Returns: a L<Paws::CloudFront::GetDistributionConfigResult> instance

  Get the configuration information about a distribution.


=head2 GetInvalidation(DistributionId => Str, Id => Str)

Each argument is described in detail in: L<Paws::CloudFront::GetInvalidation>

Returns: a L<Paws::CloudFront::GetInvalidationResult> instance

  Get the information about an invalidation.


=head2 GetStreamingDistribution(Id => Str)

Each argument is described in detail in: L<Paws::CloudFront::GetStreamingDistribution>

Returns: a L<Paws::CloudFront::GetStreamingDistributionResult> instance

  Get the information about a streaming distribution.


=head2 GetStreamingDistributionConfig(Id => Str)

Each argument is described in detail in: L<Paws::CloudFront::GetStreamingDistributionConfig>

Returns: a L<Paws::CloudFront::GetStreamingDistributionConfigResult> instance

  Get the configuration information about a streaming distribution.


=head2 ListCloudFrontOriginAccessIdentities([Marker => Str, MaxItems => Str])

Each argument is described in detail in: L<Paws::CloudFront::ListCloudFrontOriginAccessIdentities>

Returns: a L<Paws::CloudFront::ListCloudFrontOriginAccessIdentitiesResult> instance

  List origin access identities.


=head2 ListDistributions([Marker => Str, MaxItems => Str])

Each argument is described in detail in: L<Paws::CloudFront::ListDistributions>

Returns: a L<Paws::CloudFront::ListDistributionsResult> instance

  List distributions.


=head2 ListDistributionsByWebACLId(WebACLId => Str, [Marker => Str, MaxItems => Str])

Each argument is described in detail in: L<Paws::CloudFront::ListDistributionsByWebACLId>

Returns: a L<Paws::CloudFront::ListDistributionsByWebACLIdResult> instance

  List the distributions that are associated with a specified AWS WAF web
ACL.


=head2 ListInvalidations(DistributionId => Str, [Marker => Str, MaxItems => Str])

Each argument is described in detail in: L<Paws::CloudFront::ListInvalidations>

Returns: a L<Paws::CloudFront::ListInvalidationsResult> instance

  List invalidation batches.


=head2 ListStreamingDistributions([Marker => Str, MaxItems => Str])

Each argument is described in detail in: L<Paws::CloudFront::ListStreamingDistributions>

Returns: a L<Paws::CloudFront::ListStreamingDistributionsResult> instance

  List streaming distributions.


=head2 ListTagsForResource(Resource => Str)

Each argument is described in detail in: L<Paws::CloudFront::ListTagsForResource>

Returns: a L<Paws::CloudFront::ListTagsForResourceResult> instance

  List tags for a CloudFront resource.


=head2 TagResource(Resource => Str, Tags => L<Paws::CloudFront::Tags>)

Each argument is described in detail in: L<Paws::CloudFront::TagResource>

Returns: nothing

  Add tags to a CloudFront resource.


=head2 UntagResource(Resource => Str, TagKeys => L<Paws::CloudFront::TagKeys>)

Each argument is described in detail in: L<Paws::CloudFront::UntagResource>

Returns: nothing

  Remove tags from a CloudFront resource.


=head2 UpdateCloudFrontOriginAccessIdentity(CloudFrontOriginAccessIdentityConfig => L<Paws::CloudFront::CloudFrontOriginAccessIdentityConfig>, Id => Str, [IfMatch => Str])

Each argument is described in detail in: L<Paws::CloudFront::UpdateCloudFrontOriginAccessIdentity>

Returns: a L<Paws::CloudFront::UpdateCloudFrontOriginAccessIdentityResult> instance

  Update an origin access identity.


=head2 UpdateDistribution(DistributionConfig => L<Paws::CloudFront::DistributionConfig>, Id => Str, [IfMatch => Str])

Each argument is described in detail in: L<Paws::CloudFront::UpdateDistribution>

Returns: a L<Paws::CloudFront::UpdateDistributionResult> instance

  Update a distribution.


=head2 UpdateStreamingDistribution(Id => Str, StreamingDistributionConfig => L<Paws::CloudFront::StreamingDistributionConfig>, [IfMatch => Str])

Each argument is described in detail in: L<Paws::CloudFront::UpdateStreamingDistribution>

Returns: a L<Paws::CloudFront::UpdateStreamingDistributionResult> instance

  Update a streaming distribution.


=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

