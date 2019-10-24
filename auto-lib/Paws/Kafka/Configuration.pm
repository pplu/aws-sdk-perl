# Generated from default/object.tt
package Paws::Kafka::Configuration;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::Kafka::Types qw/Kafka_ConfigurationRevision/;
  has Arn => (is => 'ro', isa => Str, required => 1);
  has CreationTime => (is => 'ro', isa => Str, required => 1);
  has Description => (is => 'ro', isa => Str, required => 1);
  has KafkaVersions => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1);
  has LatestRevision => (is => 'ro', isa => Kafka_ConfigurationRevision, required => 1);
  has Name => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CreationTime' => {
                                   'type' => 'Str'
                                 },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Name' => {
                           'type' => 'Str'
                         },
               'Description' => {
                                  'type' => 'Str'
                                },
               'LatestRevision' => {
                                     'class' => 'Paws::Kafka::ConfigurationRevision',
                                     'type' => 'Kafka_ConfigurationRevision'
                                   },
               'KafkaVersions' => {
                                    'type' => 'ArrayRef[Str|Undef]'
                                  }
             },
  'NameInRequest' => {
                       'CreationTime' => 'creationTime',
                       'Arn' => 'arn',
                       'Name' => 'name',
                       'Description' => 'description',
                       'LatestRevision' => 'latestRevision',
                       'KafkaVersions' => 'kafkaVersions'
                     },
  'IsRequired' => {
                    'CreationTime' => 1,
                    'Arn' => 1,
                    'Name' => 1,
                    'Description' => 1,
                    'LatestRevision' => 1,
                    'KafkaVersions' => 1
                  }
}
;
    return $Params_map;
  }


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


=head2 B<REQUIRED> LatestRevision => Kafka_ConfigurationRevision

  Latest revision of the configuration.


=head2 B<REQUIRED> Name => Str

  The name of the configuration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kafka>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

