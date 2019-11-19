# Generated from json/callresult_class.tt

package Paws::ServiceDiscovery::GetNamespaceResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ServiceDiscovery::Types qw/ServiceDiscovery_Namespace/;
  has Namespace => (is => 'ro', isa => ServiceDiscovery_Namespace);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Namespace' => {
                                'class' => 'Paws::ServiceDiscovery::Namespace',
                                'type' => 'ServiceDiscovery_Namespace'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::GetNamespaceResponse

=head1 ATTRIBUTES


=head2 Namespace => ServiceDiscovery_Namespace

A complex type that contains information about the specified namespace.


=head2 _request_id => Str


=cut

1;