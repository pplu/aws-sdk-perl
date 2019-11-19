# Generated from callargs_class.tt

package Paws::RDS::DescribeReservedDBInstancesOfferings;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int Bool/;
  use Paws::RDS::Types qw/RDS_Filter/;
  has DBInstanceClass => (is => 'ro', isa => Str, predicate => 1);
  has Duration => (is => 'ro', isa => Str, predicate => 1);
  has Filters => (is => 'ro', isa => ArrayRef[RDS_Filter], predicate => 1);
  has Marker => (is => 'ro', isa => Str, predicate => 1);
  has MaxRecords => (is => 'ro', isa => Int, predicate => 1);
  has MultiAZ => (is => 'ro', isa => Bool, predicate => 1);
  has OfferingType => (is => 'ro', isa => Str, predicate => 1);
  has ProductDescription => (is => 'ro', isa => Str, predicate => 1);
  has ReservedDBInstancesOfferingId => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeReservedDBInstancesOfferings');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::RDS::ReservedDBInstancesOfferingMessage');
  class_has _result_key => (isa => Str, is => 'ro', default => 'DescribeReservedDBInstancesOfferingsResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Duration' => {
                               'type' => 'Str'
                             },
               'ProductDescription' => {
                                         'type' => 'Str'
                                       },
               'DBInstanceClass' => {
                                      'type' => 'Str'
                                    },
               'Marker' => {
                             'type' => 'Str'
                           },
               'MultiAZ' => {
                              'type' => 'Bool'
                            },
               'MaxRecords' => {
                                 'type' => 'Int'
                               },
               'ReservedDBInstancesOfferingId' => {
                                                    'type' => 'Str'
                                                  },
               'OfferingType' => {
                                   'type' => 'Str'
                                 },
               'Filters' => {
                              'class' => 'Paws::RDS::Filter',
                              'type' => 'ArrayRef[RDS_Filter]'
                            }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DescribeReservedDBInstancesOfferings - Arguments for method DescribeReservedDBInstancesOfferings on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeReservedDBInstancesOfferings on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method DescribeReservedDBInstancesOfferings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeReservedDBInstancesOfferings.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    # To list information about reserved DB instance offerings
    # This example lists information for all reserved DB instance offerings for
    # the specified DB instance class, duration, product, offering type, and
    # availability zone settings.
    my $ReservedDBInstancesOfferingMessage =
      $rds->DescribeReservedDBInstancesOfferings(
      'DBInstanceClass'    => 'db.t2.micro',
      'Duration'           => '1y',
      'MultiAZ'            => 0,
      'OfferingType'       => 'No Upfront',
      'ProductDescription' => 'mysql'
      );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DescribeReservedDBInstancesOfferings>

=head1 ATTRIBUTES


=head2 DBInstanceClass => Str

The DB instance class filter value. Specify this parameter to show only
the available offerings matching the specified DB instance class.



=head2 Duration => Str

Duration filter value, specified in years or seconds. Specify this
parameter to show only reservations for this duration.

Valid Values: C<1 | 3 | 31536000 | 94608000>



=head2 Filters => ArrayRef[RDS_Filter]

This parameter isn't currently supported.



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



=head2 MultiAZ => Bool

A value that indicates whether to show only those reservations that
support Multi-AZ.



=head2 OfferingType => Str

The offering type filter value. Specify this parameter to show only the
available offerings matching the specified offering type.

Valid Values: C<"Partial Upfront" | "All Upfront" | "No Upfront">



=head2 ProductDescription => Str

Product description filter value. Specify this parameter to show only
the available offerings that contain the specified product description.

The results show offerings that partially match the filter value.



=head2 ReservedDBInstancesOfferingId => Str

The offering identifier filter value. Specify this parameter to show
only the available offering that matches the specified reservation
identifier.

Example: C<438012d3-4052-4cc7-b2e3-8d3372e0e706>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeReservedDBInstancesOfferings in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

