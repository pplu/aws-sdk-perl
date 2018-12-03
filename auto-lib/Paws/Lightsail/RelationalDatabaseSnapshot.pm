package Paws::Lightsail::RelationalDatabaseSnapshot;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest']);
  has Engine => (is => 'ro', isa => 'Str', request_name => 'engine', traits => ['NameInRequest']);
  has EngineVersion => (is => 'ro', isa => 'Str', request_name => 'engineVersion', traits => ['NameInRequest']);
  has FromRelationalDatabaseArn => (is => 'ro', isa => 'Str', request_name => 'fromRelationalDatabaseArn', traits => ['NameInRequest']);
  has FromRelationalDatabaseBlueprintId => (is => 'ro', isa => 'Str', request_name => 'fromRelationalDatabaseBlueprintId', traits => ['NameInRequest']);
  has FromRelationalDatabaseBundleId => (is => 'ro', isa => 'Str', request_name => 'fromRelationalDatabaseBundleId', traits => ['NameInRequest']);
  has FromRelationalDatabaseName => (is => 'ro', isa => 'Str', request_name => 'fromRelationalDatabaseName', traits => ['NameInRequest']);
  has Location => (is => 'ro', isa => 'Paws::Lightsail::ResourceLocation', request_name => 'location', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has ResourceType => (is => 'ro', isa => 'Str', request_name => 'resourceType', traits => ['NameInRequest']);
  has SizeInGb => (is => 'ro', isa => 'Int', request_name => 'sizeInGb', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
  has SupportCode => (is => 'ro', isa => 'Str', request_name => 'supportCode', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::Tag]', request_name => 'tags', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::RelationalDatabaseSnapshot

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lightsail::RelationalDatabaseSnapshot object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lightsail::RelationalDatabaseSnapshot object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Describes a database snapshot.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the database snapshot.


=head2 CreatedAt => Str

  The timestamp when the database snapshot was created.


=head2 Engine => Str

  The software of the database snapshot (for example, C<MySQL>)


=head2 EngineVersion => Str

  The database engine version for the database snapshot (for example,
C<5.7.23>).


=head2 FromRelationalDatabaseArn => Str

  The Amazon Resource Name (ARN) of the database from which the database
snapshot was created.


=head2 FromRelationalDatabaseBlueprintId => Str

  The blueprint ID of the database from which the database snapshot was
created. A blueprint describes the major engine version of a database.


=head2 FromRelationalDatabaseBundleId => Str

  The bundle ID of the database from which the database snapshot was
created.


=head2 FromRelationalDatabaseName => Str

  The name of the source database from which the database snapshot was
created.


=head2 Location => L<Paws::Lightsail::ResourceLocation>

  The Region name and Availability Zone where the database snapshot is
located.


=head2 Name => Str

  The name of the database snapshot.


=head2 ResourceType => Str

  The Lightsail resource type.


=head2 SizeInGb => Int

  The size of the disk in GB (for example, C<32>) for the database
snapshot.


=head2 State => Str

  The state of the database snapshot.


=head2 SupportCode => Str

  The support code for the database snapshot. Include this code in your
email to support when you have questions about a database snapshot in
Lightsail. This code enables our support team to look up your Lightsail
information more easily.


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

