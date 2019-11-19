# Generated from default/object.tt
package Paws::MQ::Configuration;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MQ::Types qw/MQ_ConfigurationRevision MQ___mapOf__string/;
  has Arn => (is => 'ro', isa => Str);
  has Created => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has EngineType => (is => 'ro', isa => Str);
  has EngineVersion => (is => 'ro', isa => Str);
  has Id => (is => 'ro', isa => Str);
  has LatestRevision => (is => 'ro', isa => MQ_ConfigurationRevision);
  has Name => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => MQ___mapOf__string);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Tags' => {
                           'class' => 'Paws::MQ::__mapOf__string',
                           'type' => 'MQ___mapOf__string'
                         },
               'EngineType' => {
                                 'type' => 'Str'
                               },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Id' => {
                         'type' => 'Str'
                       },
               'LatestRevision' => {
                                     'class' => 'Paws::MQ::ConfigurationRevision',
                                     'type' => 'MQ_ConfigurationRevision'
                                   },
               'Name' => {
                           'type' => 'Str'
                         },
               'Description' => {
                                  'type' => 'Str'
                                },
               'EngineVersion' => {
                                    'type' => 'Str'
                                  },
               'Created' => {
                              'type' => 'Str'
                            }
             },
  'NameInRequest' => {
                       'Description' => 'description',
                       'Created' => 'created',
                       'EngineVersion' => 'engineVersion',
                       'EngineType' => 'engineType',
                       'Tags' => 'tags',
                       'Name' => 'name',
                       'LatestRevision' => 'latestRevision',
                       'Id' => 'id',
                       'Arn' => 'arn'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::Configuration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MQ::Configuration object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MQ::Configuration object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Returns information about all configurations.

=head1 ATTRIBUTES


=head2 Arn => Str

  Required. The ARN of the configuration.


=head2 Created => Str

  Required. The date and time of the configuration revision.


=head2 Description => Str

  Required. The description of the configuration.


=head2 EngineType => Str

  Required. The type of broker engine. Note: Currently, Amazon MQ
supports only ACTIVEMQ.


=head2 EngineVersion => Str

  Required. The version of the broker engine. For a list of supported
engine versions, see
https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/broker-engine.html


=head2 Id => Str

  Required. The unique ID that Amazon MQ generates for the configuration.


=head2 LatestRevision => MQ_ConfigurationRevision

  Required. The latest revision of the configuration.


=head2 Name => Str

  Required. The name of the configuration. This value can contain only
alphanumeric characters, dashes, periods, underscores, and tildes (- .
_ ~). This value must be 1-150 characters long.


=head2 Tags => MQ___mapOf__string

  The list of all tags associated with this configuration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MQ>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

