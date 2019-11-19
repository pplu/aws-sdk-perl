
package Paws::Kafka::DescribeConfigurationRevisionResponse;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Kafka::Types qw//;
  has Arn => (is => 'ro', isa => Str);
  has CreationTime => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has Revision => (is => 'ro', isa => Int);
  has ServerProperties => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Description' => 'description',
                       'Revision' => 'revision',
                       'CreationTime' => 'creationTime',
                       'ServerProperties' => 'serverProperties',
                       'Arn' => 'arn'
                     },
  'types' => {
               'ServerProperties' => {
                                       'type' => 'Str'
                                     },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Revision' => {
                               'type' => 'Int'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'CreationTime' => {
                                   'type' => 'Str'
                                 },
               'Description' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::DescribeConfigurationRevisionResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the configuration.


=head2 CreationTime => Str

The time when the configuration was created.


=head2 Description => Str

The description of the configuration.


=head2 Revision => Int

The revision number.


=head2 ServerProperties => Str

Contents of the server.properties file. When using the API, you must
ensure that the contents of the file are base64 encoded. When using the
AWS Management Console, the SDK, or the AWS CLI, the contents of
server.properties can be in plaintext.


=head2 _request_id => Str


=cut

