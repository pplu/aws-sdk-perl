
package Paws::ImageBuilder::ListImagePackages;
  use Moose;
  has ImageBuildVersionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'imageBuildVersionArn', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListImagePackages');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ListImagePackages');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ImageBuilder::ListImagePackagesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::ListImagePackages - Arguments for method ListImagePackages on L<Paws::ImageBuilder>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListImagePackages on the
L<EC2 Image Builder|Paws::ImageBuilder> service. Use the attributes of this class
as arguments to method ListImagePackages.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListImagePackages.

=head1 SYNOPSIS

    my $imagebuilder = Paws->service('ImageBuilder');
    my $ListImagePackagesResponse = $imagebuilder->ListImagePackages(
      ImageBuildVersionArn => 'MyImageBuildVersionArn',
      MaxResults           => 1,                          # OPTIONAL
      NextToken            => 'MyPaginationToken',        # OPTIONAL
    );

    # Results:
    my $ImagePackageList = $ListImagePackagesResponse->ImagePackageList;
    my $NextToken        = $ListImagePackagesResponse->NextToken;
    my $RequestId        = $ListImagePackagesResponse->RequestId;

    # Returns a L<Paws::ImageBuilder::ListImagePackagesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/imagebuilder/ListImagePackages>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ImageBuildVersionArn => Str

Filter results for the ListImagePackages request by the Image Build
Version ARN



=head2 MaxResults => Int

The maxiumum number of results to return from the ListImagePackages
request.



=head2 NextToken => Str

A token to specify where to start paginating. This is the NextToken
from a previously truncated response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListImagePackages in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

