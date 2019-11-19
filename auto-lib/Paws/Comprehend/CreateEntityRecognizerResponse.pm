# Generated from json/callresult_class.tt

package Paws::Comprehend::CreateEntityRecognizerResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Comprehend::Types qw//;
  has EntityRecognizerArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EntityRecognizerArn' => {
                                          'type' => 'Str'
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

Paws::Comprehend::CreateEntityRecognizerResponse

=head1 ATTRIBUTES


=head2 EntityRecognizerArn => Str

The Amazon Resource Name (ARN) that identifies the entity recognizer.


=head2 _request_id => Str


=cut

1;