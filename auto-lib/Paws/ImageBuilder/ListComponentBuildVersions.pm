
package Paws::ImageBuilder::ListComponentBuildVersions;
  use Moose;
  has ComponentVersionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'componentVersionArn', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListComponentBuildVersions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ListComponentBuildVersions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ImageBuilder::ListComponentBuildVersionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::ListComponentBuildVersions - Arguments for method ListComponentBuildVersions on L<Paws::ImageBuilder>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListComponentBuildVersions on the
L<EC2 Image Builder|Paws::ImageBuilder> service. Use the attributes of this class
as arguments to method ListComponentBuildVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListComponentBuildVersions.

=head1 SYNOPSIS

    my $imagebuilder = Paws->service('ImageBuilder');
    my $ListComponentBuildVersionsResponse =
      $imagebuilder->ListComponentBuildVersions(
      ComponentVersionArn => 'MyComponentVersionArn',
      MaxResults          => 1,                         # OPTIONAL
      NextToken           => 'MyNonEmptyString',        # OPTIONAL
      );

    # Results:
    my $ComponentSummaryList =
      $ListComponentBuildVersionsResponse->ComponentSummaryList;
    my $NextToken = $ListComponentBuildVersionsResponse->NextToken;
    my $RequestId = $ListComponentBuildVersionsResponse->RequestId;

   # Returns a L<Paws::ImageBuilder::ListComponentBuildVersionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/imagebuilder/ListComponentBuildVersions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ComponentVersionArn => Str

The component version arn whose versions you wish to list.



=head2 MaxResults => Int

The maximum items to return in a request.



=head2 NextToken => Str

A token to specify where to start paginating. This is the NextToken
from a previously truncated response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListComponentBuildVersions in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

