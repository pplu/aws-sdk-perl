# Generated from json/callargs_class.tt

package Paws::Personalize::DescribeRecipe;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Personalize::Types qw//;
  has RecipeArn => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeRecipe');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Personalize::DescribeRecipeResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'RecipeArn' => 1
                  },
  'NameInRequest' => {
                       'RecipeArn' => 'recipeArn'
                     },
  'types' => {
               'RecipeArn' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::DescribeRecipe - Arguments for method DescribeRecipe on L<Paws::Personalize>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeRecipe on the
L<Amazon Personalize|Paws::Personalize> service. Use the attributes of this class
as arguments to method DescribeRecipe.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeRecipe.

=head1 SYNOPSIS

    my $personalize = Paws->service('Personalize');
    my $DescribeRecipeResponse = $personalize->DescribeRecipe(
      RecipeArn => 'MyArn',

    );

    # Results:
    my $Recipe = $DescribeRecipeResponse->Recipe;

    # Returns a L<Paws::Personalize::DescribeRecipeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/personalize/DescribeRecipe>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RecipeArn => Str

The Amazon Resource Name (ARN) of the recipe to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeRecipe in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

