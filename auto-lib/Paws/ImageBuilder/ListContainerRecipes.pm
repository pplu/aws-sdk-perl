
package Paws::ImageBuilder::ListContainerRecipes;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::ImageBuilder::Filter]', traits => ['NameInRequest'], request_name => 'filters');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Owner => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'owner');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListContainerRecipes');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ListContainerRecipes');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ImageBuilder::ListContainerRecipesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::ListContainerRecipes - Arguments for method ListContainerRecipes on L<Paws::ImageBuilder>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListContainerRecipes on the
L<EC2 Image Builder|Paws::ImageBuilder> service. Use the attributes of this class
as arguments to method ListContainerRecipes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListContainerRecipes.

=head1 SYNOPSIS

    my $imagebuilder = Paws->service('ImageBuilder');
    my $ListContainerRecipesResponse = $imagebuilder->ListContainerRecipes(
      Filters => [
        {
          Name   => 'MyFilterName',              # OPTIONAL
          Values => [ 'MyFilterValue', ... ],    # min: 1, max: 10; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,                     # OPTIONAL
      NextToken  => 'MyNonEmptyString',    # OPTIONAL
      Owner      => 'Self',                # OPTIONAL
    );

    # Results:
    my $ContainerRecipeSummaryList =
      $ListContainerRecipesResponse->ContainerRecipeSummaryList;
    my $NextToken = $ListContainerRecipesResponse->NextToken;
    my $RequestId = $ListContainerRecipesResponse->RequestId;

    # Returns a L<Paws::ImageBuilder::ListContainerRecipesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/imagebuilder/ListContainerRecipes>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::ImageBuilder::Filter>]

Request filters that are used to narrow the list of container images
that are returned.



=head2 MaxResults => Int

The maximum number of results to return in the list.



=head2 NextToken => Str

Provides a token for pagination, which determines where to begin the
next set of results when the current set reaches the maximum for one
request.



=head2 Owner => Str

Returns container recipes belonging to the specified owner, that have
been shared with you. You can omit this field to return container
recipes belonging to your account.

Valid values are: C<"Self">, C<"Shared">, C<"Amazon">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListContainerRecipes in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

