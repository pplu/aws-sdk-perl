# Generated from default/object.tt
package Paws::WorkSpaces::Workspace;
  use Moo;
  use Types::Standard qw/Str ArrayRef Bool/;
  use Paws::WorkSpaces::Types qw/WorkSpaces_WorkspaceProperties WorkSpaces_ModificationState/;
  has BundleId => (is => 'ro', isa => Str);
  has ComputerName => (is => 'ro', isa => Str);
  has DirectoryId => (is => 'ro', isa => Str);
  has ErrorCode => (is => 'ro', isa => Str);
  has ErrorMessage => (is => 'ro', isa => Str);
  has IpAddress => (is => 'ro', isa => Str);
  has ModificationStates => (is => 'ro', isa => ArrayRef[WorkSpaces_ModificationState]);
  has RootVolumeEncryptionEnabled => (is => 'ro', isa => Bool);
  has State => (is => 'ro', isa => Str);
  has SubnetId => (is => 'ro', isa => Str);
  has UserName => (is => 'ro', isa => Str);
  has UserVolumeEncryptionEnabled => (is => 'ro', isa => Bool);
  has VolumeEncryptionKey => (is => 'ro', isa => Str);
  has WorkspaceId => (is => 'ro', isa => Str);
  has WorkspaceProperties => (is => 'ro', isa => WorkSpaces_WorkspaceProperties);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'WorkspaceProperties' => {
                                          'class' => 'Paws::WorkSpaces::WorkspaceProperties',
                                          'type' => 'WorkSpaces_WorkspaceProperties'
                                        },
               'ComputerName' => {
                                   'type' => 'Str'
                                 },
               'WorkspaceId' => {
                                  'type' => 'Str'
                                },
               'BundleId' => {
                               'type' => 'Str'
                             },
               'IpAddress' => {
                                'type' => 'Str'
                              },
               'UserVolumeEncryptionEnabled' => {
                                                  'type' => 'Bool'
                                                },
               'ErrorMessage' => {
                                   'type' => 'Str'
                                 },
               'State' => {
                            'type' => 'Str'
                          },
               'ModificationStates' => {
                                         'class' => 'Paws::WorkSpaces::ModificationState',
                                         'type' => 'ArrayRef[WorkSpaces_ModificationState]'
                                       },
               'VolumeEncryptionKey' => {
                                          'type' => 'Str'
                                        },
               'UserName' => {
                               'type' => 'Str'
                             },
               'DirectoryId' => {
                                  'type' => 'Str'
                                },
               'ErrorCode' => {
                                'type' => 'Str'
                              },
               'SubnetId' => {
                               'type' => 'Str'
                             },
               'RootVolumeEncryptionEnabled' => {
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

Paws::WorkSpaces::Workspace

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WorkSpaces::Workspace object:

  $service_obj->Method(Att1 => { BundleId => $value, ..., WorkspaceProperties => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WorkSpaces::Workspace object:

  $result = $service_obj->Method(...);
  $result->Att1->BundleId

=head1 DESCRIPTION

Describes a WorkSpace.

=head1 ATTRIBUTES


=head2 BundleId => Str

  The identifier of the bundle used to create the WorkSpace.


=head2 ComputerName => Str

  The name of the WorkSpace, as seen by the operating system.


=head2 DirectoryId => Str

  The identifier of the AWS Directory Service directory for the
WorkSpace.


=head2 ErrorCode => Str

  The error code that is returned if the WorkSpace cannot be created.


=head2 ErrorMessage => Str

  The text of the error message that is returned if the WorkSpace cannot
be created.


=head2 IpAddress => Str

  The IP address of the WorkSpace.


=head2 ModificationStates => ArrayRef[WorkSpaces_ModificationState]

  The modification states of the WorkSpace.


=head2 RootVolumeEncryptionEnabled => Bool

  Indicates whether the data stored on the root volume is encrypted.


=head2 State => Str

  The operational state of the WorkSpace.


=head2 SubnetId => Str

  The identifier of the subnet for the WorkSpace.


=head2 UserName => Str

  The user for the WorkSpace.


=head2 UserVolumeEncryptionEnabled => Bool

  Indicates whether the data stored on the user volume is encrypted.


=head2 VolumeEncryptionKey => Str

  The KMS key used to encrypt data stored on your WorkSpace.


=head2 WorkspaceId => Str

  The identifier of the WorkSpace.


=head2 WorkspaceProperties => WorkSpaces_WorkspaceProperties

  The properties of the WorkSpace.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

