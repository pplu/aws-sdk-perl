# Generated from json/callresult_class.tt

package Paws::SageMaker::CreateModelPackageOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SageMaker::Types qw//;
  has ModelPackageArn => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ModelPackageArn' => {
                                      'type' => 'Str'
                                    }
             },
  'IsRequired' => {
                    'ModelPackageArn' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateModelPackageOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ModelPackageArn => Str

The Amazon Resource Name (ARN) of the new model package.


=head2 _request_id => Str


=cut

1;