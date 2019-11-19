# Generated from json/callargs_class.tt

package Paws::WorkSpaces::RegisterWorkspaceDirectory;
  use Moo;
  use Types::Standard qw/Str Bool ArrayRef Undef/;
  use Paws::WorkSpaces::Types qw/WorkSpaces_Tag/;
  has DirectoryId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has EnableSelfService => (is => 'ro', isa => Bool, predicate => 1);
  has EnableWorkDocs => (is => 'ro', isa => Bool, required => 1, predicate => 1);
  has SubnetIds => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[WorkSpaces_Tag], predicate => 1);
  has Tenancy => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'RegisterWorkspaceDirectory');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::WorkSpaces::RegisterWorkspaceDirectoryResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'DirectoryId' => 1,
                    'EnableWorkDocs' => 1
                  },
  'types' => {
               'SubnetIds' => {
                                'type' => 'ArrayRef[Str|Undef]'
                              },
               'DirectoryId' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'type' => 'ArrayRef[WorkSpaces_Tag]',
                           'class' => 'Paws::WorkSpaces::Tag'
                         },
               'EnableSelfService' => {
                                        'type' => 'Bool'
                                      },
               'Tenancy' => {
                              'type' => 'Str'
                            },
               'EnableWorkDocs' => {
                                     'type' => 'Bool'
                                   }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::RegisterWorkspaceDirectory - Arguments for method RegisterWorkspaceDirectory on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterWorkspaceDirectory on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method RegisterWorkspaceDirectory.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterWorkspaceDirectory.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $RegisterWorkspaceDirectoryResult =
      $workspaces->RegisterWorkspaceDirectory(
      DirectoryId       => 'MyDirectoryId',
      EnableWorkDocs    => 1,
      EnableSelfService => 1,                 # OPTIONAL
      SubnetIds         => [
        'MySubnetId', ...                     # min: 15, max: 24
      ],                                      # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',                # min: 1, max: 127
          Value => 'MyTagValue',              # max: 255; OPTIONAL
        },
        ...
      ],                                      # OPTIONAL
      Tenancy => 'DEDICATED',                 # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/RegisterWorkspaceDirectory>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DirectoryId => Str

The identifier of the directory. You cannot register a directory if it
does not have a status of Active. If the directory does not have a
status of Active, you will receive an InvalidResourceStateException
error. If you have already registered the maximum number of directories
that you can register with Amazon WorkSpaces, you will receive a
ResourceLimitExceededException error. Deregister directories that you
are not using for WorkSpaces, and try again.



=head2 EnableSelfService => Bool

Indicates whether self-service capabilities are enabled or disabled.



=head2 B<REQUIRED> EnableWorkDocs => Bool

Indicates whether Amazon WorkDocs is enabled or disabled. If you have
enabled this parameter and WorkDocs is not available in the Region, you
will receive an OperationNotSupportedException error. Set
C<EnableWorkDocs> to disabled, and try again.



=head2 SubnetIds => ArrayRef[Str|Undef]

The identifiers of the subnets for your virtual private cloud (VPC).
Make sure that the subnets are in supported Availability Zones. The
subnets must also be in separate Availability Zones. If these
conditions are not met, you will receive an
OperationNotSupportedException error.



=head2 Tags => ArrayRef[WorkSpaces_Tag]

The tags associated with the directory.



=head2 Tenancy => Str

Indicates whether your WorkSpace directory is dedicated or shared. To
use Bring Your Own License (BYOL) images, this value must be set to
C<DEDICATED> and your AWS account must be enabled for BYOL. If your
account has not been enabled for BYOL, you will receive an
InvalidParameterValuesException error. For more information about BYOL
images, see Bring Your Own Windows Desktop Images
(https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html).

Valid values are: C<"DEDICATED">, C<"SHARED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterWorkspaceDirectory in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

