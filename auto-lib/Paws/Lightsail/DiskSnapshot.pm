package Paws::Lightsail::DiskSnapshot;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest']);
  has FromDiskArn => (is => 'ro', isa => 'Str', request_name => 'fromDiskArn', traits => ['NameInRequest']);
  has FromDiskName => (is => 'ro', isa => 'Str', request_name => 'fromDiskName', traits => ['NameInRequest']);
  has FromInstanceArn => (is => 'ro', isa => 'Str', request_name => 'fromInstanceArn', traits => ['NameInRequest']);
  has FromInstanceName => (is => 'ro', isa => 'Str', request_name => 'fromInstanceName', traits => ['NameInRequest']);
  has Location => (is => 'ro', isa => 'Paws::Lightsail::ResourceLocation', request_name => 'location', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Progress => (is => 'ro', isa => 'Str', request_name => 'progress', traits => ['NameInRequest']);
  has ResourceType => (is => 'ro', isa => 'Str', request_name => 'resourceType', traits => ['NameInRequest']);
  has SizeInGb => (is => 'ro', isa => 'Int', request_name => 'sizeInGb', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
  has SupportCode => (is => 'ro', isa => 'Str', request_name => 'supportCode', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::Tag]', request_name => 'tags', traits => ['NameInRequest']);
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


=head2 Location => L<Paws::Lightsail::ResourceLocation>

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


=head2 Tags => ArrayRef[L<Paws::Lightsail::Tag>]

  The tag keys and optional values for the resource. For more information
about tags in Lightsail, see the Lightsail Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-tags).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

