# Generated from json/callresult_class.tt

package Paws::ECS::DescribeServicesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ECS::Types qw/ECS_Service ECS_Failure/;
  has Failures => (is => 'ro', isa => ArrayRef[ECS_Failure]);
  has Services => (is => 'ro', isa => ArrayRef[ECS_Service]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Services' => 'services',
                       'Failures' => 'failures'
                     },
  'types' => {
               'Failures' => {
                               'type' => 'ArrayRef[ECS_Failure]',
                               'class' => 'Paws::ECS::Failure'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Services' => {
                               'type' => 'ArrayRef[ECS_Service]',
                               'class' => 'Paws::ECS::Service'
                             }
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