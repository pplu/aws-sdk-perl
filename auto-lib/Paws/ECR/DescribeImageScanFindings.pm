
package Paws::ECR::DescribeImageScanFindings;
  use Moose;
  has ImageId => (is => 'ro', isa => 'Paws::ECR::ImageIdentifier', traits => ['NameInRequest'], request_name => 'imageId' , required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has RegistryId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'registryId' );
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeImageScanFindings');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECR::DescribeImageScanFindingsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECR::DescribeImageScanFindings - Arguments for method DescribeImageScanFindings on L<Paws::ECR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeImageScanFindings on the
L<Amazon EC2 Container Registry|Paws::ECR> service. Use the attributes of this class
as arguments to method DescribeImageScanFindings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeImageScanFindings.

=head1 SYNOPSIS

    my $api.ecr = Paws->service('ECR');
    my $DescribeImageScanFindingsResponse =
      $api . ecr->DescribeImageScanFindings(
      ImageId => {
        ImageDigest => 'MyImageDigest',    # OPTIONAL
        ImageTag    => 'MyImageTag',       # min: 1, max: 300; OPTIONAL
      },
      RepositoryName => 'MyRepositoryName',
      MaxResults     => 1,                    # OPTIONAL
      NextToken      => 'MyNextToken',        # OPTIONAL
      RegistryId     => 'MyRegistryId',       # OPTIONAL
      );

    # Results:
    my $ImageId = $DescribeImageScanFindingsResponse->ImageId;
    my $ImageScanFindings =
      $DescribeImageScanFindingsResponse->ImageScanFindings;
    my $ImageScanStatus = $DescribeImageScanFindingsResponse->ImageScanStatus;
    my $NextToken       = $DescribeImageScanFindingsResponse->NextToken;
    my $RegistryId      = $DescribeImageScanFindingsResponse->RegistryId;
    my $RepositoryName  = $DescribeImageScanFindingsResponse->RepositoryName;

    # Returns a L<Paws::ECR::DescribeImageScanFindingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.ecr/DescribeImageScanFindings>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ImageId => L<Paws::ECR::ImageIdentifier>





=head2 MaxResults => Int

The maximum number of image scan results returned by
C<DescribeImageScanFindings> in paginated output. When this parameter
is used, C<DescribeImageScanFindings> only returns C<maxResults>
results in a single page along with a C<nextToken> response element.
The remaining results of the initial request can be seen by sending
another C<DescribeImageScanFindings> request with the returned
C<nextToken> value. This value can be between 1 and 1000. If this
parameter is not used, then C<DescribeImageScanFindings> returns up to
100 results and a C<nextToken> value, if applicable.



=head2 NextToken => Str

The C<nextToken> value returned from a previous paginated
C<DescribeImageScanFindings> request where C<maxResults> was used and
the results exceeded the value of that parameter. Pagination continues
from the end of the previous results that returned the C<nextToken>
value. This value is null when there are no more results to return.



=head2 RegistryId => Str

The AWS account ID associated with the registry that contains the
repository in which to describe the image scan findings for. If you do
not specify a registry, the default registry is assumed.



=head2 B<REQUIRED> RepositoryName => Str

The repository for the image for which to describe the scan findings.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeImageScanFindings in L<Paws::ECR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

