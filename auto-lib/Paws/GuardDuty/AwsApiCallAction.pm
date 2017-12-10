package Paws::GuardDuty::AwsApiCallAction;
  use Moose;
  has Api => (is => 'ro', isa => 'Str', request_name => 'api', traits => ['NameInRequest']);
  has CallerType => (is => 'ro', isa => 'Str', request_name => 'callerType', traits => ['NameInRequest']);
  has DomainDetails => (is => 'ro', isa => 'Paws::GuardDuty::DomainDetails', request_name => 'domainDetails', traits => ['NameInRequest']);
  has RemoteIpDetails => (is => 'ro', isa => 'Paws::GuardDuty::RemoteIpDetails', request_name => 'remoteIpDetails', traits => ['NameInRequest']);
  has ServiceName => (is => 'ro', isa => 'Str', request_name => 'serviceName', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::AwsApiCallAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GuardDuty::AwsApiCallAction object:

  $service_obj->Method(Att1 => { Api => $value, ..., ServiceName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GuardDuty::AwsApiCallAction object:

  $result = $service_obj->Method(...);
  $result->Att1->Api

=head1 DESCRIPTION

Information about the AWS_API_CALL action described in this finding.

=head1 ATTRIBUTES


=head2 Api => Str

  AWS API name.


=head2 CallerType => Str

  AWS API caller type.


=head2 DomainDetails => L<Paws::GuardDuty::DomainDetails>

  Domain information for the AWS API call.


=head2 RemoteIpDetails => L<Paws::GuardDuty::RemoteIpDetails>

  Remote IP information of the connection.


=head2 ServiceName => Str

  AWS service name whose API was invoked.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

