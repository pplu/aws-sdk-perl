
package Paws::ImageBuilder::ListImageBuildVersions;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::ImageBuilder::Filter]', traits => ['NameInRequest'], request_name => 'filters');
  has ImageVersionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'imageVersionArn', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListImageBuildVersions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ListImageBuildVersions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ImageBuilder::ListImageBuildVersionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::ListImageBuildVersions - Arguments for method ListImageBuildVersions on L<Paws::ImageBuilder>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListImageBuildVersions on the
L<EC2 Image Builder|Paws::ImageBuilder> service. Use the attributes of this class
as arguments to method ListImageBuildVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListImageBuildVersions.

=head1 SYNOPSIS

    my $imagebuilder = Paws->service('ImageBuilder');
    my $ListImageBuildVersionsResponse = $imagebuilder->ListImageBuildVersions(
      ImageVersionArn => 'MyImageVersionArn',
      Filters         => [
        {
          Name   => 'MyFilterName',              # OPTIONAL
          Values => [ 'MyFilterValue', ... ],    # min: 1, max: 10; OPTIONAL
        },
        ...
      ],                                         # OPTIONAL
      MaxResults => 1,                           # OPTIONAL
      NextToken  => 'MyNonEmptyString',          # OPTIONAL
    );

    # Results:
    my $ImageSummaryList = $ListImageBuildVersionsResponse->ImageSummaryList;
    my $NextToken        = $ListImageBuildVersionsResponse->NextToken;
    my $RequestId        = $ListImageBuildVersionsResponse->RequestId;

    # Returns a L<Paws::ImageBuilder::ListImageBuildVersionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/imagebuilder/ListImageBuildVersions>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::ImageBuilder::Filter>]





=head2 B<REQUIRED> ImageVersionArn => Str

The Amazon Resource Name (ARN) of the image whose build versions you
wish to retrieve.



=head2 MaxResults => Int

The maximum items to return in a request.



=head2 NextToken => Str

A token to specify where to start paginating. This is the NextToken
from a previously truncated response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListImageBuildVersions in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

