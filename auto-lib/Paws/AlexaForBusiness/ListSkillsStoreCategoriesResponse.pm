# Generated from json/callresult_class.tt

package Paws::AlexaForBusiness::ListSkillsStoreCategoriesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::AlexaForBusiness::Types qw/AlexaForBusiness_Category/;
  has CategoryList => (is => 'ro', isa => ArrayRef[AlexaForBusiness_Category]);
  has NextToken => (is => 'ro', isa => Str);

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
               'CategoryList' => {
                                   'class' => 'Paws::AlexaForBusiness::Category',
                                   'type' => 'ArrayRef[AlexaForBusiness_Category]'
                                 }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::ListSkillsStoreCategoriesResponse

=head1 ATTRIBUTES


=head2 CategoryList => ArrayRef[AlexaForBusiness_Category]

The list of categories.


=head2 NextToken => Str

The tokens used for pagination.


=head2 _request_id => Str


=cut

1;