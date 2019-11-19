
package Paws::EC2::ImportImageResult;
  use Moo;

  use Types::Standard qw/Str Bool ArrayRef/;
  use Paws::EC2::Types qw/EC2_SnapshotDetail/;
  has Architecture => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has Encrypted => (is => 'ro', isa => Bool);
  has Hypervisor => (is => 'ro', isa => Str);
  has ImageId => (is => 'ro', isa => Str);
  has ImportTaskId => (is => 'ro', isa => Str);
  has KmsKeyId => (is => 'ro', isa => Str);
  has LicenseType => (is => 'ro', isa => Str);
  has Platform => (is => 'ro', isa => Str);
  has Progress => (is => 'ro', isa => Str);
  has SnapshotDetails => (is => 'ro', isa => ArrayRef[EC2_SnapshotDetail]);
  has Status => (is => 'ro', isa => Str);
  has StatusMessage => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Description' => {
                                  'type' => 'Str'
                                },
               'KmsKeyId' => {
                               'type' => 'Str'
                             },
               'Encrypted' => {
                                'type' => 'Bool'
                              },
               'Progress' => {
                               'type' => 'Str'
                             },
               'ImportTaskId' => {
                                   'type' => 'Str'
                                 },
               'ImageId' => {
                              'type' => 'Str'
                            },
               'LicenseType' => {
                                  'type' => 'Str'
                                },
               'Architecture' => {
                                   'type' => 'Str'
                                 },
               'StatusMessage' => {
                                    'type' => 'Str'
                                  },
               'Status' => {
                             'type' => 'Str'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SnapshotDetails' => {
                                      'type' => 'ArrayRef[EC2_SnapshotDetail]',
                                      'class' => 'Paws::EC2::SnapshotDetail'
                                    },
               'Hypervisor' => {
                                 'type' => 'Str'
                               },
               'Platform' => {
                               'type' => 'Str'
                             }
             },
  'NameInRequest' => {
                       'LicenseType' => 'licenseType',
                       'Architecture' => 'architecture',
                       'ImportTaskId' => 'importTaskId',
                       'ImageId' => 'imageId',
                       'Progress' => 'progress',
                       'Encrypted' => 'encrypted',
                       'Description' => 'description',
                       'KmsKeyId' => 'kmsKeyId',
                       'Hypervisor' => 'hypervisor',
                       'Platform' => 'platform',
                       'Status' => 'status',
                       'SnapshotDetails' => 'snapshotDetailSet',
                       'StatusMessage' => 'statusMessage'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ImportImageResult

=head1 ATTRIBUTES


=head2 Architecture => Str

The architecture of the virtual machine.


=head2 Description => Str

A description of the import task.


=head2 Encrypted => Bool

Indicates whether the AMI is encypted.


=head2 Hypervisor => Str

The target hypervisor of the import task.


=head2 ImageId => Str

The ID of the Amazon Machine Image (AMI) created by the import task.


=head2 ImportTaskId => Str

The task ID of the import image task.


=head2 KmsKeyId => Str

The identifier for the AWS Key Management Service (AWS KMS) customer
master key (CMK) that was used to create the encrypted AMI.


=head2 LicenseType => Str

The license type of the virtual machine.


=head2 Platform => Str

The operating system of the virtual machine.


=head2 Progress => Str

The progress of the task.


=head2 SnapshotDetails => ArrayRef[EC2_SnapshotDetail]

Information about the snapshots.


=head2 Status => Str

A brief status of the task.


=head2 StatusMessage => Str

A detailed status message of the import task.


=head2 _request_id => Str


=cut

