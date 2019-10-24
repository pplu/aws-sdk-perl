# Generated from json/callresult_class.tt

package Paws::ECS::CreateServiceResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ECS::Types qw/ECS_Service/;
  has Service => (is => 'ro', isa => ECS_Service);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Service' => {
                              'class' => 'Paws::ECS::Service',
                              'type' => 'ECS_Service'
                            }
             },
  'NameInRequest' => {
                       'Service' => 'service'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ECS::CreateServiceResponse

=head1 ATTRIBUTES


=head2 Service => ECS_Service

The full description of your service following the create call.

If a service is using the C<ECS> deployment controller, the
C<deploymentController> and C<taskSets> parameters will not be
returned.

If the service is using the C<CODE_DEPLOY> deployment controller, the
C<deploymentController>, C<taskSets> and C<deployments> parameters will
be returned, however the C<deployments> parameter will be an empty
list.


=head2 _request_id => Str


=cut

1;