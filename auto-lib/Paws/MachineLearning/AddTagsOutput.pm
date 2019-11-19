# Generated from json/callresult_class.tt

package Paws::MachineLearning::AddTagsOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MachineLearning::Types qw//;
  has ResourceId => (is => 'ro', isa => Str);
  has ResourceType => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceId' => {
                                 'type' => 'Str'
                               },
               'ResourceType' => {
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

Paws::MachineLearning::AddTagsOutput

=head1 ATTRIBUTES


=head2 ResourceId => Str

The ID of the ML object that was tagged.


=head2 ResourceType => Str

The type of the ML object that was tagged.

Valid values are: C<"BatchPrediction">, C<"DataSource">, C<"Evaluation">, C<"MLModel">
=head2 _request_id => Str


=cut

1;