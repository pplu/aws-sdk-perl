# Generated from json/callresult_class.tt

package Paws::SageMaker::GetSearchSuggestionsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SageMaker::Types qw/SageMaker_PropertyNameSuggestion/;
  has PropertyNameSuggestions => (is => 'ro', isa => ArrayRef[SageMaker_PropertyNameSuggestion]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PropertyNameSuggestions' => {
                                              'class' => 'Paws::SageMaker::PropertyNameSuggestion',
                                              'type' => 'ArrayRef[SageMaker_PropertyNameSuggestion]'
                                            },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::GetSearchSuggestionsResponse

=head1 ATTRIBUTES


=head2 PropertyNameSuggestions => ArrayRef[SageMaker_PropertyNameSuggestion]

A list of property names for a C<Resource> that match a
C<SuggestionQuery>.


=head2 _request_id => Str


=cut

1;