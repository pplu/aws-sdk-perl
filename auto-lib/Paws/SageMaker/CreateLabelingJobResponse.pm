# Generated from json/callresult_class.tt

package Paws::SageMaker::CreateLabelingJobResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SageMaker::Types qw//;
  has LabelingJobArn => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'LabelingJobArn' => {
                                     'type' => 'Str'
                                   }
             },
  'IsRequired' => {
                    'LabelingJobArn' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateLabelingJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> LabelingJobArn => Str

The Amazon Resource Name (ARN) of the labeling job. You use this ARN to
identify the labeling job.


=head2 _request_id => Str


=cut

1;