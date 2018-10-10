package Paws::DS::OwnerDirectoryDescription;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str');
  has DirectoryId => (is => 'ro', isa => 'Str');
  has DnsIpAddrs => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has RadiusSettings => (is => 'ro', isa => 'Paws::DS::RadiusSettings');
  has RadiusStatus => (is => 'ro', isa => 'Str');
  has VpcSettings => (is => 'ro', isa => 'Paws::DS::DirectoryVpcSettingsDescription');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::OwnerDirectoryDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DS::OwnerDirectoryDescription object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., VpcSettings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DS::OwnerDirectoryDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

Describes the directory owner account details that have been shared to
the directory consumer account.

=head1 ATTRIBUTES


=head2 AccountId => Str

  Identifier of the directory owner account.


=head2 DirectoryId => Str

  Identifier of the AWS Managed Microsoft AD directory in the directory
owner account.


=head2 DnsIpAddrs => ArrayRef[Str|Undef]

  IP address of the directoryE<rsquo>s domain controllers.


=head2 RadiusSettings => L<Paws::DS::RadiusSettings>

  A RadiusSettings object that contains information about the RADIUS
server.


=head2 RadiusStatus => Str

  Information about the status of the RADIUS server.


=head2 VpcSettings => L<Paws::DS::DirectoryVpcSettingsDescription>

  Information about the VPC settings for the directory.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

