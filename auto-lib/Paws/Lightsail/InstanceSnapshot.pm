package Paws::Lightsail::InstanceSnapshot;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest']);
  has FromBlueprintId => (is => 'ro', isa => 'Str', request_name => 'fromBlueprintId', traits => ['NameInRequest']);
  has FromBundleId => (is => 'ro', isa => 'Str', request_name => 'fromBundleId', traits => ['NameInRequest']);
  has FromInstanceArn => (is => 'ro', isa => 'Str', request_name => 'fromInstanceArn', traits => ['NameInRequest']);
  has FromInstanceName => (is => 'ro', isa => 'Str', request_name => 'fromInstanceName', traits => ['NameInRequest']);
  has Location => (is => 'ro', isa => 'Paws::Lightsail::ResourceLocation', request_name => 'location', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Progress => (is => 'ro', isa => 'Str', request_name => 'progress', traits => ['NameInRequest']);
  has ResourceType => (is => 'ro', isa => 'Str', request_name => 'resourceType', traits => ['NameInRequest']);
  has SizeInGb => (is => 'ro', isa => 'Int', request_name => 'sizeInGb', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
  has SupportCode => (is => 'ro', isa => 'Str', request_name => 'supportCode', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::InstanceSnapshot

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lightsail::InstanceSnapshot object:

  $service_obj->Method(Att1 => { Arn => $value, ..., SupportCode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lightsail::InstanceSnapshot object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Describes the snapshot of the virtual private server, or I<instance>.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the snapshot (e.g.,
C<arn:aws:lightsail:us-east-1:123456789101:InstanceSnapshot/d23b5706-3322-4d83-81e5-12345EXAMPLE>).


=head2 CreatedAt => Str

  The timestamp when the snapshot was created (e.g., C<1479907467.024>).


=head2 FromBlueprintId => Str

  The blueprint ID from which you created the snapshot (e.g.,
C<os_debian_8_3>). A blueprint is a virtual private server (or
I<instance>) image used to create instances quickly.


=head2 FromBundleId => Str

  The bundle ID from which you created the snapshot (e.g., C<micro_1_0>).


=head2 FromInstanceArn => Str

  The Amazon Resource Name (ARN) of the instance from which the snapshot
was created (e.g.,
C<arn:aws:lightsail:us-east-1:123456789101:Instance/64b8404c-ccb1-430b-8daf-12345EXAMPLE>).


=head2 FromInstanceName => Str

  The instance from which the snapshot was created.


=head2 Location => L<Paws::Lightsail::ResourceLocation>

  The region name and availability zone where you created the snapshot.


=head2 Name => Str

  The name of the snapshot.


=head2 Progress => Str

  The progress of the snapshot.


=head2 ResourceType => Str

  The type of resource (usually C<InstanceSnapshot>).


=head2 SizeInGb => Int

  The size in GB of the SSD.


=head2 State => Str

  The state the snapshot is in.


=head2 SupportCode => Str

  The support code. Include this code in your email to support when you
have questions about an instance or another resource in Lightsail. This
code enables our support team to look up your Lightsail information
more easily.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

