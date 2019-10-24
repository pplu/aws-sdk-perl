
package Paws::Kafka::ListNodesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Kafka::Types qw/Kafka_NodeInfo/;
  has NextToken => (is => 'ro', isa => Str);
  has NodeInfoList => (is => 'ro', isa => ArrayRef[Kafka_NodeInfo]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NodeInfoList' => {
                                   'class' => 'Paws::Kafka::NodeInfo',
                                   'type' => 'ArrayRef[Kafka_NodeInfo]'
                                 }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'NodeInfoList' => 'nodeInfoList'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::ListNodesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The paginated results marker. When the result of a ListNodes operation
is truncated, the call returns NextToken in the response. To get
another batch of nodes, provide this token in your next request.


=head2 NodeInfoList => ArrayRef[Kafka_NodeInfo]

List containing a NodeInfo object.


=head2 _request_id => Str


=cut

