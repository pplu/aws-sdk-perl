# Generated from callargs_class.tt

package Paws::RDS::DescribeDBClusterParameters;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::RDS::Types qw/RDS_Filter/;
  has DBClusterParameterGroupName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Filters => (is => 'ro', isa => ArrayRef[RDS_Filter], predicate => 1);
  has Marker => (is => 'ro', isa => Str, predicate => 1);
  has MaxRecords => (is => 'ro', isa => Int, predicate => 1);
  has Source => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeDBClusterParameters');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::RDS::DBClusterParameterGroupDetails');
  class_has _result_key => (isa => Str, is => 'ro', default => 'DescribeDBClusterParametersResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Filters' => {
                              'class' => 'Paws::RDS::Filter',
                              'type' => 'ArrayRef[RDS_Filter]'
                            },
               'DBClusterParameterGroupName' => {
                                                  'type' => 'Str'
                                                },
               'Source' => {
                             'type' => 'Str'
                           },
               'MaxRecords' => {
                                 'type' => 'Int'
                               },
               'Marker' => {
                             'type' => 'Str'
                           }
             },
  'IsRequired' => {
                    'DBClusterParameterGroupName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DescribeDBClusterParameters - Arguments for method DescribeDBClusterParameters on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDBClusterParameters on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method DescribeDBClusterParameters.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDBClusterParameters.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
   # To list DB cluster parameters
   # This example lists system parameters for the specified DB cluster parameter
   # group.
    my $DBClusterParameterGroupDetails = $rds->DescribeDBClusterParameters(
      'DBClusterParameterGroupName' => 'mydbclusterparametergroup',
      'Source'                      => 'system'
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DescribeDBClusterParameters>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DBClusterParameterGroupName => Str

The name of a specific DB cluster parameter group to return parameter
details for.

Constraints:

=over

=item *

If supplied, must match the name of an existing
DBClusterParameterGroup.

=back




=head2 Filters => ArrayRef[RDS_Filter]

This parameter is not currently supported.



=head2 Marker => Str

An optional pagination token provided by a previous
C<DescribeDBClusterParameters> request. If this parameter is specified,
the response includes only records beyond the marker, up to the value
specified by C<MaxRecords>.



=head2 MaxRecords => Int

The maximum number of records to include in the response. If more
records exist than the specified C<MaxRecords> value, a pagination
token called a marker is included in the response so that the remaining
results can be retrieved.

Default: 100

Constraints: Minimum 20, maximum 100.



=head2 Source => Str

A value that indicates to return only parameters for a specific source.
Parameter sources can be C<engine>, C<service>, or C<customer>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDBClusterParameters in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

