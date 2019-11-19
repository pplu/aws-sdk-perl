# Generated from json/callresult_class.tt

package Paws::MachineLearning::DeleteTagsOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MachineLearning::Types qw//;
  has ResourceId => (is => 'ro', isa => Str);
  has ResourceType => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceType' => {
                                   'type' => 'Str'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ResourceId' => {
                                 'type' => 'Str'
                               }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::MachineLearning::DeleteTagsOutput

=head1 ATTRIBUTES


=head2 ResourceId => Str

The ID of the ML object from which tags were deleted.


=head2 ResourceType => Str

The type of the ML object from which tags were deleted.

Valid values are: C<"BatchPrediction">, C<"DataSource">, C<"Evaluation">, C<"MLModel">
=head2 _request_id => Str


=cut

1;