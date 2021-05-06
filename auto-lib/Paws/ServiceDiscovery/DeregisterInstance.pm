
package Paws::ServiceDiscovery::DeregisterInstance;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has ServiceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeregisterInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceDiscovery::DeregisterInstanceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::DeregisterInstance - Arguments for method DeregisterInstance on L<Paws::ServiceDiscovery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeregisterInstance on the
L<AWS Cloud Map|Paws::ServiceDiscovery> service. Use the attributes of this class
as arguments to method DeregisterInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeregisterInstance.

=head1 SYNOPSIS

    my $servicediscovery = Paws->service('ServiceDiscovery');
    my $DeregisterInstanceResponse = $servicediscovery->DeregisterInstance(
      InstanceId => 'MyResourceId',
      ServiceId  => 'MyResourceId',

    );

    # Results:
    my $OperationId = $DeregisterInstanceResponse->OperationId;

    # Returns a L<Paws::ServiceDiscovery::DeregisterInstanceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicediscovery/DeregisterInstance>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The value that you specified for C<Id> in the RegisterInstance request.



=head2 B<REQUIRED> ServiceId => Str

The ID of the service that the instance is associated with.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeregisterInstance in L<Paws::ServiceDiscovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

