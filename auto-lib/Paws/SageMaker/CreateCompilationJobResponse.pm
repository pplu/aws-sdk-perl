# Generated from json/callresult_class.tt

package Paws::SageMaker::CreateCompilationJobResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SageMaker::Types qw//;
  has CompilationJobArn => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'CompilationJobArn' => {
                                        'type' => 'Str'
                                      }
             },
  'IsRequired' => {
                    'CompilationJobArn' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateCompilationJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CompilationJobArn => Str

If the action is successful, the service sends back an HTTP 200
response. Amazon SageMaker returns the following data in JSON format:

=over

=item *

C<CompilationJobArn>: The Amazon Resource Name (ARN) of the compiled
job.

=back



=head2 _request_id => Str


=cut

1;