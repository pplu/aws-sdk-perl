# Generated from json/callresult_class.tt

package Paws::SageMaker::UpdateCodeRepositoryOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SageMaker::Types qw//;
  has CodeRepositoryArn => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'CodeRepositoryArn' => {
                                        'type' => 'Str'
                                      }
             },
  'IsRequired' => {
                    'CodeRepositoryArn' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UpdateCodeRepositoryOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CodeRepositoryArn => Str

The ARN of the Git repository.


=head2 _request_id => Str


=cut

1;