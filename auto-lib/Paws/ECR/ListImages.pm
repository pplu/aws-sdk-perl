
package Paws::ECR::ListImages;
  use Moose;
  has Filter => (is => 'ro', isa => 'Paws::ECR::ListImagesFilter', traits => ['NameInRequest'], request_name => 'filter' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has RegistryId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'registryId' );
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListImages');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECR::ListImagesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECR::ListImages - Arguments for method ListImages on L<Paws::ECR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListImages on the
L<Amazon EC2 Container Registry|Paws::ECR> service. Use the attributes of this class
as arguments to method ListImages.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListImages.

=head1 SYNOPSIS

    my $ecr = Paws->service('ECR');
    # To list all images in a repository
    # This example lists all of the images in the repository named ubuntu in the
    # default registry in the current account.
    my $ListImagesResponse = $ecr->ListImages(
      {
        'RepositoryName' => 'ubuntu'
      }
    );

    # Results:
    my $imageIds = $ListImagesResponse->imageIds;

    # Returns a L<Paws::ECR::ListImagesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecr/ListImages>

=head1 ATTRIBUTES


=head2 Filter => L<Paws::ECR::ListImagesFilter>

The filter key and value with which to filter your C<ListImages>
results.



=head2 MaxResults => Int

The maximum number of image results returned by C<ListImages> in
paginated output. When this parameter is used, C<ListImages> only
returns C<maxResults> results in a single page along with a
C<nextToken> response element. The remaining results of the initial
request can be seen by sending another C<ListImages> request with the
returned C<nextToken> value. This value can be between 1 and 1000. If
this parameter is not used, then C<ListImages> returns up to 100
results and a C<nextToken> value, if applicable.



=head2 NextToken => Str

The C<nextToken> value returned from a previous paginated C<ListImages>
request where C<maxResults> was used and the results exceeded the value
of that parameter. Pagination continues from the end of the previous
results that returned the C<nextToken> value. This value is C<null>
when there are no more results to return.

This token should be treated as an opaque identifier that is only used
to retrieve the next items in a list and not for other programmatic
purposes.



=head2 RegistryId => Str

The AWS account ID associated with the registry that contains the
repository in which to list images. If you do not specify a registry,
the default registry is assumed.



=head2 B<REQUIRED> RepositoryName => Str

The repository with image IDs to be listed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListImages in L<Paws::ECR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

