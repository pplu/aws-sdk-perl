# Generated from json/callresult_class.tt

package Paws::OpsWorks::RegisterInstanceResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::OpsWorks::Types qw//;
  has InstanceId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'InstanceId' => {
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


### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::RegisterInstanceResult

=head1 ATTRIBUTES


=head2 InstanceId => Str

The registered instance's AWS OpsWorks Stacks ID.


=head2 _request_id => Str


=cut

1;