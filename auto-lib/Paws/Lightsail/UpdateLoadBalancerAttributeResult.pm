# Generated from json/callresult_class.tt

package Paws::Lightsail::UpdateLoadBalancerAttributeResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Lightsail::Types qw/Lightsail_Operation/;
  has Operations => (is => 'ro', isa => ArrayRef[Lightsail_Operation]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Operations' => 'operations'
                     },
  'types' => {
               'Operations' => {
                                 'type' => 'ArrayRef[Lightsail_Operation]',
                                 'class' => 'Paws::Lightsail::Operation'
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

Paws::Lightsail::UpdateLoadBalancerAttributeResult

=head1 ATTRIBUTES


=head2 Operations => ArrayRef[Lightsail_Operation]

An object describing the API operations.


=head2 _request_id => Str


=cut

1;