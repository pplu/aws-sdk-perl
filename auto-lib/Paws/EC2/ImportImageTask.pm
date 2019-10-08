package Paws::EC2::ImportImageTask;
  use Moo;  use Types::Standard qw/Str Bool ArrayRef/;
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

      sub params_map {
    our $Params_map ||= {
  'types' => {
               'ImageId' => {
                              'type' => 'Str'
                            },
               'Platform' => {
                               'type' => 'Str'
                             },
               'ImportTaskId' => {
                                   'type' => 'Str'
                                 },
               'Status' => {
                             'type' => 'Str'
                           },
               'LicenseType' => {
                                  'type' => 'Str'
                                },
               'KmsKeyId' => {
                               'type' => 'Str'
                             },
               'Encrypted' => {
                                'type' => 'Bool'
                              },
               'Hypervisor' => {
                                 'type' => 'Str'
                               },
               'Progress' => {
                               'type' => 'Str'
                             },
               'StatusMessage' => {
                                    'type' => 'Str'
                                  },
               'SnapshotDetails' => {
                                      'class' => 'Paws::EC2::SnapshotDetail',
                                      'type' => 'ArrayRef[EC2_SnapshotDetail]'
                                    },
               'Architecture' => {
                                   'type' => 'Str'
                                 },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'ImageId' => 'imageId',
                       'Platform' => 'platform',
                       'ImportTaskId' => 'importTaskId',
                       'Status' => 'status',
                       'LicenseType' => 'licenseType',
                       'KmsKeyId' => 'kmsKeyId',
                       'Encrypted' => 'encrypted',
                       'Hypervisor' => 'hypervisor',
                       'Progress' => 'progress',
                       'StatusMessage' => 'statusMessage',
                       'SnapshotDetails' => 'snapshotDetailSet',
                       'Architecture' => 'architecture',
                       'Description' => 'description'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ImportImageTask

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ImportImageTask object:

  $service_obj->Method(Att1 => { Architecture => $value, ..., StatusMessage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ImportImageTask object:

  $result = $service_obj->Method(...);
  $result->Att1->Architecture

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Architecture => Str

  The architecture of the virtual machine.

Valid values: C<i386> | C<x86_64> | C<arm64>


=head2 Description => Str

  A description of the import task.


=head2 Encrypted => Bool

  Indicates whether the image is encrypted.


=head2 Hypervisor => Str

  The target hypervisor for the import task.

Valid values: C<xen>


=head2 ImageId => Str

  The ID of the Amazon Machine Image (AMI) of the imported virtual
machine.


=head2 ImportTaskId => Str

  The ID of the import image task.


=head2 KmsKeyId => Str

  The identifier for the AWS Key Management Service (AWS KMS) customer
master key (CMK) that was used to create the encrypted image.


=head2 LicenseType => Str

  The license type of the virtual machine.


=head2 Platform => Str

  The description string for the import image task.


=head2 Progress => Str

  The percentage of progress of the import image task.


=head2 SnapshotDetails => ArrayRef[EC2_SnapshotDetail]

  Information about the snapshots.


=head2 Status => Str

  A brief status for the import image task.


=head2 StatusMessage => Str

  A descriptive status message for the import image task.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
