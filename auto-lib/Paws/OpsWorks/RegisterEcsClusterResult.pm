# Generated from json/callresult_class.tt

package Paws::OpsWorks::RegisterEcsClusterResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::OpsWorks::Types qw//;
  has EcsClusterArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'EcsClusterArn' => {
                                    'type' => 'Str'
                                  }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::RegisterEcsClusterResult

=head1 ATTRIBUTES


=head2 EcsClusterArn => Str

The cluster's ARN.


=head2 _request_id => Str


=cut

1;