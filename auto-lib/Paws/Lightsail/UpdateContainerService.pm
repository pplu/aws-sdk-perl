
package Paws::Lightsail::UpdateContainerService;
  use Moose;
  has IsDisabled => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'isDisabled' );
  has Power => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'power' );
  has PublicDomainNames => (is => 'ro', isa => 'Paws::Lightsail::ContainerServicePublicDomains', traits => ['NameInRequest'], request_name => 'publicDomainNames' );
  has Scale => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'scale' );
  has ServiceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateContainerService');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::UpdateContainerServiceResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::UpdateContainerService - Arguments for method UpdateContainerService on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateContainerService on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method UpdateContainerService.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateContainerService.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $UpdateContainerServiceResult = $lightsail->UpdateContainerService(
      ServiceName       => 'MyContainerServiceName',
      IsDisabled        => 1,                                         # OPTIONAL
      Power             => 'nano',                                    # OPTIONAL
      PublicDomainNames => { 'Mystring' => [ 'Mystring', ... ], },    # OPTIONAL
      Scale             => 1,                                         # OPTIONAL
    );

    # Results:
    my $ContainerService = $UpdateContainerServiceResult->ContainerService;

    # Returns a L<Paws::Lightsail::UpdateContainerServiceResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/UpdateContainerService>

=head1 ATTRIBUTES


=head2 IsDisabled => Bool

A Boolean value to indicate whether the container service is disabled.



=head2 Power => Str

The power for the container service.

The power specifies the amount of memory, vCPUs, and base monthly cost
of each node of the container service. The C<power> and C<scale> of a
container service makes up its configured capacity. To determine the
monthly price of your container service, multiply the base price of the
C<power> with the C<scale> (the number of nodes) of the service.

Use the C<GetContainerServicePowers> action to view the specifications
of each power option.

Valid values are: C<"nano">, C<"micro">, C<"small">, C<"medium">, C<"large">, C<"xlarge">

=head2 PublicDomainNames => L<Paws::Lightsail::ContainerServicePublicDomains>

The public domain names to use with the container service, such as
C<example.com> and C<www.example.com>.

You can specify up to four public domain names for a container service.
The domain names that you specify are used when you create a deployment
with a container configured as the public endpoint of your container
service.

If you don't specify public domain names, then you can use the default
domain of the container service.

You must create and validate an SSL/TLS certificate before you can use
public domain names with your container service. Use the
C<CreateCertificate> action to create a certificate for the public
domain names you want to use with your container service.

You can specify public domain names using a string to array map as
shown in the example later on this page.



=head2 Scale => Int

The scale for the container service.

The scale specifies the allocated compute nodes of the container
service. The C<power> and C<scale> of a container service makes up its
configured capacity. To determine the monthly price of your container
service, multiply the base price of the C<power> with the C<scale> (the
number of nodes) of the service.



=head2 B<REQUIRED> ServiceName => Str

The name of the container service to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateContainerService in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

