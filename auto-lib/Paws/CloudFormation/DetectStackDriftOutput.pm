# Generated from callresult_class.tt

package Paws::CloudFormation::DetectStackDriftOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudFormation::Types qw//;
  has StackDriftDetectionId => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'StackDriftDetectionId' => 1
                  },
  'types' => {
               'StackDriftDetectionId' => {
                                            'type' => 'Str'
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

Paws::CloudFormation::DetectStackDriftOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> StackDriftDetectionId => Str

The ID of the drift detection results of this operation.

AWS CloudFormation generates new results, with a new drift detection
ID, each time this operation is run. However, the number of drift
results AWS CloudFormation retains for any given stack, and for how
long, may vary.


=head2 _request_id => Str


=cut

