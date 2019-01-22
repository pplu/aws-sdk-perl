package Paws::DocDB::DBEngineVersion;
  use Moose;
  has DBEngineDescription => (is => 'ro', isa => 'Str');
  has DBEngineVersionDescription => (is => 'ro', isa => 'Str');
  has DBParameterGroupFamily => (is => 'ro', isa => 'Str');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has ExportableLogTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SupportsLogExportsToCloudwatchLogs => (is => 'ro', isa => 'Bool');
  has ValidUpgradeTarget => (is => 'ro', isa => 'ArrayRef[Paws::DocDB::UpgradeTarget]', request_name => 'UpgradeTarget', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::DBEngineVersion

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DocDB::DBEngineVersion object:

  $service_obj->Method(Att1 => { DBEngineDescription => $value, ..., ValidUpgradeTarget => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DocDB::DBEngineVersion object:

  $result = $service_obj->Method(...);
  $result->Att1->DBEngineDescription

=head1 DESCRIPTION

Detailed information about a DB engine version.

=head1 ATTRIBUTES


=head2 DBEngineDescription => Str

  The description of the database engine.


=head2 DBEngineVersionDescription => Str

  The description of the database engine version.


=head2 DBParameterGroupFamily => Str

  The name of the DB parameter group family for the database engine.


=head2 Engine => Str

  The name of the database engine.


=head2 EngineVersion => Str

  The version number of the database engine.


=head2 ExportableLogTypes => ArrayRef[Str|Undef]

  The types of logs that the database engine has available for export to
Amazon CloudWatch Logs.


=head2 SupportsLogExportsToCloudwatchLogs => Bool

  A value that indicates whether the engine version supports exporting
the log types specified by C<ExportableLogTypes> to CloudWatch Logs.


=head2 ValidUpgradeTarget => ArrayRef[L<Paws::DocDB::UpgradeTarget>]

  A list of engine versions that this database engine version can be
upgraded to.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DocDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

