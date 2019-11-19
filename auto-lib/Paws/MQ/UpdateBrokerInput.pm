# Generated from default/object.tt
package Paws::MQ::UpdateBrokerInput;
  use Moo;
  use Types::Standard qw/Bool Str Undef ArrayRef/;
  use Paws::MQ::Types qw/MQ_Logs MQ_ConfigurationId/;
  has AutoMinorVersionUpgrade => (is => 'ro', isa => Bool);
  has Configuration => (is => 'ro', isa => MQ_ConfigurationId);
  has EngineVersion => (is => 'ro', isa => Str);
  has HostInstanceType => (is => 'ro', isa => Str);
  has Logs => (is => 'ro', isa => MQ_Logs);
  has SecurityGroups => (is => 'ro', isa => ArrayRef[Str|Undef]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Logs' => {
                           'class' => 'Paws::MQ::Logs',
                           'type' => 'MQ_Logs'
                         },
               'HostInstanceType' => {
                                       'type' => 'Str'
                                     },
               'EngineVersion' => {
                                    'type' => 'Str'
                                  },
               'AutoMinorVersionUpgrade' => {
                                              'type' => 'Bool'
                                            },
               'Configuration' => {
                                    'class' => 'Paws::MQ::ConfigurationId',
                                    'type' => 'MQ_ConfigurationId'
                                  },
               'SecurityGroups' => {
                                     'type' => 'ArrayRef[Str|Undef]'
                                   }
             },
  'NameInRequest' => {
                       'SecurityGroups' => 'securityGroups',
                       'Configuration' => 'configuration',
                       'AutoMinorVersionUpgrade' => 'autoMinorVersionUpgrade',
                       'EngineVersion' => 'engineVersion',
                       'HostInstanceType' => 'hostInstanceType',
                       'Logs' => 'logs'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::UpdateBrokerInput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MQ::UpdateBrokerInput object:

  $service_obj->Method(Att1 => { AutoMinorVersionUpgrade => $value, ..., SecurityGroups => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MQ::UpdateBrokerInput object:

  $result = $service_obj->Method(...);
  $result->Att1->AutoMinorVersionUpgrade

=head1 DESCRIPTION

Updates the broker using the specified properties.

=head1 ATTRIBUTES


=head2 AutoMinorVersionUpgrade => Bool

  Enables automatic upgrades to new minor versions for brokers, as Apache
releases the versions. The automatic upgrades occur during the
maintenance window of the broker or after a manual broker reboot.


=head2 Configuration => MQ_ConfigurationId

  A list of information about the configuration.


=head2 EngineVersion => Str

  The version of the broker engine. For a list of supported engine
versions, see
https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/broker-engine.html


=head2 HostInstanceType => Str

  The host instance type of the broker to upgrade to. For a list of
supported instance types, see
https://docs.aws.amazon.com/amazon-mq/latest/developer-guide//broker.html#broker-instance-types


=head2 Logs => MQ_Logs

  Enables Amazon CloudWatch logging for brokers.


=head2 SecurityGroups => ArrayRef[Str|Undef]

  The list of security groups (1 minimum, 5 maximum) that authorize
connections to brokers.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MQ>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

