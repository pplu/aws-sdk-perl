# Generated from json/callresult_class.tt

package Paws::ECS::DescribeServicesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ECS::Types qw/ECS_Failure ECS_Service/;
  has Failures => (is => 'ro', isa => ArrayRef[ECS_Failure]);
  has Services => (is => 'ro', isa => ArrayRef[ECS_Service]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Failures' => {
                               'class' => 'Paws::ECS::Failure',
                               'type' => 'ArrayRef[ECS_Failure]'
                             },
               'Services' => {
                               'class' => 'Paws::ECS::Service',
                               'type' => 'ArrayRef[ECS_Service]'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Failures' => 'failures',
                       'Services' => 'services'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ECS::DescribeServicesResponse

=head1 ATTRIBUTES


=head2 Failures => ArrayRef[ECS_Failure]

Any failures associated with the call.


=head2 Services => ArrayRef[ECS_Service]

The list of services described.


=head2 _request_id => Str


=cut

1;