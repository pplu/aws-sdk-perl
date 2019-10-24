# Generated from callresult_class.tt

package Paws::CloudFormation::DetectStackResourceDriftOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudFormation::Types qw/CloudFormation_StackResourceDrift/;
  has StackResourceDrift => (is => 'ro', isa => CloudFormation_StackResourceDrift, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'StackResourceDrift' => {
                                         'class' => 'Paws::CloudFormation::StackResourceDrift',
                                         'type' => 'CloudFormation_StackResourceDrift'
                                       },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'StackResourceDrift' => 1
                  }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::DetectStackResourceDriftOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> StackResourceDrift => CloudFormation_StackResourceDrift

Information about whether the resource's actual configuration has
drifted from its expected template configuration, including actual and
expected property values and any differences detected.


=head2 _request_id => Str


=cut

