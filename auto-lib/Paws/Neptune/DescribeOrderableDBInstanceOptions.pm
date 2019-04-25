
package Paws::Neptune::DescribeOrderableDBInstanceOptions;
  use Moose;
  has DBInstanceClass => (is => 'ro', isa => 'Str');
  has Engine => (is => 'ro', isa => 'Str', required => 1);
  has EngineVersion => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::Neptune::Filter]');
  has LicenseModel => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has Vpc => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeOrderableDBInstanceOptions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Neptune::OrderableDBInstanceOptionsMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeOrderableDBInstanceOptionsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::DescribeOrderableDBInstanceOptions - Arguments for method DescribeOrderableDBInstanceOptions on L<Paws::Neptune>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeOrderableDBInstanceOptions on the
L<Amazon Neptune|Paws::Neptune> service. Use the attributes of this class
as arguments to method DescribeOrderableDBInstanceOptions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeOrderableDBInstanceOptions.

=head1 SYNOPSIS

    my $rds = Paws->service('Neptune');
    my $OrderableDBInstanceOptionsMessage =
      $rds->DescribeOrderableDBInstanceOptions(
      Engine          => 'MyString',
      DBInstanceClass => 'MyString',    # OPTIONAL
      EngineVersion   => 'MyString',    # OPTIONAL
      Filters         => [
        {
          Name   => 'MyString',
          Values => [ 'MyString', ... ],

        },
        ...
      ],                                # OPTIONAL
      LicenseModel => 'MyString',       # OPTIONAL
      Marker       => 'MyString',       # OPTIONAL
      MaxRecords   => 1,                # OPTIONAL
      Vpc          => 1,                # OPTIONAL
      );

    # Results:
    my $Marker = $OrderableDBInstanceOptionsMessage->Marker;
    my $OrderableDBInstanceOptions =
      $OrderableDBInstanceOptionsMessage->OrderableDBInstanceOptions;

    # Returns a L<Paws::Neptune::OrderableDBInstanceOptionsMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DescribeOrderableDBInstanceOptions>

=head1 ATTRIBUTES


=head2 DBInstanceClass => Str

The DB instance class filter value. Specify this parameter to show only
the available offerings matching the specified DB instance class.



=head2 B<REQUIRED> Engine => Str

The name of the engine to retrieve DB instance options for.



=head2 EngineVersion => Str

The engine version filter value. Specify this parameter to show only
the available offerings matching the specified engine version.



=head2 Filters => ArrayRef[L<Paws::Neptune::Filter>]

This parameter is not currently supported.



=head2 LicenseModel => Str

The license model filter value. Specify this parameter to show only the
available offerings matching the specified license model.



=head2 Marker => Str

An optional pagination token provided by a previous
DescribeOrderableDBInstanceOptions request. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by C<MaxRecords> .



=head2 MaxRecords => Int

The maximum number of records to include in the response. If more
records exist than the specified C<MaxRecords> value, a pagination
token called a marker is included in the response so that the remaining
results can be retrieved.

Default: 100

Constraints: Minimum 20, maximum 100.



=head2 Vpc => Bool

The VPC filter value. Specify this parameter to show only the available
VPC or non-VPC offerings.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeOrderableDBInstanceOptions in L<Paws::Neptune>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

