# Generated from callargs_class.tt

package Paws::RDS::DescribeEngineDefaultParameters;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::RDS::Types qw/RDS_Filter/;
  has DBParameterGroupFamily => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Filters => (is => 'ro', isa => ArrayRef[RDS_Filter], predicate => 1);
  has Marker => (is => 'ro', isa => Str, predicate => 1);
  has MaxRecords => (is => 'ro', isa => Int, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeEngineDefaultParameters');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::RDS::DescribeEngineDefaultParametersResult');
  class_has _result_key => (isa => Str, is => 'ro', default => 'DescribeEngineDefaultParametersResult');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'DBParameterGroupFamily' => 1
                  },
  'types' => {
               'DBParameterGroupFamily' => {
                                             'type' => 'Str'
                                           },
               'Marker' => {
                             'type' => 'Str'
                           },
               'Filters' => {
                              'type' => 'ArrayRef[RDS_Filter]',
                              'class' => 'Paws::RDS::Filter'
                            },
               'MaxRecords' => {
                                 'type' => 'Int'
                               }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DescribeEngineDefaultParameters - Arguments for method DescribeEngineDefaultParameters on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEngineDefaultParameters on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method DescribeEngineDefaultParameters.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEngineDefaultParameters.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    # To list default parameters for a DB engine
    # This example lists default parameters for the specified DB engine.
    my $DescribeEngineDefaultParametersResult =
      $rds->DescribeEngineDefaultParameters(
      'DBParameterGroupFamily' => 'mysql5.6' );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DescribeEngineDefaultParameters>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DBParameterGroupFamily => Str

The name of the DB parameter group family.



=head2 Filters => ArrayRef[RDS_Filter]

This parameter isn't currently supported.



=head2 Marker => Str

An optional pagination token provided by a previous
C<DescribeEngineDefaultParameters> request. If this parameter is
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

This class forms part of L<Paws>, documenting arguments for method DescribeEngineDefaultParameters in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

