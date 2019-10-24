# Generated from json/callresult_class.tt

package Paws::SageMaker::CreateModelOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SageMaker::Types qw//;
  has ModelArn => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ModelArn' => {
                               'type' => 'Str'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'ModelArn' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateModelOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ModelArn => Str

The ARN of the model created in Amazon SageMaker.


=head2 _request_id => Str


=cut

1;