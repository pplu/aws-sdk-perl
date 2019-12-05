
package Paws::ImageBuilder::ListImageRecipes;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::ImageBuilder::Filter]', traits => ['NameInRequest'], request_name => 'filters');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Owner => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'owner');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListImageRecipes');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ListImageRecipes');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ImageBuilder::ListImageRecipesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::ListImageRecipes - Arguments for method ListImageRecipes on L<Paws::ImageBuilder>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListImageRecipes on the
L<EC2 Image Builder|Paws::ImageBuilder> service. Use the attributes of this class
as arguments to method ListImageRecipes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListImageRecipes.

=head1 SYNOPSIS

    my $imagebuilder = Paws->service('ImageBuilder');
    my $ListImageRecipesResponse = $imagebuilder->ListImageRecipes(
      Filters => [
        {
          Name   => 'MyFilterName',              # OPTIONAL
          Values => [ 'MyFilterValue', ... ],    # min: 1, max: 10; OPTIONAL
        },
        ...
      ],                                         # OPTIONAL
      MaxResults => 1,                           # OPTIONAL
      NextToken  => 'MyNonEmptyString',          # OPTIONAL
      Owner      => 'Self',                      # OPTIONAL
    );

    # Results:
    my $ImageRecipeSummaryList =
      $ListImageRecipesResponse->ImageRecipeSummaryList;
    my $NextToken = $ListImageRecipesResponse->NextToken;
    my $RequestId = $ListImageRecipesResponse->RequestId;

    # Returns a L<Paws::ImageBuilder::ListImageRecipesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/imagebuilder/ListImageRecipes>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::ImageBuilder::Filter>]





=head2 MaxResults => Int

The maximum items to return in a request.



=head2 NextToken => Str

A token to specify where to start paginating. This is the NextToken
from a previously truncated response.



=head2 Owner => Str

The owner defines whose image recipes you wish to list. By default this
request will only show image recipes owned by your account. You may use
this field to specify if you wish to view image recipes owned by
yourself, Amazon, or those image recipes that have been shared with you
by other customers.

Valid values are: C<"Self">, C<"Shared">, C<"Amazon">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListImageRecipes in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

