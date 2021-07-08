
package Paws::Lightsail::GetContainerServices;
  use Moose;
  has ServiceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceName' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetContainerServices');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::ContainerServicesListResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetContainerServices - Arguments for method GetContainerServices on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetContainerServices on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method GetContainerServices.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetContainerServices.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $ContainerServicesListResult = $lightsail->GetContainerServices(
      ServiceName => 'MyContainerServiceName',    # OPTIONAL
    );

    # Results:
    my $ContainerServices = $ContainerServicesListResult->ContainerServices;

    # Returns a L<Paws::Lightsail::ContainerServicesListResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/GetContainerServices>

=head1 ATTRIBUTES


=head2 ServiceName => Str

The name of the container service for which to return information.

When omitted, the response includes all of your container services in
the AWS Region where the request is made.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetContainerServices in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

