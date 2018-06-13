
package Paws::DeviceFarm::ListDevicePools;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn' , required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDevicePools');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DeviceFarm::ListDevicePoolsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ListDevicePools - Arguments for method ListDevicePools on L<Paws::DeviceFarm>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDevicePools on the
L<AWS Device Farm|Paws::DeviceFarm> service. Use the attributes of this class
as arguments to method ListDevicePools.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDevicePools.

=head1 SYNOPSIS

    my $devicefarm = Paws->service('DeviceFarm');
   # To get information about device pools
   # The following example returns information about the private device pools in
   # a specific project.
    my $ListDevicePoolsResult = $devicefarm->ListDevicePools(
      {
        'Arn' =>
'arn:aws:devicefarm:us-west-2:123456789101:project:EXAMPLE-GUID-123-456',
        'Type' => 'PRIVATE'
      }
    );

    # Results:
    my $devicePools = $ListDevicePoolsResult->devicePools;

    # Returns a L<Paws::DeviceFarm::ListDevicePoolsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devicefarm/ListDevicePools>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The project ARN.



=head2 NextToken => Str

An identifier that was returned from the previous call to this
operation, which can be used to return the next set of items in the
list.



=head2 Type => Str

The device pools' type.

Allowed values include:

=over

=item *

CURATED: A device pool that is created and managed by AWS Device Farm.

=item *

PRIVATE: A device pool that is created and managed by the device pool
developer.

=back


Valid values are: C<"CURATED">, C<"PRIVATE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDevicePools in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

