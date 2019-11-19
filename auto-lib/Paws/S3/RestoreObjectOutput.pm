
package Paws::S3::RestoreObjectOutput;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::S3::Types qw//;
  has RequestCharged => (is => 'ro', isa => Str);
  has RestoreOutputPath => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RestoreOutputPath' => {
                                        'type' => 'Str'
                                      },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'RequestCharged' => {
                                     'type' => 'Str'
                                   }
             },
  'ParamInHeader' => {
                       'RequestCharged' => 'x-amz-request-charged',
                       'RestoreOutputPath' => 'x-amz-restore-output-path'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::RestoreObjectOutput

=head1 ATTRIBUTES


=head2 RequestCharged => Str



Valid values are: C<"requester">

=head2 RestoreOutputPath => Str

Indicates the path in the provided S3 output location where Select
results will be restored to.




=cut

