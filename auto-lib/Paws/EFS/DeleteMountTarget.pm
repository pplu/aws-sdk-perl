
package Paws::EFS::DeleteMountTarget;
  use Moose;
  has MountTargetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'MountTargetId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteMountTarget');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-02-01/mount-targets/{MountTargetId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EFS::DeleteMountTarget - Arguments for method DeleteMountTarget on L<Paws::EFS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteMountTarget on the
L<Amazon Elastic File System|Paws::EFS> service. Use the attributes of this class
as arguments to method DeleteMountTarget.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteMountTarget.

=head1 SYNOPSIS

    my $elasticfilesystem = Paws->service('EFS');
    # To delete a mount target
    # This operation deletes a mount target.
    $elasticfilesystem->DeleteMountTarget(
      {
        'MountTargetId' => 'fsmt-12340abc'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem/DeleteMountTarget>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MountTargetId => Str

ID of the mount target to delete (String).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteMountTarget in L<Paws::EFS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

