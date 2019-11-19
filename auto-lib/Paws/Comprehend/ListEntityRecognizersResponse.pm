# Generated from json/callresult_class.tt

package Paws::Comprehend::ListEntityRecognizersResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Comprehend::Types qw/Comprehend_EntityRecognizerProperties/;
  has EntityRecognizerPropertiesList => (is => 'ro', isa => ArrayRef[Comprehend_EntityRecognizerProperties]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EntityRecognizerPropertiesList' => {
                                                     'type' => 'ArrayRef[Comprehend_EntityRecognizerProperties]',
                                                     'class' => 'Paws::Comprehend::EntityRecognizerProperties'
                                                   },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::ListEntityRecognizersResponse

=head1 ATTRIBUTES


=head2 EntityRecognizerPropertiesList => ArrayRef[Comprehend_EntityRecognizerProperties]

The list of properties of an entity recognizer.


=head2 NextToken => Str

Identifies the next page of results to return.


=head2 _request_id => Str


=cut

1;