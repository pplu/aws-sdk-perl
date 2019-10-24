# Generated from json/callresult_class.tt

package Paws::CodeDeploy::PutLifecycleEventHookExecutionStatusOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeDeploy::Types qw//;
  has LifecycleEventHookExecutionId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'LifecycleEventHookExecutionId' => {
                                                    'type' => 'Str'
                                                  }
             },
  'NameInRequest' => {
                       'LifecycleEventHookExecutionId' => 'lifecycleEventHookExecutionId'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::PutLifecycleEventHookExecutionStatusOutput

=head1 ATTRIBUTES


=head2 LifecycleEventHookExecutionId => Str

The execution ID of the lifecycle event hook. A hook is specified in
the C<hooks> section of the deployment's AppSpec file.


=head2 _request_id => Str


=cut

1;