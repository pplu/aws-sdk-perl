package Paws::FSX::FileSystem;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str');
  has DNSName => (is => 'ro', isa => 'Str');
  has FailureDetails => (is => 'ro', isa => 'Paws::FSX::FileSystemFailureDetails');
  has FileSystemId => (is => 'ro', isa => 'Str');
  has FileSystemType => (is => 'ro', isa => 'Str');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has Lifecycle => (is => 'ro', isa => 'Str');
  has LustreConfiguration => (is => 'ro', isa => 'Paws::FSX::LustreFileSystemConfiguration');
  has NetworkInterfaceIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has OwnerId => (is => 'ro', isa => 'Str');
  has ResourceARN => (is => 'ro', isa => 'Str');
  has StorageCapacity => (is => 'ro', isa => 'Int');
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::FSX::Tag]');
  has VpcId => (is => 'ro', isa => 'Str');
  has WindowsConfiguration => (is => 'ro', isa => 'Paws::FSX::WindowsFileSystemConfiguration');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::FileSystem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FSX::FileSystem object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., WindowsConfiguration => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FSX::FileSystem object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

A description of a specific Amazon FSx file system.

=head1 ATTRIBUTES


=head2 CreationTime => Str

  The time that the file system was created, in seconds (since
1970-01-01T00:00:00Z), also known as Unix time.


=head2 DNSName => Str

  The DNS name for the file system.


=head2 FailureDetails => L<Paws::FSX::FileSystemFailureDetails>

  


=head2 FileSystemId => Str

  The system-generated, unique 17-digit ID of the file system.


=head2 FileSystemType => Str

  The type of Amazon FSx file system, either C<LUSTRE> or C<WINDOWS>.


=head2 KmsKeyId => Str

  The ID of the AWS Key Management Service (AWS KMS) key used to encrypt
the file system's data for an Amazon FSx for Windows File Server file
system.


=head2 Lifecycle => Str

  The lifecycle status of the file system, following are the possible
values and what they mean:

=over

=item *

C<AVAILABLE> - The file system is in a healthy state, and is reachable
and available for use.

=item *

C<CREATING> - Amazon FSx is creating the new file system.

=item *

C<DELETING> - Amazon FSx is deleting an existing file system.

=item *

C<FAILED> - An existing file system has experienced an unrecoverable
failure. When creating a new file system, Amazon FSx was unable to
create the file system.

=item *

C<MISCONFIGURED> indicates that the file system is in a failed but
recoverable state.

=item *

C<UPDATING> indicates that the file system is undergoing a customer
initiated update.

=back



=head2 LustreConfiguration => L<Paws::FSX::LustreFileSystemConfiguration>

  


=head2 NetworkInterfaceIds => ArrayRef[Str|Undef]

  The IDs of the elastic network interface from which a specific file
system is accessible. The elastic network interface is automatically
created in the same VPC that the Amazon FSx file system was created in.
For more information, see Elastic Network Interfaces
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html) in
the I<Amazon EC2 User Guide.>

For an Amazon FSx for Windows File Server file system, you can have one
network interface ID. For an Amazon FSx for Lustre file system, you can
have more than one.


=head2 OwnerId => Str

  The AWS account that created the file system. If the file system was
created by an AWS Identity and Access Management (IAM) user, the AWS
account to which the IAM user belongs is the owner.


=head2 ResourceARN => Str

  The Amazon Resource Name (ARN) for the file system resource.


=head2 StorageCapacity => Int

  The storage capacity of the file system in gigabytes (GB).


=head2 SubnetIds => ArrayRef[Str|Undef]

  The ID of the subnet to contain the endpoint for the file system. One
and only one is supported. The file system is launched in the
Availability Zone associated with this subnet.


=head2 Tags => ArrayRef[L<Paws::FSX::Tag>]

  The tags to associate with the file system. For more information, see
Tagging Your Amazon EC2 Resources
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html)
in the I<Amazon EC2 User Guide>.


=head2 VpcId => Str

  The ID of the primary VPC for the file system.


=head2 WindowsConfiguration => L<Paws::FSX::WindowsFileSystemConfiguration>

  The configuration for this Microsoft Windows file system.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

