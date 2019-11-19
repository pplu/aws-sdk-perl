# Generated from callargs_class.tt

package Paws::RDS::DescribeDBEngineVersions;
  use Moo;
  use Types::Standard qw/Str Bool ArrayRef Int/;
  use Paws::RDS::Types qw/RDS_Filter/;
  has DBParameterGroupFamily => (is => 'ro', isa => Str, predicate => 1);
  has DefaultOnly => (is => 'ro', isa => Bool, predicate => 1);
  has Engine => (is => 'ro', isa => Str, predicate => 1);
  has EngineVersion => (is => 'ro', isa => Str, predicate => 1);
  has Filters => (is => 'ro', isa => ArrayRef[RDS_Filter], predicate => 1);
  has IncludeAll => (is => 'ro', isa => Bool, predicate => 1);
  has ListSupportedCharacterSets => (is => 'ro', isa => Bool, predicate => 1);
  has ListSupportedTimezones => (is => 'ro', isa => Bool, predicate => 1);
  has Marker => (is => 'ro', isa => Str, predicate => 1);
  has MaxRecords => (is => 'ro', isa => Int, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeDBEngineVersions');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::RDS::DBEngineVersionMessage');
  class_has _result_key => (isa => Str, is => 'ro', default => 'DescribeDBEngineVersionsResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DefaultOnly' => {
                                  'type' => 'Bool'
                                },
               'Filters' => {
                              'class' => 'Paws::RDS::Filter',
                              'type' => 'ArrayRef[RDS_Filter]'
                            },
               'EngineVersion' => {
                                    'type' => 'Str'
                                  },
               'ListSupportedCharacterSets' => {
                                                 'type' => 'Bool'
                                               },
               'Engine' => {
                             'type' => 'Str'
                           },
               'DBParameterGroupFamily' => {
                                             'type' => 'Str'
                                           },
               'Marker' => {
                             'type' => 'Str'
                           },
               'IncludeAll' => {
                                 'type' => 'Bool'
                               },
               'MaxRecords' => {
                                 'type' => 'Int'
                               },
               'ListSupportedTimezones' => {
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

Paws::RDS::DescribeDBEngineVersions - Arguments for method DescribeDBEngineVersions on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDBEngineVersions on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method DescribeDBEngineVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDBEngineVersions.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    # To list DB engine version settings
    # This example lists settings for the specified DB engine version.
    my $DBEngineVersionMessage = $rds->DescribeDBEngineVersions(
      'DBParameterGroupFamily'     => 'mysql5.6',
      'DefaultOnly'                => 1,
      'Engine'                     => 'mysql',
      'EngineVersion'              => 5.6,
      'ListSupportedCharacterSets' => 1
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DescribeDBEngineVersions>

=head1 ATTRIBUTES


=head2 DBParameterGroupFamily => Str

The name of a specific DB parameter group family to return details for.

Constraints:

=over

=item *

If supplied, must match an existing DBParameterGroupFamily.

=back




=head2 DefaultOnly => Bool

A value that indicates whether only the default version of the
specified engine or engine and major version combination is returned.



=head2 Engine => Str

The database engine to return.



=head2 EngineVersion => Str

The database engine version to return.

Example: C<5.1.49>



=head2 Filters => ArrayRef[RDS_Filter]

This parameter isn't currently supported.



=head2 IncludeAll => Bool

A value that indicates whether to include engine versions that aren't
available in the list. The default is to list only available engine
versions.



=head2 ListSupportedCharacterSets => Bool

A value that indicates whether to list the supported character sets for
each engine version.

If this parameter is enabled and the requested engine supports the
C<CharacterSetName> parameter for C<CreateDBInstance>, the response
includes a list of supported character sets for each engine version.



=head2 ListSupportedTimezones => Bool

A value that indicates whether to list the supported time zones for
each engine version.

If this parameter is enabled and the requested engine supports the
C<TimeZone> parameter for C<CreateDBInstance>, the response includes a
list of supported time zones for each engine version.



=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.



=head2 MaxRecords => Int

The maximum number of records to include in the response. If more than
the C<MaxRecords> value is available, a pagination token called a
marker is included in the response so you can retrieve the remaining
results.

Default: 100

Constraints: Minimum 20, maximum 100.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDBEngineVersions in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

