# Generated by default/object.tt
package Paws::MediaLive::VpcOutputSettings;
  use Moose;
  has PublicAddressAllocationIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'publicAddressAllocationIds', traits => ['NameInRequest']);
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'securityGroupIds', traits => ['NameInRequest']);
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'subnetIds', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::VpcOutputSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::VpcOutputSettings object:

  $service_obj->Method(Att1 => { PublicAddressAllocationIds => $value, ..., SubnetIds => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::VpcOutputSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->PublicAddressAllocationIds

=head1 DESCRIPTION

The properties for a private VPC Output When this property is
specified, the output egress addresses will be created in a user
specified VPC

=head1 ATTRIBUTES


=head2 PublicAddressAllocationIds => ArrayRef[Str|Undef]

List of public address allocation ids to associate with ENIs that will
be created in Output VPC. Must specify one for SINGLE_PIPELINE, two for
STANDARD channels


=head2 SecurityGroupIds => ArrayRef[Str|Undef]

A list of up to 5 EC2 VPC security group IDs to attach to the Output
VPC network interfaces. If none are specified then the VPC default
security group will be used


=head2 B<REQUIRED> SubnetIds => ArrayRef[Str|Undef]

A list of VPC subnet IDs from the same VPC. If STANDARD channel, subnet
IDs must be mapped to two unique availability zones (AZ).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

