
package Paws::Batch::CreateComputeEnvironmentResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Batch::Types qw//;
  has ComputeEnvironmentArn => (is => 'ro', isa => Str);
  has ComputeEnvironmentName => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ComputeEnvironmentArn' => {
                                            'type' => 'Str'
                                          },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ComputeEnvironmentName' => {
                                             'type' => 'Str'
                                           }
             },
  'NameInRequest' => {
                       'ComputeEnvironmentName' => 'computeEnvironmentName',
                       'ComputeEnvironmentArn' => 'computeEnvironmentArn'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::CreateComputeEnvironmentResponse

=head1 ATTRIBUTES


=head2 ComputeEnvironmentArn => Str

The Amazon Resource Name (ARN) of the compute environment.


=head2 ComputeEnvironmentName => Str

The name of the compute environment.


=head2 _request_id => Str


=cut

