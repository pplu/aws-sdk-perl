package Paws::ECR;
  use Moose;
  sub service { 'api.ecr' }
  sub signing_name { 'ecr' }
  sub version { '2015-09-21' }
  sub target_prefix { 'AmazonEC2ContainerRegistry_V20150921' }
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
    my $call_object = $self->new_with_coercions('Paws::ECR::BatchCheckLayerAvailability', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDeleteImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECR::BatchDeleteImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECR::BatchGetImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CompleteLayerUpload {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECR::CompleteLayerUpload', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRepository {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECR::CreateRepository', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLifecyclePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECR::DeleteLifecyclePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRepository {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECR::DeleteRepository', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRepositoryPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECR::DeleteRepositoryPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeImages {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECR::DescribeImages', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeImageScanFindings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECR::DescribeImageScanFindings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRepositories {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECR::DescribeRepositories', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAuthorizationToken {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECR::GetAuthorizationToken', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDownloadUrlForLayer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECR::GetDownloadUrlForLayer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLifecyclePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECR::GetLifecyclePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLifecyclePolicyPreview {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECR::GetLifecyclePolicyPreview', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRepositoryPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECR::GetRepositoryPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub InitiateLayerUpload {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECR::InitiateLayerUpload', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListImages {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECR::ListImages', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECR::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECR::PutImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutImageScanningConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECR::PutImageScanningConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutImageTagMutability {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECR::PutImageTagMutability', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutLifecyclePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECR::PutLifecyclePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetRepositoryPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECR::SetRepositoryPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartImageScan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECR::StartImageScan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartLifecyclePolicyPreview {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECR::StartLifecyclePolicyPreview', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECR::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECR::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UploadLayerPart {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECR::UploadLayerPart', @_);
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
  sub DescribeAllImageScanFindings {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeImageScanFindings(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeImageScanFindings(@_, nextToken => $next_result->nextToken);
        push @{ $result->imageScanFindings->findings }, @{ $next_result->imageScanFindings->findings };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'imageScanFindings.findings') foreach (@{ $result->imageScanFindings->findings });
        $result = $self->DescribeImageScanFindings(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'imageScanFindings.findings') foreach (@{ $result->imageScanFindings->findings });
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
  sub GetAllLifecyclePolicyPreview {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetLifecyclePolicyPreview(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->GetLifecyclePolicyPreview(@_, nextToken => $next_result->nextToken);
        push @{ $result->previewResults }, @{ $next_result->previewResults };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'previewResults') foreach (@{ $result->previewResults });
        $result = $self->GetLifecyclePolicyPreview(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'previewResults') foreach (@{ $result->previewResults });
    }

    return undef
  }
  sub ListAllImages {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListImages(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListImages(@_, nextToken => $next_result->nextToken);
        push @{ $result->imageIds }, @{ $next_result->imageIds };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'imageIds') foreach (@{ $result->imageIds });
        $result = $self->ListImages(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'imageIds') foreach (@{ $result->imageIds });
    }

    return undef
  }


  sub operations { qw/BatchCheckLayerAvailability BatchDeleteImage BatchGetImage CompleteLayerUpload CreateRepository DeleteLifecyclePolicy DeleteRepository DeleteRepositoryPolicy DescribeImages DescribeImageScanFindings DescribeRepositories GetAuthorizationToken GetDownloadUrlForLayer GetLifecyclePolicy GetLifecyclePolicyPreview GetRepositoryPolicy InitiateLayerUpload ListImages ListTagsForResource PutImage PutImageScanningConfiguration PutImageTagMutability PutLifecyclePolicy SetRepositoryPolicy StartImageScan StartLifecyclePolicyPreview TagResource UntagResource UploadLayerPart / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ECR - Perl Interface to AWS Amazon EC2 Container Registry

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('ECR');
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

Amazon Elastic Container Registry

Amazon Elastic Container Registry (Amazon ECR) is a managed Docker
registry service. Customers can use the familiar Docker CLI to push,
pull, and manage images. Amazon ECR provides a secure, scalable, and
reliable registry. Amazon ECR supports private Docker repositories with
resource-based permissions using IAM so that specific users or Amazon
EC2 instances can access repositories and images. Developers can use
the Docker CLI to author and manage images.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.ecr-2015-09-21>


=head1 METHODS

=head2 BatchCheckLayerAvailability

=over

=item LayerDigests => ArrayRef[Str|Undef]

=item RepositoryName => Str

=item [RegistryId => Str]


=back

Each argument is described in detail in: L<Paws::ECR::BatchCheckLayerAvailability>

Returns: a L<Paws::ECR::BatchCheckLayerAvailabilityResponse> instance

Checks the availability of one or more image layers in a repository.

When an image is pushed to a repository, each image layer is checked to
verify if it has been uploaded before. If it is, then the image layer
is skipped.

When an image is pulled from a repository, each image layer is checked
once to verify it is available to be pulled.

This operation is used by the Amazon ECR proxy, and it is not intended
for general use by customers for pulling and pushing images. In most
cases, you should use the C<docker> CLI to pull, tag, and push images.


=head2 BatchDeleteImage

=over

=item ImageIds => ArrayRef[L<Paws::ECR::ImageIdentifier>]

=item RepositoryName => Str

=item [RegistryId => Str]


=back

Each argument is described in detail in: L<Paws::ECR::BatchDeleteImage>

Returns: a L<Paws::ECR::BatchDeleteImageResponse> instance

Deletes a list of specified images within a repository. Images are
specified with either an C<imageTag> or C<imageDigest>.

You can remove a tag from an image by specifying the image's tag in
your request. When you remove the last tag from an image, the image is
deleted from your repository.

You can completely delete an image (and all of its tags) by specifying
the image's digest in your request.


=head2 BatchGetImage

=over

=item ImageIds => ArrayRef[L<Paws::ECR::ImageIdentifier>]

=item RepositoryName => Str

=item [AcceptedMediaTypes => ArrayRef[Str|Undef]]

=item [RegistryId => Str]


=back

Each argument is described in detail in: L<Paws::ECR::BatchGetImage>

Returns: a L<Paws::ECR::BatchGetImageResponse> instance

Gets detailed information for an image. Images are specified with
either an C<imageTag> or C<imageDigest>.

When an image is pulled, the BatchGetImage API is called once to
retrieve the image manifest.


=head2 CompleteLayerUpload

=over

=item LayerDigests => ArrayRef[Str|Undef]

=item RepositoryName => Str

=item UploadId => Str

=item [RegistryId => Str]


=back

Each argument is described in detail in: L<Paws::ECR::CompleteLayerUpload>

Returns: a L<Paws::ECR::CompleteLayerUploadResponse> instance

Informs Amazon ECR that the image layer upload has completed for a
specified registry, repository name, and upload ID. You can optionally
provide a C<sha256> digest of the image layer for data validation
purposes.

When an image is pushed, the CompleteLayerUpload API is called once per
each new image layer to verify that the upload has completed.

This operation is used by the Amazon ECR proxy, and it is not intended
for general use by customers for pulling and pushing images. In most
cases, you should use the C<docker> CLI to pull, tag, and push images.


=head2 CreateRepository

=over

=item RepositoryName => Str

=item [ImageScanningConfiguration => L<Paws::ECR::ImageScanningConfiguration>]

=item [ImageTagMutability => Str]

=item [Tags => ArrayRef[L<Paws::ECR::Tag>]]


=back

Each argument is described in detail in: L<Paws::ECR::CreateRepository>

Returns: a L<Paws::ECR::CreateRepositoryResponse> instance

Creates a repository. For more information, see Amazon ECR Repositories
(https://docs.aws.amazon.com/AmazonECR/latest/userguide/Repositories.html)
in the I<Amazon Elastic Container Registry User Guide>.


=head2 DeleteLifecyclePolicy

=over

=item RepositoryName => Str

=item [RegistryId => Str]


=back

Each argument is described in detail in: L<Paws::ECR::DeleteLifecyclePolicy>

Returns: a L<Paws::ECR::DeleteLifecyclePolicyResponse> instance

Deletes the lifecycle policy associated with the specified repository.


=head2 DeleteRepository

=over

=item RepositoryName => Str

=item [Force => Bool]

=item [RegistryId => Str]


=back

Each argument is described in detail in: L<Paws::ECR::DeleteRepository>

Returns: a L<Paws::ECR::DeleteRepositoryResponse> instance

Deletes a repository. If the repository contains images, you must
either delete all images in the repository or use the C<force> option
to delete the repository.


=head2 DeleteRepositoryPolicy

=over

=item RepositoryName => Str

=item [RegistryId => Str]


=back

Each argument is described in detail in: L<Paws::ECR::DeleteRepositoryPolicy>

Returns: a L<Paws::ECR::DeleteRepositoryPolicyResponse> instance

Deletes the repository policy associated with the specified repository.


=head2 DescribeImages

=over

=item RepositoryName => Str

=item [Filter => L<Paws::ECR::DescribeImagesFilter>]

=item [ImageIds => ArrayRef[L<Paws::ECR::ImageIdentifier>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [RegistryId => Str]


=back

Each argument is described in detail in: L<Paws::ECR::DescribeImages>

Returns: a L<Paws::ECR::DescribeImagesResponse> instance

Returns metadata about the images in a repository.

Beginning with Docker version 1.9, the Docker client compresses image
layers before pushing them to a V2 Docker registry. The output of the
C<docker images> command shows the uncompressed image size, so it may
return a larger image size than the image sizes returned by
DescribeImages.


=head2 DescribeImageScanFindings

=over

=item ImageId => L<Paws::ECR::ImageIdentifier>

=item RepositoryName => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [RegistryId => Str]


=back

Each argument is described in detail in: L<Paws::ECR::DescribeImageScanFindings>

Returns: a L<Paws::ECR::DescribeImageScanFindingsResponse> instance

Returns the scan findings for the specified image.


=head2 DescribeRepositories

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [RegistryId => Str]

=item [RepositoryNames => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::ECR::DescribeRepositories>

Returns: a L<Paws::ECR::DescribeRepositoriesResponse> instance

Describes image repositories in a registry.


=head2 GetAuthorizationToken

=over

=item [RegistryIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::ECR::GetAuthorizationToken>

Returns: a L<Paws::ECR::GetAuthorizationTokenResponse> instance

Retrieves an authorization token. An authorization token represents
your IAM authentication credentials and can be used to access any
Amazon ECR registry that your IAM principal has access to. The
authorization token is valid for 12 hours.

The C<authorizationToken> returned is a base64 encoded string that can
be decoded and used in a C<docker login> command to authenticate to a
registry. The AWS CLI offers an C<get-login-password> command that
simplifies the login process. For more information, see Registry
Authentication
(https://docs.aws.amazon.com/AmazonECR/latest/userguide/Registries.html#registry_auth)
in the I<Amazon Elastic Container Registry User Guide>.


=head2 GetDownloadUrlForLayer

=over

=item LayerDigest => Str

=item RepositoryName => Str

=item [RegistryId => Str]


=back

Each argument is described in detail in: L<Paws::ECR::GetDownloadUrlForLayer>

Returns: a L<Paws::ECR::GetDownloadUrlForLayerResponse> instance

Retrieves the pre-signed Amazon S3 download URL corresponding to an
image layer. You can only get URLs for image layers that are referenced
in an image.

When an image is pulled, the GetDownloadUrlForLayer API is called once
per image layer.

This operation is used by the Amazon ECR proxy, and it is not intended
for general use by customers for pulling and pushing images. In most
cases, you should use the C<docker> CLI to pull, tag, and push images.


=head2 GetLifecyclePolicy

=over

=item RepositoryName => Str

=item [RegistryId => Str]


=back

Each argument is described in detail in: L<Paws::ECR::GetLifecyclePolicy>

Returns: a L<Paws::ECR::GetLifecyclePolicyResponse> instance

Retrieves the lifecycle policy for the specified repository.


=head2 GetLifecyclePolicyPreview

=over

=item RepositoryName => Str

=item [Filter => L<Paws::ECR::LifecyclePolicyPreviewFilter>]

=item [ImageIds => ArrayRef[L<Paws::ECR::ImageIdentifier>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [RegistryId => Str]


=back

Each argument is described in detail in: L<Paws::ECR::GetLifecyclePolicyPreview>

Returns: a L<Paws::ECR::GetLifecyclePolicyPreviewResponse> instance

Retrieves the results of the lifecycle policy preview request for the
specified repository.


=head2 GetRepositoryPolicy

=over

=item RepositoryName => Str

=item [RegistryId => Str]


=back

Each argument is described in detail in: L<Paws::ECR::GetRepositoryPolicy>

Returns: a L<Paws::ECR::GetRepositoryPolicyResponse> instance

Retrieves the repository policy for the specified repository.


=head2 InitiateLayerUpload

=over

=item RepositoryName => Str

=item [RegistryId => Str]


=back

Each argument is described in detail in: L<Paws::ECR::InitiateLayerUpload>

Returns: a L<Paws::ECR::InitiateLayerUploadResponse> instance

Notifies Amazon ECR that you intend to upload an image layer.

When an image is pushed, the InitiateLayerUpload API is called once per
image layer that has not already been uploaded. Whether an image layer
has been uploaded before is determined by the
BatchCheckLayerAvailability API action.

This operation is used by the Amazon ECR proxy, and it is not intended
for general use by customers for pulling and pushing images. In most
cases, you should use the C<docker> CLI to pull, tag, and push images.


=head2 ListImages

=over

=item RepositoryName => Str

=item [Filter => L<Paws::ECR::ListImagesFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [RegistryId => Str]


=back

Each argument is described in detail in: L<Paws::ECR::ListImages>

Returns: a L<Paws::ECR::ListImagesResponse> instance

Lists all the image IDs for the specified repository.

You can filter images based on whether or not they are tagged by using
the C<tagStatus> filter and specifying either C<TAGGED>, C<UNTAGGED> or
C<ANY>. For example, you can filter your results to return only
C<UNTAGGED> images and then pipe that result to a BatchDeleteImage
operation to delete them. Or, you can filter your results to return
only C<TAGGED> images to list all of the tags in your repository.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::ECR::ListTagsForResource>

Returns: a L<Paws::ECR::ListTagsForResourceResponse> instance

List the tags for an Amazon ECR resource.


=head2 PutImage

=over

=item ImageManifest => Str

=item RepositoryName => Str

=item [ImageTag => Str]

=item [RegistryId => Str]


=back

Each argument is described in detail in: L<Paws::ECR::PutImage>

Returns: a L<Paws::ECR::PutImageResponse> instance

Creates or updates the image manifest and tags associated with an
image.

When an image is pushed and all new image layers have been uploaded,
the PutImage API is called once to create or update the image manifest
and tags associated with the image.

This operation is used by the Amazon ECR proxy, and it is not intended
for general use by customers for pulling and pushing images. In most
cases, you should use the C<docker> CLI to pull, tag, and push images.


=head2 PutImageScanningConfiguration

=over

=item ImageScanningConfiguration => L<Paws::ECR::ImageScanningConfiguration>

=item RepositoryName => Str

=item [RegistryId => Str]


=back

Each argument is described in detail in: L<Paws::ECR::PutImageScanningConfiguration>

Returns: a L<Paws::ECR::PutImageScanningConfigurationResponse> instance

Updates the image scanning configuration for the specified repository.


=head2 PutImageTagMutability

=over

=item ImageTagMutability => Str

=item RepositoryName => Str

=item [RegistryId => Str]


=back

Each argument is described in detail in: L<Paws::ECR::PutImageTagMutability>

Returns: a L<Paws::ECR::PutImageTagMutabilityResponse> instance

Updates the image tag mutability settings for the specified repository.
For more information, see Image Tag Mutability
(https://docs.aws.amazon.com/AmazonECR/latest/userguide/image-tag-mutability.html)
in the I<Amazon Elastic Container Registry User Guide>.


=head2 PutLifecyclePolicy

=over

=item LifecyclePolicyText => Str

=item RepositoryName => Str

=item [RegistryId => Str]


=back

Each argument is described in detail in: L<Paws::ECR::PutLifecyclePolicy>

Returns: a L<Paws::ECR::PutLifecyclePolicyResponse> instance

Creates or updates the lifecycle policy for the specified repository.
For more information, see Lifecycle Policy Template
(https://docs.aws.amazon.com/AmazonECR/latest/userguide/LifecyclePolicies.html).


=head2 SetRepositoryPolicy

=over

=item PolicyText => Str

=item RepositoryName => Str

=item [Force => Bool]

=item [RegistryId => Str]


=back

Each argument is described in detail in: L<Paws::ECR::SetRepositoryPolicy>

Returns: a L<Paws::ECR::SetRepositoryPolicyResponse> instance

Applies a repository policy to the specified repository to control
access permissions. For more information, see Amazon ECR Repository
Policies
(https://docs.aws.amazon.com/AmazonECR/latest/userguide/RepositoryPolicies.html)
in the I<Amazon Elastic Container Registry User Guide>.


=head2 StartImageScan

=over

=item ImageId => L<Paws::ECR::ImageIdentifier>

=item RepositoryName => Str

=item [RegistryId => Str]


=back

Each argument is described in detail in: L<Paws::ECR::StartImageScan>

Returns: a L<Paws::ECR::StartImageScanResponse> instance

Starts an image vulnerability scan. An image scan can only be started
once per day on an individual image. This limit includes if an image
was scanned on initial push. For more information, see Image Scanning
(https://docs.aws.amazon.com/AmazonECR/latest/userguide/image-scanning.html)
in the I<Amazon Elastic Container Registry User Guide>.


=head2 StartLifecyclePolicyPreview

=over

=item RepositoryName => Str

=item [LifecyclePolicyText => Str]

=item [RegistryId => Str]


=back

Each argument is described in detail in: L<Paws::ECR::StartLifecyclePolicyPreview>

Returns: a L<Paws::ECR::StartLifecyclePolicyPreviewResponse> instance

Starts a preview of a lifecycle policy for the specified repository.
This allows you to see the results before associating the lifecycle
policy with the repository.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::ECR::Tag>]


=back

Each argument is described in detail in: L<Paws::ECR::TagResource>

Returns: a L<Paws::ECR::TagResourceResponse> instance

Adds specified tags to a resource with the specified ARN. Existing tags
on a resource are not changed if they are not specified in the request
parameters.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::ECR::UntagResource>

Returns: a L<Paws::ECR::UntagResourceResponse> instance

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

Each argument is described in detail in: L<Paws::ECR::UploadLayerPart>

Returns: a L<Paws::ECR::UploadLayerPartResponse> instance

Uploads an image layer part to Amazon ECR.

When an image is pushed, each new image layer is uploaded in parts. The
maximum size of each image layer part can be 20971520 bytes (or about
20MB). The UploadLayerPart API is called once per each new image layer
part.

This operation is used by the Amazon ECR proxy, and it is not intended
for general use by customers for pulling and pushing images. In most
cases, you should use the C<docker> CLI to pull, tag, and push images.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllImages(sub { },RepositoryName => Str, [Filter => L<Paws::ECR::DescribeImagesFilter>, ImageIds => ArrayRef[L<Paws::ECR::ImageIdentifier>], MaxResults => Int, NextToken => Str, RegistryId => Str])

=head2 DescribeAllImages(RepositoryName => Str, [Filter => L<Paws::ECR::DescribeImagesFilter>, ImageIds => ArrayRef[L<Paws::ECR::ImageIdentifier>], MaxResults => Int, NextToken => Str, RegistryId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - imageDetails, passing the object as the first parameter, and the string 'imageDetails' as the second parameter 

If not, it will return a a L<Paws::ECR::DescribeImagesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllImageScanFindings(sub { },ImageId => L<Paws::ECR::ImageIdentifier>, RepositoryName => Str, [MaxResults => Int, NextToken => Str, RegistryId => Str])

=head2 DescribeAllImageScanFindings(ImageId => L<Paws::ECR::ImageIdentifier>, RepositoryName => Str, [MaxResults => Int, NextToken => Str, RegistryId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - imageScanFindings.findings, passing the object as the first parameter, and the string 'imageScanFindings.findings' as the second parameter 

If not, it will return a a L<Paws::ECR::DescribeImageScanFindingsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllRepositories(sub { },[MaxResults => Int, NextToken => Str, RegistryId => Str, RepositoryNames => ArrayRef[Str|Undef]])

=head2 DescribeAllRepositories([MaxResults => Int, NextToken => Str, RegistryId => Str, RepositoryNames => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - repositories, passing the object as the first parameter, and the string 'repositories' as the second parameter 

If not, it will return a a L<Paws::ECR::DescribeRepositoriesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllLifecyclePolicyPreview(sub { },RepositoryName => Str, [Filter => L<Paws::ECR::LifecyclePolicyPreviewFilter>, ImageIds => ArrayRef[L<Paws::ECR::ImageIdentifier>], MaxResults => Int, NextToken => Str, RegistryId => Str])

=head2 GetAllLifecyclePolicyPreview(RepositoryName => Str, [Filter => L<Paws::ECR::LifecyclePolicyPreviewFilter>, ImageIds => ArrayRef[L<Paws::ECR::ImageIdentifier>], MaxResults => Int, NextToken => Str, RegistryId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - previewResults, passing the object as the first parameter, and the string 'previewResults' as the second parameter 

If not, it will return a a L<Paws::ECR::GetLifecyclePolicyPreviewResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllImages(sub { },RepositoryName => Str, [Filter => L<Paws::ECR::ListImagesFilter>, MaxResults => Int, NextToken => Str, RegistryId => Str])

=head2 ListAllImages(RepositoryName => Str, [Filter => L<Paws::ECR::ListImagesFilter>, MaxResults => Int, NextToken => Str, RegistryId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - imageIds, passing the object as the first parameter, and the string 'imageIds' as the second parameter 

If not, it will return a a L<Paws::ECR::ListImagesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

