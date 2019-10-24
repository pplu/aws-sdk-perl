# Generated from json/callresult_class.tt

package Paws::Personalize::DescribeRecipeResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Personalize::Types qw/Personalize_Recipe/;
  has Recipe => (is => 'ro', isa => Personalize_Recipe);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Recipe' => {
                             'class' => 'Paws::Personalize::Recipe',
                             'type' => 'Personalize_Recipe'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Recipe' => 'recipe'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Personalize::DescribeRecipeResponse

=head1 ATTRIBUTES


=head2 Recipe => Personalize_Recipe

An object that describes the recipe.


=head2 _request_id => Str


=cut

1;