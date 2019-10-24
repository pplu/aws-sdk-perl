# Generated from json/callresult_class.tt

package Paws::DataPipeline::EvaluateExpressionOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DataPipeline::Types qw//;
  has EvaluatedExpression => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EvaluatedExpression' => {
                                          'type' => 'Str'
                                        },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'EvaluatedExpression' => 'evaluatedExpression'
                     },
  'IsRequired' => {
                    'EvaluatedExpression' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::EvaluateExpressionOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> EvaluatedExpression => Str

The evaluated expression.


=head2 _request_id => Str


=cut

1;