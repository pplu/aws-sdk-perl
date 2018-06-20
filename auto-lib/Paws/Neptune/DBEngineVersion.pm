package Paws::Neptune::DBEngineVersion;
  use Moose;
  has DBEngineDescription => (is => 'ro', isa => 'Str');
  has DBEngineVersionDescription => (is => 'ro', isa => 'Str');
  has DBParameterGroupFamily => (is => 'ro', isa => 'Str');
  has DefaultCharacterSet => (is => 'ro', isa => 'Paws::Neptune::CharacterSet');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has ExportableLogTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SupportedCharacterSets => (is => 'ro', isa => 'ArrayRef[Paws::Neptune::CharacterSet]', request_name => 'CharacterSet', traits => ['NameInRequest']);
  has SupportedTimezones => (is => 'ro', isa => 'ArrayRef[Paws::Neptune::Timezone]', request_name => 'Timezone', traits => ['NameInRequest']);
  has SupportsLogExportsToCloudwatchLogs => (is => 'ro', isa => 'Bool');
  has SupportsReadReplica => (is => 'ro', isa => 'Bool');
  has ValidUpgradeTarget => (is => 'ro', isa => 'ArrayRef[Paws::Neptune::UpgradeTarget]', request_name => 'UpgradeTarget', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::DBEngineVersion

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Neptune::DBEngineVersion object:

  $service_obj->Method(Att1 => { DBEngineDescription => $value, ..., ValidUpgradeTarget => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Neptune::DBEngineVersion object:

  $result = $service_obj->Method(...);
  $result->Att1->DBEngineDescription

=head1 DESCRIPTION

This data type is used as a response element in the action
DescribeDBEngineVersions.

=head1 ATTRIBUTES


=head2 DBEngineDescription => Str

  The description of the database engine.


=head2 DBEngineVersionDescription => Str

  The description of the database engine version.


=head2 DBParameterGroupFamily => Str

  The name of the DB parameter group family for the database engine.


=head2 DefaultCharacterSet => L<Paws::Neptune::CharacterSet>

  The default character set for new instances of this engine version, if
the C<CharacterSetName> parameter of the CreateDBInstance API is not
specified.


=head2 Engine => Str

  The name of the database engine.


=head2 EngineVersion => Str

  The version number of the database engine.


=head2 ExportableLogTypes => ArrayRef[Str|Undef]

  The types of logs that the database engine has available for export to
CloudWatch Logs.


=head2 SupportedCharacterSets => ArrayRef[L<Paws::Neptune::CharacterSet>]

  A list of the character sets supported by this engine for the
C<CharacterSetName> parameter of the C<CreateDBInstance> action.


=head2 SupportedTimezones => ArrayRef[L<Paws::Neptune::Timezone>]

  A list of the time zones supported by this engine for the C<Timezone>
parameter of the C<CreateDBInstance> action.


=head2 SupportsLogExportsToCloudwatchLogs => Bool

  A value that indicates whether the engine version supports exporting
the log types specified by ExportableLogTypes to CloudWatch Logs.


=head2 SupportsReadReplica => Bool

  Indicates whether the database engine version supports read replicas.


=head2 ValidUpgradeTarget => ArrayRef[L<Paws::Neptune::UpgradeTarget>]

  A list of engine versions that this database engine version can be
upgraded to.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Neptune>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

