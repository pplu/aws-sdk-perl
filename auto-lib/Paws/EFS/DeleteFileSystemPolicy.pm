
package Paws::EFS::DeleteFileSystemPolicy;
  use Moose;
  has FileSystemId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FileSystemId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteFileSystemPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-02-01/file-systems/{FileSystemId}/policy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EFS::DeleteFileSystemPolicy - Arguments for method DeleteFileSystemPolicy on L<Paws::EFS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteFileSystemPolicy on the
L<Amazon Elastic File System|Paws::EFS> service. Use the attributes of this class
as arguments to method DeleteFileSystemPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteFileSystemPolicy.

=head1 SYNOPSIS

    my $elasticfilesystem = Paws->service('EFS');
    $elasticfilesystem->DeleteFileSystemPolicy(
      FileSystemId => 'MyFileSystemId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem/DeleteFileSystemPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FileSystemId => Str

Specifies the EFS file system for which to delete the
C<FileSystemPolicy>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteFileSystemPolicy in L<Paws::EFS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

