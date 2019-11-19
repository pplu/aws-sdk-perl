
package Paws::Kafka::ListConfigurationRevisionsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Kafka::Types qw/Kafka_ConfigurationRevision/;
  has NextToken => (is => 'ro', isa => Str);
  has Revisions => (is => 'ro', isa => ArrayRef[Kafka_ConfigurationRevision]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Revisions' => {
                                'type' => 'ArrayRef[Kafka_ConfigurationRevision]',
                                'class' => 'Paws::Kafka::ConfigurationRevision'
                              },
               'NextToken' => {
                                'type' => 'Str'
                              }
             },
  'NameInRequest' => {
                       'Revisions' => 'revisions',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::ListConfigurationRevisionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Paginated results marker.


=head2 Revisions => ArrayRef[Kafka_ConfigurationRevision]

List of ConfigurationRevision objects.


=head2 _request_id => Str


=cut

