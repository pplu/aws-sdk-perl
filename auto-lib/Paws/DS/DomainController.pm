package Paws::DS::DomainController;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has DirectoryId => (is => 'ro', isa => 'Str');
  has DnsIpAddr => (is => 'ro', isa => 'Str');
  has DomainControllerId => (is => 'ro', isa => 'Str');
  has LaunchTime => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StatusLastUpdatedDateTime => (is => 'ro', isa => 'Str');
  has StatusReason => (is => 'ro', isa => 'Str');
  has SubnetId => (is => 'ro', isa => 'Str');
  has VpcId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::DomainController

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DS::DomainController object:

  $service_obj->Method(Att1 => { AvailabilityZone => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DS::DomainController object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZone

=head1 DESCRIPTION

Contains information about the domain controllers for a specified
directory.

=head1 ATTRIBUTES


=head2 AvailabilityZone => Str

  The Availability Zone where the domain controller is located.


=head2 DirectoryId => Str

  Identifier of the directory where the domain controller resides.


=head2 DnsIpAddr => Str

  The IP address of the domain controller.


=head2 DomainControllerId => Str

  Identifies a specific domain controller in the directory.


=head2 LaunchTime => Str

  Specifies when the domain controller was created.


=head2 Status => Str

  The status of the domain controller.


=head2 StatusLastUpdatedDateTime => Str

  The date and time that the status was last updated.


=head2 StatusReason => Str

  A description of the domain controller state.


=head2 SubnetId => Str

  Identifier of the subnet in the VPC that contains the domain
controller.


=head2 VpcId => Str

  The identifier of the VPC that contains the domain controller.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

