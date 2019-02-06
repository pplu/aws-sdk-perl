
package Paws::DocDB::DescribeDBEngineVersions;
  use Moose;
  has DBParameterGroupFamily => (is => 'ro', isa => 'Str');
  has DefaultOnly => (is => 'ro', isa => 'Bool');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::DocDB::Filter]');
  has ListSupportedCharacterSets => (is => 'ro', isa => 'Bool');
  has ListSupportedTimezones => (is => 'ro', isa => 'Bool');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDBEngineVersions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DocDB::DBEngineVersionMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDBEngineVersionsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::DescribeDBEngineVersions - Arguments for method DescribeDBEngineVersions on L<Paws::DocDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDBEngineVersions on the
L<Amazon DocumentDB with MongoDB compatibility|Paws::DocDB> service. Use the attributes of this class
as arguments to method DescribeDBEngineVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDBEngineVersions.

=head1 SYNOPSIS

    my $rds = Paws->service('DocDB');
    my $DBEngineVersionMessage = $rds->DescribeDBEngineVersions(
      DBParameterGroupFamily => 'MyString',    # OPTIONAL
      DefaultOnly            => 1,             # OPTIONAL
      Engine                 => 'MyString',    # OPTIONAL
      EngineVersion          => 'MyString',    # OPTIONAL
      Filters                => [
        {
          Name   => 'MyString',
          Values => [ 'MyString', ... ],

        },
        ...
      ],                                       # OPTIONAL
      ListSupportedCharacterSets => 1,             # OPTIONAL
      ListSupportedTimezones     => 1,             # OPTIONAL
      Marker                     => 'MyString',    # OPTIONAL
      MaxRecords                 => 1,             # OPTIONAL
    );

    # Results:
    my $DBEngineVersions = $DBEngineVersionMessage->DBEngineVersions;
    my $Marker           = $DBEngineVersionMessage->Marker;

    # Returns a L<Paws::DocDB::DBEngineVersionMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DescribeDBEngineVersions>

=head1 ATTRIBUTES


=head2 DBParameterGroupFamily => Str

The name of a specific DB parameter group family to return details for.

Constraints:

=over

=item *

If provided, must match an existing C<DBParameterGroupFamily>.

=back




=head2 DefaultOnly => Bool

Indicates that only the default version of the specified engine or
engine and major version combination is returned.



=head2 Engine => Str

The database engine to return.



=head2 EngineVersion => Str

The database engine version to return.

Example: C<5.1.49>



=head2 Filters => ArrayRef[L<Paws::DocDB::Filter>]

This parameter is not currently supported.



=head2 ListSupportedCharacterSets => Bool

If this parameter is specified and the requested engine supports the
C<CharacterSetName> parameter for C<CreateDBInstance>, the response
includes a list of supported character sets for each engine version.



=head2 ListSupportedTimezones => Bool

If this parameter is specified and the requested engine supports the
C<TimeZone> parameter for C<CreateDBInstance>, the response includes a
list of supported time zones for each engine version.



=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.



=head2 MaxRecords => Int

The maximum number of records to include in the response. If more
records exist than the specified C<MaxRecords> value, a pagination
token (marker) is included in the response so that the remaining
results can be retrieved.

Default: 100

Constraints: Minimum 20, maximum 100.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDBEngineVersions in L<Paws::DocDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

