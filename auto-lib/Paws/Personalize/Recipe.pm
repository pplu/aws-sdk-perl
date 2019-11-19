# Generated from default/object.tt
package Paws::Personalize::Recipe;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Personalize::Types qw//;
  has AlgorithmArn => (is => 'ro', isa => Str);
  has CreationDateTime => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has FeatureTransformationArn => (is => 'ro', isa => Str);
  has LastUpdatedDateTime => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has RecipeArn => (is => 'ro', isa => Str);
  has RecipeType => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Status' => {
                             'type' => 'Str'
                           },
               'RecipeType' => {
                                 'type' => 'Str'
                               },
               'CreationDateTime' => {
                                       'type' => 'Str'
                                     },
               'Name' => {
                           'type' => 'Str'
                         },
               'FeatureTransformationArn' => {
                                               'type' => 'Str'
                                             },
               'Description' => {
                                  'type' => 'Str'
                                },
               'AlgorithmArn' => {
                                   'type' => 'Str'
                                 },
               'LastUpdatedDateTime' => {
                                          'type' => 'Str'
                                        },
               'RecipeArn' => {
                                'type' => 'Str'
                              }
             },
  'NameInRequest' => {
                       'RecipeType' => 'recipeType',
                       'CreationDateTime' => 'creationDateTime',
                       'Name' => 'name',
                       'Status' => 'status',
                       'RecipeArn' => 'recipeArn',
                       'FeatureTransformationArn' => 'featureTransformationArn',
                       'Description' => 'description',
                       'AlgorithmArn' => 'algorithmArn',
                       'LastUpdatedDateTime' => 'lastUpdatedDateTime'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::Recipe

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Personalize::Recipe object:

  $service_obj->Method(Att1 => { AlgorithmArn => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Personalize::Recipe object:

  $result = $service_obj->Method(...);
  $result->Att1->AlgorithmArn

=head1 DESCRIPTION

Provides information about a recipe. Each recipe provides an algorithm
that Amazon Personalize uses in model training when you use the
CreateSolution operation.

=head1 ATTRIBUTES


=head2 AlgorithmArn => Str

  The Amazon Resource Name (ARN) of the algorithm that Amazon Personalize
uses to train the model.


=head2 CreationDateTime => Str

  The date and time (in Unix format) that the recipe was created.


=head2 Description => Str

  The description of the recipe.


=head2 FeatureTransformationArn => Str

  The ARN of the FeatureTransformation object.


=head2 LastUpdatedDateTime => Str

  The date and time (in Unix format) that the recipe was last updated.


=head2 Name => Str

  The name of the recipe.


=head2 RecipeArn => Str

  The Amazon Resource Name (ARN) of the recipe.


=head2 RecipeType => Str

  One of the following values:

=over

=item *

PERSONALIZED_RANKING

=item *

RELATED_ITEMS

=item *

USER_PERSONALIZATION

=back



=head2 Status => Str

  The status of the recipe.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

