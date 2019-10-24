# Generated from json/callresult_class.tt

package Paws::ServiceDiscovery::GetOperationResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ServiceDiscovery::Types qw/ServiceDiscovery_Operation/;
  has Operation => (is => 'ro', isa => ServiceDiscovery_Operation);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Operation' => {
                                'class' => 'Paws::ServiceDiscovery::Operation',
                                'type' => 'ServiceDiscovery_Operation'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::GetOperationResponse

=head1 ATTRIBUTES


=head2 Operation => ServiceDiscovery_Operation

A complex type that contains information about the operation.


=head2 _request_id => Str


=cut

1;