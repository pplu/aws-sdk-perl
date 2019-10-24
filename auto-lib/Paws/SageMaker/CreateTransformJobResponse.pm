# Generated from json/callresult_class.tt

package Paws::SageMaker::CreateTransformJobResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SageMaker::Types qw//;
  has TransformJobArn => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TransformJobArn' => {
                                      'type' => 'Str'
                                    },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'TransformJobArn' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateTransformJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> TransformJobArn => Str

The Amazon Resource Name (ARN) of the transform job.


=head2 _request_id => Str


=cut

1;