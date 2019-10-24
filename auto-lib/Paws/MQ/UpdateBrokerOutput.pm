# Generated from default/object.tt
package Paws::MQ::UpdateBrokerOutput;
  use Moo;
  use Types::Standard qw/Bool Str/;
  use Paws::MQ::Types qw/MQ_Logs MQ_ConfigurationId/;
  has AutoMinorVersionUpgrade => (is => 'ro', isa => Bool);
  has BrokerId => (is => 'ro', isa => Str);
  has Configuration => (is => 'ro', isa => MQ_ConfigurationId);
  has EngineVersion => (is => 'ro', isa => Str);
  has Logs => (is => 'ro', isa => MQ_Logs);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EngineVersion' => {
                                    'type' => 'Str'
                                  },
               'Configuration' => {
                                    'class' => 'Paws::MQ::ConfigurationId',
                                    'type' => 'MQ_ConfigurationId'
                                  },
               'AutoMinorVersionUpgrade' => {
                                              'type' => 'Bool'
                                            },
               'BrokerId' => {
                               'type' => 'Str'
                             },
               'Logs' => {
                           'class' => 'Paws::MQ::Logs',
                           'type' => 'MQ_Logs'
                         }
             },
  'NameInRequest' => {
                       'EngineVersion' => 'engineVersion',
                       'Configuration' => 'configuration',
                       'AutoMinorVersionUpgrade' => 'autoMinorVersionUpgrade',
                       'BrokerId' => 'brokerId',
                       'Logs' => 'logs'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::UpdateBrokerOutput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MQ::UpdateBrokerOutput object:

  $service_obj->Method(Att1 => { AutoMinorVersionUpgrade => $value, ..., Logs => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MQ::UpdateBrokerOutput object:

  $result = $service_obj->Method(...);
  $result->Att1->AutoMinorVersionUpgrade

=head1 DESCRIPTION

Returns information about the updated broker.

=head1 ATTRIBUTES


=head2 AutoMinorVersionUpgrade => Bool

  The new value of automatic upgrades to new minor version for brokers.


=head2 BrokerId => Str

  Required. The unique ID that Amazon MQ generates for the broker.


=head2 Configuration => MQ_ConfigurationId

  The ID of the updated configuration.


=head2 EngineVersion => Str

  The version of the broker engine to upgrade to. For a list of supported
engine versions, see
https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/broker-engine.html


=head2 Logs => MQ_Logs

  The list of information about logs to be enabled for the specified
broker.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MQ>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

