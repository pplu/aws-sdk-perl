
package Paws::EFS::DescribeBackupPolicy;
  use Moose;
  has FileSystemId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FileSystemId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeBackupPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-02-01/file-systems/{FileSystemId}/backup-policy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EFS::BackupPolicyDescription');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EFS::DescribeBackupPolicy - Arguments for method DescribeBackupPolicy on L<Paws::EFS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeBackupPolicy on the
L<Amazon Elastic File System|Paws::EFS> service. Use the attributes of this class
as arguments to method DescribeBackupPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeBackupPolicy.

=head1 SYNOPSIS

    my $elasticfilesystem = Paws->service('EFS');
    my $BackupPolicyDescription = $elasticfilesystem->DescribeBackupPolicy(
      FileSystemId => 'MyFileSystemId',

    );

    # Results:
    my $BackupPolicy = $BackupPolicyDescription->BackupPolicy;

    # Returns a L<Paws::EFS::BackupPolicyDescription> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem/DescribeBackupPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FileSystemId => Str

Specifies which EFS file system to retrieve the C<BackupPolicy> for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeBackupPolicy in L<Paws::EFS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

