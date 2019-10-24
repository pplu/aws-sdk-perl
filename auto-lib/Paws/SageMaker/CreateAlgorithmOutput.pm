# Generated from json/callresult_class.tt

package Paws::SageMaker::CreateAlgorithmOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SageMaker::Types qw//;
  has AlgorithmArn => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'AlgorithmArn' => {
                                   'type' => 'Str'
                                 }
             },
  'IsRequired' => {
                    'AlgorithmArn' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateAlgorithmOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> AlgorithmArn => Str

The Amazon Resource Name (ARN) of the new algorithm.


=head2 _request_id => Str


=cut

1;