# Generated from json/callresult_class.tt

package Paws::Personalize::ListRecipesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Personalize::Types qw/Personalize_RecipeSummary/;
  has NextToken => (is => 'ro', isa => Str);
  has Recipes => (is => 'ro', isa => ArrayRef[Personalize_RecipeSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Recipes' => {
                              'class' => 'Paws::Personalize::RecipeSummary',
                              'type' => 'ArrayRef[Personalize_RecipeSummary]'
                            }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Recipes' => 'recipes'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Personalize::ListRecipesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token for getting the next set of recipes.


=head2 Recipes => ArrayRef[Personalize_RecipeSummary]

The list of available recipes.


=head2 _request_id => Str


=cut

1;