# Generated from json/callresult_class.tt

package Paws::MachineLearning::DescribeTagsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MachineLearning::Types qw/MachineLearning_Tag/;
  has ResourceId => (is => 'ro', isa => Str);
  has ResourceType => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[MachineLearning_Tag]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ResourceType' => {
                                   'type' => 'Str'
                                 },
               'Tags' => {
                           'class' => 'Paws::MachineLearning::Tag',
                           'type' => 'ArrayRef[MachineLearning_Tag]'
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

Paws::MachineLearning::DescribeTagsOutput

=head1 ATTRIBUTES


=head2 ResourceId => Str

The ID of the tagged ML object.


=head2 ResourceType => Str

The type of the tagged ML object.

Valid values are: C<"BatchPrediction">, C<"DataSource">, C<"Evaluation">, C<"MLModel">
=head2 Tags => ArrayRef[MachineLearning_Tag]

A list of tags associated with the ML object.


=head2 _request_id => Str


=cut

1;