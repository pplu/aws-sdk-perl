# Generated from default/object.tt
package Paws::MQ::CreateConfigurationInput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MQ::Types qw/MQ___mapOf__string/;
  has EngineType => (is => 'ro', isa => Str);
  has EngineVersion => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => MQ___mapOf__string);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EngineVersion' => {
                                    'type' => 'Str'
                                  },
               'Name' => {
                           'type' => 'Str'
                         },
               'Tags' => {
                           'type' => 'MQ___mapOf__string',
                           'class' => 'Paws::MQ::__mapOf__string'
                         },
               'EngineType' => {
                                 'type' => 'Str'
                               }
             },
  'NameInRequest' => {
                       'EngineVersion' => 'engineVersion',
                       'Name' => 'name',
                       'Tags' => 'tags',
                       'EngineType' => 'engineType'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::CreateConfigurationInput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MQ::CreateConfigurationInput object:

  $service_obj->Method(Att1 => { EngineType => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MQ::CreateConfigurationInput object:

  $result = $service_obj->Method(...);
  $result->Att1->EngineType

=head1 DESCRIPTION

Creates a new configuration for the specified configuration name.
Amazon MQ uses the default configuration (the engine type and version).

=head1 ATTRIBUTES


=head2 EngineType => Str

  Required. The type of broker engine. Note: Currently, Amazon MQ
supports only ACTIVEMQ.


=head2 EngineVersion => Str

  Required. The version of the broker engine. For a list of supported
engine versions, see
https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/broker-engine.html


=head2 Name => Str

  Required. The name of the configuration. This value can contain only
alphanumeric characters, dashes, periods, underscores, and tildes (- .
_ ~). This value must be 1-150 characters long.


=head2 Tags => MQ___mapOf__string

  Create tags when creating the configuration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MQ>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

