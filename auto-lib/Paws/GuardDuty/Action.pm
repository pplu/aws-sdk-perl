package Paws::GuardDuty::Action;
  use Moose;
  has ActionType => (is => 'ro', isa => 'Str', request_name => 'actionType', traits => ['NameInRequest']);
  has AwsApiCallAction => (is => 'ro', isa => 'Paws::GuardDuty::AwsApiCallAction', request_name => 'awsApiCallAction', traits => ['NameInRequest']);
  has DnsRequestAction => (is => 'ro', isa => 'Paws::GuardDuty::DnsRequestAction', request_name => 'dnsRequestAction', traits => ['NameInRequest']);
  has NetworkConnectionAction => (is => 'ro', isa => 'Paws::GuardDuty::NetworkConnectionAction', request_name => 'networkConnectionAction', traits => ['NameInRequest']);
  has PortProbeAction => (is => 'ro', isa => 'Paws::GuardDuty::PortProbeAction', request_name => 'portProbeAction', traits => ['NameInRequest']);
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

Information about the activity described in a finding.

=head1 ATTRIBUTES


=head2 ActionType => Str

  GuardDuty Finding activity type.


=head2 AwsApiCallAction => L<Paws::GuardDuty::AwsApiCallAction>

  Information about the AWS_API_CALL action described in this finding.


=head2 DnsRequestAction => L<Paws::GuardDuty::DnsRequestAction>

  Information about the DNS_REQUEST action described in this finding.


=head2 NetworkConnectionAction => L<Paws::GuardDuty::NetworkConnectionAction>

  Information about the NETWORK_CONNECTION action described in this
finding.


=head2 PortProbeAction => L<Paws::GuardDuty::PortProbeAction>

  Information about the PORT_PROBE action described in this finding.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

