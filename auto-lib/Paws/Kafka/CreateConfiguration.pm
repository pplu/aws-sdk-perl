
package Paws::Kafka::CreateConfiguration;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has KafkaVersions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'kafkaVersions', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has ServerProperties => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serverProperties', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/configurations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kafka::CreateConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::CreateConfiguration - Arguments for method CreateConfiguration on L<Paws::Kafka>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateConfiguration on the
L<Managed Streaming for Kafka|Paws::Kafka> service. Use the attributes of this class
as arguments to method CreateConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateConfiguration.

=head1 SYNOPSIS

    my $kafka = Paws->service('Kafka');
    my $CreateConfigurationResponse = $kafka->CreateConfiguration(
      KafkaVersions    => [ 'My__string', ... ],
      Name             => 'My__string',
      ServerProperties => 'Blob__blob',
      Description      => 'My__string',            # OPTIONAL
    );

    # Results:
    my $Arn            = $CreateConfigurationResponse->Arn;
    my $CreationTime   = $CreateConfigurationResponse->CreationTime;
    my $LatestRevision = $CreateConfigurationResponse->LatestRevision;
    my $Name           = $CreateConfigurationResponse->Name;

    # Returns a L<Paws::Kafka::CreateConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kafka/CreateConfiguration>

=head1 ATTRIBUTES


=head2 Description => Str

The description of the configuration.



=head2 B<REQUIRED> KafkaVersions => ArrayRef[Str|Undef]

The versions of Apache Kafka with which you can use this MSK
configuration.



=head2 B<REQUIRED> Name => Str

The name of the configuration.



=head2 B<REQUIRED> ServerProperties => Str

Contents of the server.properties file. When using the API, you must
ensure that the contents of the file are base64 encoded. When using the
AWS Management Console, the SDK, or the AWS CLI, the contents of
server.properties can be in plaintext.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateConfiguration in L<Paws::Kafka>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

