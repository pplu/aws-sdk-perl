# Generated from json/callresult_class.tt

package Paws::Comprehend::DescribeEntityRecognizerResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Comprehend::Types qw/Comprehend_EntityRecognizerProperties/;
  has EntityRecognizerProperties => (is => 'ro', isa => Comprehend_EntityRecognizerProperties);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EntityRecognizerProperties' => {
                                                 'type' => 'Comprehend_EntityRecognizerProperties',
                                                 'class' => 'Paws::Comprehend::EntityRecognizerProperties'
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

Paws::Comprehend::DescribeEntityRecognizerResponse

=head1 ATTRIBUTES


=head2 EntityRecognizerProperties => Comprehend_EntityRecognizerProperties

Describes information associated with an entity recognizer.


=head2 _request_id => Str


=cut

1;