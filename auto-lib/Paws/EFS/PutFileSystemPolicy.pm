
package Paws::EFS::PutFileSystemPolicy;
  use Moose;
  has BypassPolicyLockoutSafetyCheck => (is => 'ro', isa => 'Bool');
  has FileSystemId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FileSystemId', required => 1);
  has Policy => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutFileSystemPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-02-01/file-systems/{FileSystemId}/policy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EFS::FileSystemPolicyDescription');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EFS::PutFileSystemPolicy - Arguments for method PutFileSystemPolicy on L<Paws::EFS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutFileSystemPolicy on the
L<Amazon Elastic File System|Paws::EFS> service. Use the attributes of this class
as arguments to method PutFileSystemPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutFileSystemPolicy.

=head1 SYNOPSIS

    my $elasticfilesystem = Paws->service('EFS');
    my $FileSystemPolicyDescription = $elasticfilesystem->PutFileSystemPolicy(
      FileSystemId                   => 'MyFileSystemId',
      Policy                         => 'MyPolicy',
      BypassPolicyLockoutSafetyCheck => 1,                  # OPTIONAL
    );

    # Results:
    my $FileSystemId = $FileSystemPolicyDescription->FileSystemId;
    my $Policy       = $FileSystemPolicyDescription->Policy;

    # Returns a L<Paws::EFS::FileSystemPolicyDescription> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem/PutFileSystemPolicy>

=head1 ATTRIBUTES


=head2 BypassPolicyLockoutSafetyCheck => Bool

(Optional) A flag to indicate whether to bypass the C<FileSystemPolicy>
lockout safety check. The policy lockout safety check determines
whether the policy in the request will prevent the principal making the
request will be locked out from making future C<PutFileSystemPolicy>
requests on the file system. Set C<BypassPolicyLockoutSafetyCheck> to
C<True> only when you intend to prevent the principal that is making
the request from making a subsequent C<PutFileSystemPolicy> request on
the file system. The default value is False.



=head2 B<REQUIRED> FileSystemId => Str

The ID of the EFS file system that you want to create or update the
C<FileSystemPolicy> for.



=head2 B<REQUIRED> Policy => Str

The C<FileSystemPolicy> that you're creating. Accepts a JSON formatted
policy definition. EFS file system policies have a 20,000 character
limit. To find out more about the elements that make up a file system
policy, see EFS Resource-based Policies
(https://docs.aws.amazon.com/efs/latest/ug/access-control-overview.html#access-control-manage-access-intro-resource-policies).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutFileSystemPolicy in L<Paws::EFS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

