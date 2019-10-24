# Generated from default/object.tt
package Paws::GuardDuty::Action;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GuardDuty::Types qw/GuardDuty_DnsRequestAction GuardDuty_PortProbeAction GuardDuty_AwsApiCallAction GuardDuty_NetworkConnectionAction/;
  has ActionType => (is => 'ro', isa => Str);
  has AwsApiCallAction => (is => 'ro', isa => GuardDuty_AwsApiCallAction);
  has DnsRequestAction => (is => 'ro', isa => GuardDuty_DnsRequestAction);
  has NetworkConnectionAction => (is => 'ro', isa => GuardDuty_NetworkConnectionAction);
  has PortProbeAction => (is => 'ro', isa => GuardDuty_PortProbeAction);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DnsRequestAction' => {
                                       'class' => 'Paws::GuardDuty::DnsRequestAction',
                                       'type' => 'GuardDuty_DnsRequestAction'
                                     },
               'ActionType' => {
                                 'type' => 'Str'
                               },
               'PortProbeAction' => {
                                      'class' => 'Paws::GuardDuty::PortProbeAction',
                                      'type' => 'GuardDuty_PortProbeAction'
                                    },
               'NetworkConnectionAction' => {
                                              'class' => 'Paws::GuardDuty::NetworkConnectionAction',
                                              'type' => 'GuardDuty_NetworkConnectionAction'
                                            },
               'AwsApiCallAction' => {
                                       'class' => 'Paws::GuardDuty::AwsApiCallAction',
                                       'type' => 'GuardDuty_AwsApiCallAction'
                                     }
             },
  'NameInRequest' => {
                       'DnsRequestAction' => 'dnsRequestAction',
                       'ActionType' => 'actionType',
                       'PortProbeAction' => 'portProbeAction',
                       'NetworkConnectionAction' => 'networkConnectionAction',
                       'AwsApiCallAction' => 'awsApiCallAction'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::Action

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GuardDuty::Action object:

  $service_obj->Method(Att1 => { ActionType => $value, ..., PortProbeAction => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GuardDuty::Action object:

  $result = $service_obj->Method(...);
  $result->Att1->ActionType

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ActionType => Str

  GuardDuty Finding activity type.


=head2 AwsApiCallAction => GuardDuty_AwsApiCallAction

  Information about the AWS_API_CALL action described in this finding.


=head2 DnsRequestAction => GuardDuty_DnsRequestAction

  Information about the DNS_REQUEST action described in this finding.


=head2 NetworkConnectionAction => GuardDuty_NetworkConnectionAction

  Information about the NETWORK_CONNECTION action described in this
finding.


=head2 PortProbeAction => GuardDuty_PortProbeAction

  Information about the PORT_PROBE action described in this finding.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

