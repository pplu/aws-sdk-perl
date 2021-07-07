
package Paws::RDS::DescribeDBProxies;
  use Moose;
  has DBProxyName => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Filter]');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDBProxies');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::DescribeDBProxiesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDBProxiesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DescribeDBProxies - Arguments for method DescribeDBProxies on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDBProxies on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method DescribeDBProxies.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDBProxies.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $DescribeDBProxiesResponse = $rds->DescribeDBProxies(
      DBProxyName => 'MyString',    # OPTIONAL
      Filters     => [
        {
          Name   => 'MyString',
          Values => [ 'MyString', ... ],

        },
        ...
      ],                            # OPTIONAL
      Marker     => 'MyString',     # OPTIONAL
      MaxRecords => 1,              # OPTIONAL
    );

    # Results:
    my $DBProxies = $DescribeDBProxiesResponse->DBProxies;
    my $Marker    = $DescribeDBProxiesResponse->Marker;

    # Returns a L<Paws::RDS::DescribeDBProxiesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DescribeDBProxies>

=head1 ATTRIBUTES


=head2 DBProxyName => Str

The name of the DB proxy. If you omit this parameter, the output
includes information about all DB proxies owned by your Amazon Web
Services account ID.



=head2 Filters => ArrayRef[L<Paws::RDS::Filter>]

This parameter is not currently supported.



=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.



=head2 MaxRecords => Int

The maximum number of records to include in the response. If more
records exist than the specified C<MaxRecords> value, a pagination
token called a marker is included in the response so that the remaining
results can be retrieved.

Default: 100

Constraints: Minimum 20, maximum 100.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDBProxies in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

