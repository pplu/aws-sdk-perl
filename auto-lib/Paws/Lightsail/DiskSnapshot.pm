# Generated from default/object.tt
package Paws::Lightsail::DiskSnapshot;
  use Moo;
  use Types::Standard qw/Str Bool Int ArrayRef/;
  use Paws::Lightsail::Types qw/Lightsail_Tag Lightsail_ResourceLocation/;
  has Arn => (is => 'ro', isa => Str);
  has CreatedAt => (is => 'ro', isa => Str);
  has FromDiskArn => (is => 'ro', isa => Str);
  has FromDiskName => (is => 'ro', isa => Str);
  has FromInstanceArn => (is => 'ro', isa => Str);
  has FromInstanceName => (is => 'ro', isa => Str);
  has IsFromAutoSnapshot => (is => 'ro', isa => Bool);
  has Location => (is => 'ro', isa => Lightsail_ResourceLocation);
  has Name => (is => 'ro', isa => Str);
  has Progress => (is => 'ro', isa => Str);
  has ResourceType => (is => 'ro', isa => Str);
  has SizeInGb => (is => 'ro', isa => Int);
  has State => (is => 'ro', isa => Str);
  has SupportCode => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[Lightsail_Tag]);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Name' => 'name',
                       'State' => 'state',
                       'SupportCode' => 'supportCode',
                       'ResourceType' => 'resourceType',
                       'FromInstanceArn' => 'fromInstanceArn',
                       'FromInstanceName' => 'fromInstanceName',
                       'SizeInGb' => 'sizeInGb',
                       'Tags' => 'tags',
                       'Arn' => 'arn',
                       'IsFromAutoSnapshot' => 'isFromAutoSnapshot',
                       'Location' => 'location',
                       'Progress' => 'progress',
                       'CreatedAt' => 'createdAt',
                       'FromDiskArn' => 'fromDiskArn',
                       'FromDiskName' => 'fromDiskName'
                     },
  'types' => {
               'Name' => {
                           'type' => 'Str'
                         },
               'State' => {
                            'type' => 'Str'
                          },
               'SupportCode' => {
                                  'type' => 'Str'
                                },
               'FromInstanceArn' => {
                                      'type' => 'Str'
                                    },
               'FromInstanceName' => {
                                       'type' => 'Str'
                                     },
               'ResourceType' => {
                                   'type' => 'Str'
                                 },
               'Arn' => {
                          'type' => 'Str'
                        },
               'IsFromAutoSnapshot' => {
                                         'type' => 'Bool'
                                       },
               'SizeInGb' => {
                               'type' => 'Int'
                             },
               'Tags' => {
                           'class' => 'Paws::Lightsail::Tag',
                           'type' => 'ArrayRef[Lightsail_Tag]'
                         },
               'Progress' => {
                               'type' => 'Str'
                             },
               'FromDiskArn' => {
                                  'type' => 'Str'
                                },
               'CreatedAt' => {
                                'type' => 'Str'
                              },
               'FromDiskName' => {
                                   'type' => 'Str'
                                 },
               'Location' => {
                               'class' => 'Paws::Lightsail::ResourceLocation',
                               'type' => 'Lightsail_ResourceLocation'
                             }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::DiskSnapshot

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lightsail::DiskSnapshot object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lightsail::DiskSnapshot object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Describes a block storage disk snapshot.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the disk snapshot.


=head2 CreatedAt => Str

  The date when the disk snapshot was created.


=head2 FromDiskArn => Str

  The Amazon Resource Name (ARN) of the source disk from which the disk
snapshot was created.


=head2 FromDiskName => Str

  The unique name of the source disk from which the disk snapshot was
created.


=head2 FromInstanceArn => Str

  The Amazon Resource Name (ARN) of the source instance from which the
disk (system volume) snapshot was created.


=head2 FromInstanceName => Str

  The unique name of the source instance from which the disk (system
volume) snapshot was created.


=head2 IsFromAutoSnapshot => Bool

  A Boolean value indicating whether the snapshot was created from an
automatic snapshot.


=head2 Location => Lightsail_ResourceLocation

  The AWS Region and Availability Zone where the disk snapshot was
created.


=head2 Name => Str

  The name of the disk snapshot (e.g., C<my-disk-snapshot>).


=head2 Progress => Str

  The progress of the disk snapshot operation.


=head2 ResourceType => Str

  The Lightsail resource type (e.g., C<DiskSnapshot>).


=head2 SizeInGb => Int

  The size of the disk in GB.


=head2 State => Str

  The status of the disk snapshot operation.


=head2 SupportCode => Str

  The support code. Include this code in your email to support when you
have questions about an instance or another resource in Lightsail. This
code enables our support team to look up your Lightsail information
more easily.


=head2 Tags => ArrayRef[Lightsail_Tag]

  The tag keys and optional values for the resource. For more information
about tags in Lightsail, see the Lightsail Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-tags).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

