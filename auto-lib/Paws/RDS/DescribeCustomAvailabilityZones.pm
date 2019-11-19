# Generated from callargs_class.tt

package Paws::RDS::DescribeCustomAvailabilityZones;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::RDS::Types qw/RDS_Filter/;
  has CustomAvailabilityZoneId => (is => 'ro', isa => Str, predicate => 1);
  has Filters => (is => 'ro', isa => ArrayRef[RDS_Filter], predicate => 1);
  has Marker => (is => 'ro', isa => Str, predicate => 1);
  has MaxRecords => (is => 'ro', isa => Int, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeCustomAvailabilityZones');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::RDS::CustomAvailabilityZoneMessage');
  class_has _result_key => (isa => Str, is => 'ro', default => 'DescribeCustomAvailabilityZonesResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MaxRecords' => {
                                 'type' => 'Int'
                               },
               'CustomAvailabilityZoneId' => {
                                               'type' => 'Str'
                                             },
               'Marker' => {
                             'type' => 'Str'
                           },
               'Filters' => {
                              'type' => 'ArrayRef[RDS_Filter]',
                              'class' => 'Paws::RDS::Filter'
                            }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DescribeCustomAvailabilityZones - Arguments for method DescribeCustomAvailabilityZones on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeCustomAvailabilityZones on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method DescribeCustomAvailabilityZones.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeCustomAvailabilityZones.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $CustomAvailabilityZoneMessage = $rds->DescribeCustomAvailabilityZones(
      CustomAvailabilityZoneId => 'MyString',    # OPTIONAL
      Filters                  => [
        {
          Name   => 'MyString',
          Values => [ 'MyString', ... ],

        },
        ...
      ],                                         # OPTIONAL
      Marker     => 'MyString',                  # OPTIONAL
      MaxRecords => 1,                           # OPTIONAL
    );

    # Results:
    my $CustomAvailabilityZones =
      $CustomAvailabilityZoneMessage->CustomAvailabilityZones;
    my $Marker = $CustomAvailabilityZoneMessage->Marker;

    # Returns a L<Paws::RDS::CustomAvailabilityZoneMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DescribeCustomAvailabilityZones>

=head1 ATTRIBUTES


=head2 CustomAvailabilityZoneId => Str

The custom AZ identifier. If this parameter is specified, information
from only the specific custom AZ is returned.



=head2 Filters => ArrayRef[RDS_Filter]

A filter that specifies one or more custom AZs to describe.



=head2 Marker => Str

An optional pagination token provided by a previous
C<DescribeCustomAvailabilityZones> request. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by C<MaxRecords>.



=head2 MaxRecords => Int

The maximum number of records to include in the response. If more
records exist than the specified C<MaxRecords> value, a pagination
token called a marker is included in the response so you can retrieve
the remaining results.

Default: 100

Constraints: Minimum 20, maximum 100.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeCustomAvailabilityZones in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

