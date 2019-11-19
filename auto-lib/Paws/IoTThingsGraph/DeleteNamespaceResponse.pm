# Generated from json/callresult_class.tt

package Paws::IoTThingsGraph::DeleteNamespaceResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTThingsGraph::Types qw//;
  has NamespaceArn => (is => 'ro', isa => Str);
  has NamespaceName => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NamespaceArn' => {
                                   'type' => 'Str'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NamespaceName' => {
                                    'type' => 'Str'
                                  }
             },
  'NameInRequest' => {
                       'NamespaceArn' => 'namespaceArn',
                       'NamespaceName' => 'namespaceName'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::DeleteNamespaceResponse

=head1 ATTRIBUTES


=head2 NamespaceArn => Str

The ARN of the namespace to be deleted.


=head2 NamespaceName => Str

The name of the namespace to be deleted.


=head2 _request_id => Str


=cut

1;