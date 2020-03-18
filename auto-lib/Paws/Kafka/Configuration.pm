package Paws::Kafka::Configuration;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest'], required => 1);
  has CreationTime => (is => 'ro', isa => 'Str', request_name => 'creationTime', traits => ['NameInRequest'], required => 1);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest'], required => 1);
  has KafkaVersions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'kafkaVersions', traits => ['NameInRequest'], required => 1);
  has LatestRevision => (is => 'ro', isa => 'Paws::Kafka::ConfigurationRevision', request_name => 'latestRevision', traits => ['NameInRequest'], required => 1);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::Configuration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kafka::Configuration object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kafka::Configuration object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Represents an MSK Configuration.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

  The Amazon Resource Name (ARN) of the configuration.


=head2 B<REQUIRED> CreationTime => Str

  The time when the configuration was created.


=head2 B<REQUIRED> Description => Str

  The description of the configuration.


=head2 B<REQUIRED> KafkaVersions => ArrayRef[Str|Undef]

  An array of the versions of Apache Kafka with which you can use this
MSK configuration. You can use this configuration for an MSK cluster
only if the Apache Kafka version specified for the cluster appears in
this array.


=head2 B<REQUIRED> LatestRevision => L<Paws::Kafka::ConfigurationRevision>

  Latest revision of the configuration.


=head2 B<REQUIRED> Name => Str

  The name of the configuration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kafka>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

