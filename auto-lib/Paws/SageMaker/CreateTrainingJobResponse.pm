# Generated from json/callresult_class.tt

package Paws::SageMaker::CreateTrainingJobResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SageMaker::Types qw//;
  has TrainingJobArn => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TrainingJobArn' => {
                                     'type' => 'Str'
                                   },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'TrainingJobArn' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateTrainingJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> TrainingJobArn => Str

The Amazon Resource Name (ARN) of the training job.


=head2 _request_id => Str


=cut

1;