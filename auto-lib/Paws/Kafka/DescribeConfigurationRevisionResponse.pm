
package Paws::Kafka::DescribeConfigurationRevisionResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Revision => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'revision');
  has ServerProperties => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serverProperties');

  has _request_id => (is => 'ro', isa => 'Str');
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

