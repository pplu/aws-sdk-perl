package Paws::ECRPublic;
  use Moose;
  sub service { 'api.ecr-public' }
  sub signing_name { 'ecr-public' }
  sub version { '2020-10-30' }
  sub target_prefix { 'SpencerFrontendService' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub BatchCheckLayerAvailability {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECRPublic::BatchCheckLayerAvailability', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDeleteImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECRPublic::BatchDeleteImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CompleteLayerUpload {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECRPublic::CompleteLayerUpload', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRepository {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECRPublic::CreateRepository', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRepository {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECRPublic::DeleteRepository', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRepositoryPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECRPublic::DeleteRepositoryPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeImages {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECRPublic::DescribeImages', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeImageTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECRPublic::DescribeImageTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRegistries {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECRPublic::DescribeRegistries', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRepositories {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECRPublic::DescribeRepositories', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAuthorizationToken {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECRPublic::GetAuthorizationToken', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRegistryCatalogData {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECRPublic::GetRegistryCatalogData', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRepositoryCatalogData {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECRPublic::GetRepositoryCatalogData', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRepositoryPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECRPublic::GetRepositoryPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub InitiateLayerUpload {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECRPublic::InitiateLayerUpload', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECRPublic::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECRPublic::PutImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutRegistryCatalogData {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECRPublic::PutRegistryCatalogData', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutRepositoryCatalogData {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECRPublic::PutRepositoryCatalogData', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetRepositoryPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECRPublic::SetRepositoryPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECRPublic::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECRPublic::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UploadLayerPart {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECRPublic::UploadLayerPart', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllImages {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeImages(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeImages(@_, nextToken => $next_result->nextToken);
        push @{ $result->imageDetails }, @{ $next_result->imageDetails };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'imageDetails') foreach (@{ $result->imageDetails });
        $result = $self->DescribeImages(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'imageDetails') foreach (@{ $result->imageDetails });
    }

    return undef
  }
  sub DescribeAllImageTags {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeImageTags(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeImageTags(@_, nextToken => $next_result->nextToken);
        push @{ $result->imageTagDetails }, @{ $next_result->imageTagDetails };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'imageTagDetails') foreach (@{ $result->imageTagDetails });
        $result = $self->DescribeImageTags(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'imageTagDetails') foreach (@{ $result->imageTagDetails });
    }

    return undef
  }
  sub DescribeAllRegistries {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeRegistries(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeRegistries(@_, nextToken => $next_result->nextToken);
        push @{ $result->registries }, @{ $next_result->registries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'registries') foreach (@{ $result->registries });
        $result = $self->DescribeRegistries(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'registries') foreach (@{ $result->registries });
    }

    return undef
  }
  sub DescribeAllRepositories {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeRepositories(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeRepositories(@_, nextToken => $next_result->nextToken);
        push @{ $result->repositories }, @{ $next_result->repositories };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'repositories') foreach (@{ $result->repositories });
        $result = $self->DescribeRepositories(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'repositories') foreach (@{ $result->repositories });
    }

    return undef
  }


  sub operations { qw/BatchCheckLayerAvailability BatchDeleteImage CompleteLayerUpload CreateRepository DeleteRepository DeleteRepositoryPolicy DescribeImages DescribeImageTags DescribeRegistries DescribeRepositories GetAuthorizationToken GetRegistryCatalogData GetRepositoryCatalogData GetRepositoryPolicy InitiateLayerUpload ListTagsForResource PutImage PutRegistryCatalogData PutRepositoryCatalogData SetRepositoryPolicy TagResource UntagResource UploadLayerPart / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ECRPublic - Perl Interface to AWS Amazon Elastic Container Registry Public

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('ECRPublic');
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

Amazon Elastic Container Registry Public

Amazon Elastic Container Registry (Amazon ECR) is a managed container
image registry service. Amazon ECR provides both public and private
registries to host your container images. You can use the familiar
Docker CLI, or their preferred client, to push, pull, and manage
images. Amazon ECR provides a secure, scalable, and reliable registry
for your Docker or Open Container Initiative (OCI) images. Amazon ECR
supports public repositories with this API. For information about the
Amazon ECR API for private repositories, see Amazon Elastic Container
Registry API Reference
(https://docs.aws.amazon.com/AmazonECR/latest/APIReference/Welcome.html).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.ecr-public-2020-10-30>


=head1 METHODS

=head2 BatchCheckLayerAvailability

=over

=item LayerDigests => ArrayRef[Str|Undef]

=item RepositoryName => Str

=item [RegistryId => Str]


=back

Each argument is described in detail in: L<Paws::ECRPublic::BatchCheckLayerAvailability>

Returns: a L<Paws::ECRPublic::BatchCheckLayerAvailabilityResponse> instance

Checks the availability of one or more image layers within a repository
in a public registry. When an image is pushed to a repository, each
image layer is checked to verify if it has been uploaded before. If it
has been uploaded, then the image layer is skipped.

This operation is used by the Amazon ECR proxy and is not generally
used by customers for pulling and pushing images. In most cases, you
should use the C<docker> CLI to pull, tag, and push images.


=head2 BatchDeleteImage

=over

=item ImageIds => ArrayRef[L<Paws::ECRPublic::ImageIdentifier>]

=item RepositoryName => Str

=item [RegistryId => Str]


=back

Each argument is described in detail in: L<Paws::ECRPublic::BatchDeleteImage>

Returns: a L<Paws::ECRPublic::BatchDeleteImageResponse> instance

Deletes a list of specified images within a repository in a public
registry. Images are specified with either an C<imageTag> or
C<imageDigest>.

You can remove a tag from an image by specifying the image's tag in
your request. When you remove the last tag from an image, the image is
deleted from your repository.

You can completely delete an image (and all of its tags) by specifying
the image's digest in your request.


=head2 CompleteLayerUpload

=over

=item LayerDigests => ArrayRef[Str|Undef]

=item RepositoryName => Str

=item UploadId => Str

=item [RegistryId => Str]


=back

Each argument is described in detail in: L<Paws::ECRPublic::CompleteLayerUpload>

Returns: a L<Paws::ECRPublic::CompleteLayerUploadResponse> instance

Informs Amazon ECR that the image layer upload has completed for a
specified public registry, repository name, and upload ID. You can
optionally provide a C<sha256> digest of the image layer for data
validation purposes.

When an image is pushed, the CompleteLayerUpload API is called once per
each new image layer to verify that the upload has completed.

This operation is used by the Amazon ECR proxy and is not generally
used by customers for pulling and pushing images. In most cases, you
should use the C<docker> CLI to pull, tag, and push images.


=head2 CreateRepository

=over

=item RepositoryName => Str

=item [CatalogData => L<Paws::ECRPublic::RepositoryCatalogDataInput>]

=item [Tags => ArrayRef[L<Paws::ECRPublic::Tag>]]


=back

Each argument is described in detail in: L<Paws::ECRPublic::CreateRepository>

Returns: a L<Paws::ECRPublic::CreateRepositoryResponse> instance

Creates a repository in a public registry. For more information, see
Amazon ECR repositories
(https://docs.aws.amazon.com/AmazonECR/latest/userguide/Repositories.html)
in the I<Amazon Elastic Container Registry User Guide>.


=head2 DeleteRepository

=over

=item RepositoryName => Str

=item [Force => Bool]

=item [RegistryId => Str]


=back

Each argument is described in detail in: L<Paws::ECRPublic::DeleteRepository>

Returns: a L<Paws::ECRPublic::DeleteRepositoryResponse> instance

Deletes a repository in a public registry. If the repository contains
images, you must either delete all images in the repository or use the
C<force> option which deletes all images on your behalf before deleting
the repository.


=head2 DeleteRepositoryPolicy

=over

=item RepositoryName => Str

=item [RegistryId => Str]


=back

Each argument is described in detail in: L<Paws::ECRPublic::DeleteRepositoryPolicy>

Returns: a L<Paws::ECRPublic::DeleteRepositoryPolicyResponse> instance

Deletes the repository policy associated with the specified repository.


=head2 DescribeImages

=over

=item RepositoryName => Str

=item [ImageIds => ArrayRef[L<Paws::ECRPublic::ImageIdentifier>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [RegistryId => Str]


=back

Each argument is described in detail in: L<Paws::ECRPublic::DescribeImages>

Returns: a L<Paws::ECRPublic::DescribeImagesResponse> instance

Returns metadata about the images in a repository in a public registry.

Beginning with Docker version 1.9, the Docker client compresses image
layers before pushing them to a V2 Docker registry. The output of the
C<docker images> command shows the uncompressed image size, so it may
return a larger image size than the image sizes returned by
DescribeImages.


=head2 DescribeImageTags

=over

=item RepositoryName => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [RegistryId => Str]


=back

Each argument is described in detail in: L<Paws::ECRPublic::DescribeImageTags>

Returns: a L<Paws::ECRPublic::DescribeImageTagsResponse> instance

Returns the image tag details for a repository in a public registry.


=head2 DescribeRegistries

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ECRPublic::DescribeRegistries>

Returns: a L<Paws::ECRPublic::DescribeRegistriesResponse> instance

Returns details for a public registry.


=head2 DescribeRepositories

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [RegistryId => Str]

=item [RepositoryNames => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::ECRPublic::DescribeRepositories>

Returns: a L<Paws::ECRPublic::DescribeRepositoriesResponse> instance

Describes repositories in a public registry.


=head2 GetAuthorizationToken






Each argument is described in detail in: L<Paws::ECRPublic::GetAuthorizationToken>

Returns: a L<Paws::ECRPublic::GetAuthorizationTokenResponse> instance

Retrieves an authorization token. An authorization token represents
your IAM authentication credentials and can be used to access any
Amazon ECR registry that your IAM principal has access to. The
authorization token is valid for 12 hours. This API requires the
C<ecr-public:GetAuthorizationToken> and C<sts:GetServiceBearerToken>
permissions.


=head2 GetRegistryCatalogData






Each argument is described in detail in: L<Paws::ECRPublic::GetRegistryCatalogData>

Returns: a L<Paws::ECRPublic::GetRegistryCatalogDataResponse> instance

Retrieves catalog metadata for a public registry.


=head2 GetRepositoryCatalogData

=over

=item RepositoryName => Str

=item [RegistryId => Str]


=back

Each argument is described in detail in: L<Paws::ECRPublic::GetRepositoryCatalogData>

Returns: a L<Paws::ECRPublic::GetRepositoryCatalogDataResponse> instance

Retrieve catalog metadata for a repository in a public registry. This
metadata is displayed publicly in the Amazon ECR Public Gallery.


=head2 GetRepositoryPolicy

=over

=item RepositoryName => Str

=item [RegistryId => Str]


=back

Each argument is described in detail in: L<Paws::ECRPublic::GetRepositoryPolicy>

Returns: a L<Paws::ECRPublic::GetRepositoryPolicyResponse> instance

Retrieves the repository policy for the specified repository.


=head2 InitiateLayerUpload

=over

=item RepositoryName => Str

=item [RegistryId => Str]


=back

Each argument is described in detail in: L<Paws::ECRPublic::InitiateLayerUpload>

Returns: a L<Paws::ECRPublic::InitiateLayerUploadResponse> instance

Notifies Amazon ECR that you intend to upload an image layer.

When an image is pushed, the InitiateLayerUpload API is called once per
image layer that has not already been uploaded. Whether or not an image
layer has been uploaded is determined by the
BatchCheckLayerAvailability API action.

This operation is used by the Amazon ECR proxy and is not generally
used by customers for pulling and pushing images. In most cases, you
should use the C<docker> CLI to pull, tag, and push images.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::ECRPublic::ListTagsForResource>

Returns: a L<Paws::ECRPublic::ListTagsForResourceResponse> instance

List the tags for an Amazon ECR Public resource.


=head2 PutImage

=over

=item ImageManifest => Str

=item RepositoryName => Str

=item [ImageDigest => Str]

=item [ImageManifestMediaType => Str]

=item [ImageTag => Str]

=item [RegistryId => Str]


=back

Each argument is described in detail in: L<Paws::ECRPublic::PutImage>

Returns: a L<Paws::ECRPublic::PutImageResponse> instance

Creates or updates the image manifest and tags associated with an
image.

When an image is pushed and all new image layers have been uploaded,
the PutImage API is called once to create or update the image manifest
and the tags associated with the image.

This operation is used by the Amazon ECR proxy and is not generally
used by customers for pulling and pushing images. In most cases, you
should use the C<docker> CLI to pull, tag, and push images.


=head2 PutRegistryCatalogData

=over

=item [DisplayName => Str]


=back

Each argument is described in detail in: L<Paws::ECRPublic::PutRegistryCatalogData>

Returns: a L<Paws::ECRPublic::PutRegistryCatalogDataResponse> instance

Create or updates the catalog data for a public registry.


=head2 PutRepositoryCatalogData

=over

=item CatalogData => L<Paws::ECRPublic::RepositoryCatalogDataInput>

=item RepositoryName => Str

=item [RegistryId => Str]


=back

Each argument is described in detail in: L<Paws::ECRPublic::PutRepositoryCatalogData>

Returns: a L<Paws::ECRPublic::PutRepositoryCatalogDataResponse> instance

Creates or updates the catalog data for a repository in a public
registry.


=head2 SetRepositoryPolicy

=over

=item PolicyText => Str

=item RepositoryName => Str

=item [Force => Bool]

=item [RegistryId => Str]


=back

Each argument is described in detail in: L<Paws::ECRPublic::SetRepositoryPolicy>

Returns: a L<Paws::ECRPublic::SetRepositoryPolicyResponse> instance

Applies a repository policy to the specified public repository to
control access permissions. For more information, see Amazon ECR
Repository Policies
(https://docs.aws.amazon.com/AmazonECR/latest/userguide/repository-policies.html)
in the I<Amazon Elastic Container Registry User Guide>.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::ECRPublic::Tag>]


=back

Each argument is described in detail in: L<Paws::ECRPublic::TagResource>

Returns: a L<Paws::ECRPublic::TagResourceResponse> instance

Associates the specified tags to a resource with the specified
C<resourceArn>. If existing tags on a resource are not specified in the
request parameters, they are not changed. When a resource is deleted,
the tags associated with that resource are deleted as well.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::ECRPublic::UntagResource>

Returns: a L<Paws::ECRPublic::UntagResourceResponse> instance

Deletes specified tags from a resource.


=head2 UploadLayerPart

=over

=item LayerPartBlob => Str

=item PartFirstByte => Int

=item PartLastByte => Int

=item RepositoryName => Str

=item UploadId => Str

=item [RegistryId => Str]


=back

Each argument is described in detail in: L<Paws::ECRPublic::UploadLayerPart>

Returns: a L<Paws::ECRPublic::UploadLayerPartResponse> instance

Uploads an image layer part to Amazon ECR.

When an image is pushed, each new image layer is uploaded in parts. The
maximum size of each image layer part can be 20971520 bytes (or about
20MB). The UploadLayerPart API is called once per each new image layer
part.

This operation is used by the Amazon ECR proxy and is not generally
used by customers for pulling and pushing images. In most cases, you
should use the C<docker> CLI to pull, tag, and push images.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllImages(sub { },RepositoryName => Str, [ImageIds => ArrayRef[L<Paws::ECRPublic::ImageIdentifier>], MaxResults => Int, NextToken => Str, RegistryId => Str])

=head2 DescribeAllImages(RepositoryName => Str, [ImageIds => ArrayRef[L<Paws::ECRPublic::ImageIdentifier>], MaxResults => Int, NextToken => Str, RegistryId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - imageDetails, passing the object as the first parameter, and the string 'imageDetails' as the second parameter 

If not, it will return a a L<Paws::ECRPublic::DescribeImagesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllImageTags(sub { },RepositoryName => Str, [MaxResults => Int, NextToken => Str, RegistryId => Str])

=head2 DescribeAllImageTags(RepositoryName => Str, [MaxResults => Int, NextToken => Str, RegistryId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - imageTagDetails, passing the object as the first parameter, and the string 'imageTagDetails' as the second parameter 

If not, it will return a a L<Paws::ECRPublic::DescribeImageTagsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllRegistries(sub { },[MaxResults => Int, NextToken => Str])

=head2 DescribeAllRegistries([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - registries, passing the object as the first parameter, and the string 'registries' as the second parameter 

If not, it will return a a L<Paws::ECRPublic::DescribeRegistriesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllRepositories(sub { },[MaxResults => Int, NextToken => Str, RegistryId => Str, RepositoryNames => ArrayRef[Str|Undef]])

=head2 DescribeAllRepositories([MaxResults => Int, NextToken => Str, RegistryId => Str, RepositoryNames => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - repositories, passing the object as the first parameter, and the string 'repositories' as the second parameter 

If not, it will return a a L<Paws::ECRPublic::DescribeRepositoriesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

