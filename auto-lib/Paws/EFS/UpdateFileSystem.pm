
package Paws::EFS::UpdateFileSystem;
  use Moose;
  has FileSystemId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FileSystemId', required => 1);
  has ProvisionedThroughputInMibps => (is => 'ro', isa => 'Num');
  has ThroughputMode => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateFileSystem');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-02-01/file-systems/{FileSystemId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EFS::FileSystemDescription');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EFS::UpdateFileSystem - Arguments for method UpdateFileSystem on L<Paws::EFS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateFileSystem on the
L<Amazon Elastic File System|Paws::EFS> service. Use the attributes of this class
as arguments to method UpdateFileSystem.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateFileSystem.

=head1 SYNOPSIS

    my $elasticfilesystem = Paws->service('EFS');
    my $FileSystemDescription = $elasticfilesystem->UpdateFileSystem(
      FileSystemId                 => 'MyFileSystemId',
      ProvisionedThroughputInMibps => 1,                  # OPTIONAL
      ThroughputMode               => 'bursting',         # OPTIONAL
    );

    # Results:
    my $CreationTime         = $FileSystemDescription->CreationTime;
    my $CreationToken        = $FileSystemDescription->CreationToken;
    my $Encrypted            = $FileSystemDescription->Encrypted;
    my $FileSystemId         = $FileSystemDescription->FileSystemId;
    my $KmsKeyId             = $FileSystemDescription->KmsKeyId;
    my $LifeCycleState       = $FileSystemDescription->LifeCycleState;
    my $Name                 = $FileSystemDescription->Name;
    my $NumberOfMountTargets = $FileSystemDescription->NumberOfMountTargets;
    my $OwnerId              = $FileSystemDescription->OwnerId;
    my $PerformanceMode      = $FileSystemDescription->PerformanceMode;
    my $ProvisionedThroughputInMibps =
      $FileSystemDescription->ProvisionedThroughputInMibps;
    my $SizeInBytes    = $FileSystemDescription->SizeInBytes;
    my $ThroughputMode = $FileSystemDescription->ThroughputMode;

    # Returns a L<Paws::EFS::FileSystemDescription> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem/UpdateFileSystem>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FileSystemId => Str

The ID of the file system that you want to update.



=head2 ProvisionedThroughputInMibps => Num

(Optional) The amount of throughput, in MiB/s, that you want to
provision for your file system. If you're not updating the amount of
provisioned throughput for your file system, you don't need to provide
this value in your request.



=head2 ThroughputMode => Str

(Optional) The throughput mode that you want your file system to use.
If you're not updating your throughput mode, you don't need to provide
this value in your request.

Valid values are: C<"bursting">, C<"provisioned">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFileSystem in L<Paws::EFS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

