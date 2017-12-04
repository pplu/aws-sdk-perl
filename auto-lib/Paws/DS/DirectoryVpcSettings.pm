package Paws::DS::DirectoryVpcSettings;
  use Moose;
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has VpcId => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::DirectoryVpcSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DS::DirectoryVpcSettings object:

  $service_obj->Method(Att1 => { SubnetIds => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DS::DirectoryVpcSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->SubnetIds

=head1 DESCRIPTION

Contains VPC information for the CreateDirectory or CreateMicrosoftAD
operation.

=head1 ATTRIBUTES


=head2 B<REQUIRED> SubnetIds => ArrayRef[Str|Undef]

  The identifiers of the subnets for the directory servers. The two
subnets must be in different Availability Zones. AWS Directory Service
creates a directory server and a DNS server in each of these subnets.


=head2 B<REQUIRED> VpcId => Str

  The identifier of the VPC in which to create the directory.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

