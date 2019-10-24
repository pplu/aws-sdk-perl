
package Paws::S3Control::DescribeJobResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::S3Control::Types qw/S3Control_JobDescriptor/;
  has Job => (is => 'ro', isa => S3Control_JobDescriptor);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Job' => {
                          'class' => 'Paws::S3Control::JobDescriptor',
                          'type' => 'S3Control_JobDescriptor'
                        },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::DescribeJobResult

=head1 ATTRIBUTES


=head2 Job => S3Control_JobDescriptor

Contains the configuration parameters and status for the job specified
in the C<Describe Job> request.




=cut

