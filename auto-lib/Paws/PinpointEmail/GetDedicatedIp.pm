
package Paws::PinpointEmail::GetDedicatedIp;
  use Moose;
  has Ip => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'IP', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDedicatedIp');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/email/dedicated-ips/{IP}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointEmail::GetDedicatedIpResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::GetDedicatedIp - Arguments for method GetDedicatedIp on L<Paws::PinpointEmail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDedicatedIp on the
L<Amazon Pinpoint Email Service|Paws::PinpointEmail> service. Use the attributes of this class
as arguments to method GetDedicatedIp.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDedicatedIp.

=head1 SYNOPSIS

    my $email = Paws->service('PinpointEmail');
    my $GetDedicatedIpResponse = $email->GetDedicatedIp(
      Ip => 'MyIp',

    );

    # Results:
    my $DedicatedIp = $GetDedicatedIpResponse->DedicatedIp;

    # Returns a L<Paws::PinpointEmail::GetDedicatedIpResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/GetDedicatedIp>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Ip => Str

The IP address that you want to obtain more information about. The
value you specify has to be a dedicated IP address that's assocaited
with your Amazon Pinpoint account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDedicatedIp in L<Paws::PinpointEmail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

