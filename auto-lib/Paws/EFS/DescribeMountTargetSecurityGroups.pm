
package Paws::EFS::DescribeMountTargetSecurityGroups;
  use Moose;
  has MountTargetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'MountTargetId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeMountTargetSecurityGroups');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-02-01/mount-targets/{MountTargetId}/security-groups');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EFS::DescribeMountTargetSecurityGroupsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EFS::DescribeMountTargetSecurityGroups - Arguments for method DescribeMountTargetSecurityGroups on L<Paws::EFS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeMountTargetSecurityGroups on the
L<Amazon Elastic File System|Paws::EFS> service. Use the attributes of this class
as arguments to method DescribeMountTargetSecurityGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeMountTargetSecurityGroups.

=head1 SYNOPSIS

    my $elasticfilesystem = Paws->service('EFS');
    # To describe the security groups for a mount target
    # This operation describes all of the security groups for a file system's
    # mount target.
    my $DescribeMountTargetSecurityGroupsResponse =
      $elasticfilesystem->DescribeMountTargetSecurityGroups(
      {
        'MountTargetId' => 'fsmt-12340abc'
      }
      );

    # Results:
    my $SecurityGroups =
      $DescribeMountTargetSecurityGroupsResponse->SecurityGroups;

    # Returns a L<Paws::EFS::DescribeMountTargetSecurityGroupsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem/DescribeMountTargetSecurityGroups>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MountTargetId => Str

ID of the mount target whose security groups you want to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeMountTargetSecurityGroups in L<Paws::EFS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

