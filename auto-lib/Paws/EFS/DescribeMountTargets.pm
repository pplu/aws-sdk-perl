
package Paws::EFS::DescribeMountTargets;
  use Moose;
  has FileSystemId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'FileSystemId');
  has Marker => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'Marker');
  has MaxItems => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxItems');
  has MountTargetId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'MountTargetId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeMountTargets');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-02-01/mount-targets');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EFS::DescribeMountTargetsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EFS::DescribeMountTargets - Arguments for method DescribeMountTargets on L<Paws::EFS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeMountTargets on the
L<Amazon Elastic File System|Paws::EFS> service. Use the attributes of this class
as arguments to method DescribeMountTargets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeMountTargets.

=head1 SYNOPSIS

    my $elasticfilesystem = Paws->service('EFS');
    # To describe the mount targets for a file system
    # This operation describes all of a file system's mount targets.
    my $DescribeMountTargetsResponse = $elasticfilesystem->DescribeMountTargets(
      {
        'FileSystemId' => 'fs-01234567'
      }
    );

    # Results:
    my $MountTargets = $DescribeMountTargetsResponse->MountTargets;

    # Returns a L<Paws::EFS::DescribeMountTargetsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem/DescribeMountTargets>

=head1 ATTRIBUTES


=head2 FileSystemId => Str

(Optional) ID of the file system whose mount targets you want to list
(String). It must be included in your request if C<MountTargetId> is
not included.



=head2 Marker => Str

(Optional) Opaque pagination token returned from a previous
C<DescribeMountTargets> operation (String). If present, it specifies to
continue the list from where the previous returning call left off.



=head2 MaxItems => Int

(Optional) Maximum number of mount targets to return in the response.
It must be an integer with a value greater than zero.



=head2 MountTargetId => Str

(Optional) ID of the mount target that you want to have described
(String). It must be included in your request if C<FileSystemId> is not
included.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeMountTargets in L<Paws::EFS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

