package Paws::WorkSpaces::WorkspaceDirectory;
  use Moose;
  has Alias => (is => 'ro', isa => 'Str');
  has CustomerUserName => (is => 'ro', isa => 'Str');
  has DirectoryId => (is => 'ro', isa => 'Str');
  has DirectoryName => (is => 'ro', isa => 'Str');
  has DirectoryType => (is => 'ro', isa => 'Str');
  has DnsIpAddresses => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has IamRoleId => (is => 'ro', isa => 'Str');
  has IpGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'ipGroupIds', traits => ['NameInRequest']);
  has RegistrationCode => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has WorkspaceCreationProperties => (is => 'ro', isa => 'Paws::WorkSpaces::DefaultWorkspaceCreationProperties');
  has WorkspaceSecurityGroupId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::WorkspaceDirectory

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WorkSpaces::WorkspaceDirectory object:

  $service_obj->Method(Att1 => { Alias => $value, ..., WorkspaceSecurityGroupId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WorkSpaces::WorkspaceDirectory object:

  $result = $service_obj->Method(...);
  $result->Att1->Alias

=head1 DESCRIPTION

Describes an AWS Directory Service directory that is used with Amazon
WorkSpaces.

=head1 ATTRIBUTES


=head2 Alias => Str

  The directory alias.


=head2 CustomerUserName => Str

  The user name for the service account.


=head2 DirectoryId => Str

  The directory identifier.


=head2 DirectoryName => Str

  The name of the directory.


=head2 DirectoryType => Str

  The directory type.


=head2 DnsIpAddresses => ArrayRef[Str|Undef]

  The IP addresses of the DNS servers for the directory.


=head2 IamRoleId => Str

  The identifier of the IAM role. This is the role that allows Amazon
WorkSpaces to make calls to other services, such as Amazon EC2, on your
behalf.


=head2 IpGroupIds => ArrayRef[Str|Undef]

  The identifiers of the IP access control groups associated with the
directory.


=head2 RegistrationCode => Str

  The registration code for the directory. This is the code that users
enter in their Amazon WorkSpaces client application to connect to the
directory.


=head2 State => Str

  The state of the directory's registration with Amazon WorkSpaces


=head2 SubnetIds => ArrayRef[Str|Undef]

  The identifiers of the subnets used with the directory.


=head2 WorkspaceCreationProperties => L<Paws::WorkSpaces::DefaultWorkspaceCreationProperties>

  The default creation properties for all WorkSpaces in the directory.


=head2 WorkspaceSecurityGroupId => Str

  The identifier of the security group that is assigned to new
WorkSpaces.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

