
package Paws::Lightsail::SetIpAddressType;
  use Moose;
  has IpAddressType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ipAddressType' , required => 1);
  has ResourceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceName' , required => 1);
  has ResourceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceType' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetIpAddressType');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::SetIpAddressTypeResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::SetIpAddressType - Arguments for method SetIpAddressType on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetIpAddressType on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method SetIpAddressType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetIpAddressType.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $SetIpAddressTypeResult = $lightsail->SetIpAddressType(
      IpAddressType => 'dualstack',
      ResourceName  => 'MyResourceName',
      ResourceType  => 'ContainerService',

    );

    # Results:
    my $Operations = $SetIpAddressTypeResult->Operations;

    # Returns a L<Paws::Lightsail::SetIpAddressTypeResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/SetIpAddressType>

=head1 ATTRIBUTES


=head2 B<REQUIRED> IpAddressType => Str

The IP address type to set for the specified resource.

The possible values are C<ipv4> for IPv4 only, and C<dualstack> for
IPv4 and IPv6.

Valid values are: C<"dualstack">, C<"ipv4">

=head2 B<REQUIRED> ResourceName => Str

The name of the resource for which to set the IP address type.



=head2 B<REQUIRED> ResourceType => Str

The resource type.

The possible values are C<Distribution>, C<Instance>, and
C<LoadBalancer>.

Distribution-related APIs are available only in the N. Virginia
(C<us-east-1>) AWS Region. Set your AWS Region configuration to
C<us-east-1> to create, view, or edit distributions.

Valid values are: C<"ContainerService">, C<"Instance">, C<"StaticIp">, C<"KeyPair">, C<"InstanceSnapshot">, C<"Domain">, C<"PeeredVpc">, C<"LoadBalancer">, C<"LoadBalancerTlsCertificate">, C<"Disk">, C<"DiskSnapshot">, C<"RelationalDatabase">, C<"RelationalDatabaseSnapshot">, C<"ExportSnapshotRecord">, C<"CloudFormationStackRecord">, C<"Alarm">, C<"ContactMethod">, C<"Distribution">, C<"Certificate">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetIpAddressType in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

