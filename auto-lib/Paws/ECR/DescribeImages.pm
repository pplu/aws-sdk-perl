
package Paws::ECR::DescribeImages;
  use Moose;
  has Filter => (is => 'ro', isa => 'Paws::ECR::DescribeImagesFilter', traits => ['NameInRequest'], request_name => 'filter' );
  has ImageIds => (is => 'ro', isa => 'ArrayRef[Paws::ECR::ImageIdentifier]', traits => ['NameInRequest'], request_name => 'imageIds' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has RegistryId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'registryId' );
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeImages');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECR::DescribeImagesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECR::DescribeImages - Arguments for method DescribeImages on L<Paws::ECR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeImages on the
L<Amazon EC2 Container Registry|Paws::ECR> service. Use the attributes of this class
as arguments to method DescribeImages.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeImages.

=head1 SYNOPSIS

    my $ecr = Paws->service('ECR');
    my $DescribeImagesResponse = $ecr->DescribeImages(
      RepositoryName => 'MyRepositoryName',
      Filter         => {
        TagStatus => 'TAGGED',    # values: TAGGED, UNTAGGED, ANY; OPTIONAL
      },    # OPTIONAL
      ImageIds => [
        {
          ImageDigest => 'MyImageDigest',    # OPTIONAL
          ImageTag    => 'MyImageTag',       # OPTIONAL
        },
        ...
      ],                                     # OPTIONAL
      MaxResults => 1,                       # OPTIONAL
      NextToken  => 'MyNextToken',           # OPTIONAL
      RegistryId => 'MyRegistryId',          # OPTIONAL
    );

    # Results:
    my $ImageDetails = $DescribeImagesResponse->ImageDetails;
    my $NextToken    = $DescribeImagesResponse->NextToken;

    # Returns a L<Paws::ECR::DescribeImagesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecr/DescribeImages>

=head1 ATTRIBUTES


=head2 Filter => L<Paws::ECR::DescribeImagesFilter>

The filter key and value with which to filter your C<DescribeImages>
results.



=head2 ImageIds => ArrayRef[L<Paws::ECR::ImageIdentifier>]

The list of image IDs for the requested repository.



=head2 MaxResults => Int

The maximum number of repository results returned by C<DescribeImages>
in paginated output. When this parameter is used, C<DescribeImages>
only returns C<maxResults> results in a single page along with a
C<nextToken> response element. The remaining results of the initial
request can be seen by sending another C<DescribeImages> request with
the returned C<nextToken> value. This value can be between 1 and 1000.
If this parameter is not used, then C<DescribeImages> returns up to 100
results and a C<nextToken> value, if applicable. This option cannot be
used when you specify images with C<imageIds>.



=head2 NextToken => Str

The C<nextToken> value returned from a previous paginated
C<DescribeImages> request where C<maxResults> was used and the results
exceeded the value of that parameter. Pagination continues from the end
of the previous results that returned the C<nextToken> value. This
value is C<null> when there are no more results to return. This option
cannot be used when you specify images with C<imageIds>.



=head2 RegistryId => Str

The AWS account ID associated with the registry that contains the
repository in which to describe images. If you do not specify a
registry, the default registry is assumed.



=head2 B<REQUIRED> RepositoryName => Str

A list of repositories to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeImages in L<Paws::ECR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

