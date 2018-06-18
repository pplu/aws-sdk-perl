
package Paws::Neptune::DescribeEngineDefaultParameters;
  use Moose;
  has DBParameterGroupFamily => (is => 'ro', isa => 'Str', required => 1);
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::Neptune::Filter]');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEngineDefaultParameters');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Neptune::DescribeEngineDefaultParametersResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEngineDefaultParametersResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::DescribeEngineDefaultParameters - Arguments for method DescribeEngineDefaultParameters on L<Paws::Neptune>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEngineDefaultParameters on the
L<Amazon Neptune|Paws::Neptune> service. Use the attributes of this class
as arguments to method DescribeEngineDefaultParameters.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEngineDefaultParameters.

=head1 SYNOPSIS

    my $rds = Paws->service('Neptune');
    my $DescribeEngineDefaultParametersResult =
      $rds->DescribeEngineDefaultParameters(
      DBParameterGroupFamily => 'MyString',
      Filters                => [
        {
          Name   => 'MyString',
          Values => [ 'MyString', ... ],

        },
        ...
      ],    # OPTIONAL
      Marker     => 'MyString',    # OPTIONAL
      MaxRecords => 1,             # OPTIONAL
      );

    # Results:
    my $EngineDefaults = $DescribeEngineDefaultParametersResult->EngineDefaults;

    # Returns a L<Paws::Neptune::DescribeEngineDefaultParametersResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DescribeEngineDefaultParameters>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DBParameterGroupFamily => Str

The name of the DB parameter group family.



=head2 Filters => ArrayRef[L<Paws::Neptune::Filter>]

Not currently supported.



=head2 Marker => Str

An optional pagination token provided by a previous
C<DescribeEngineDefaultParameters> request. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by C<MaxRecords>.



=head2 MaxRecords => Int

The maximum number of records to include in the response. If more
records exist than the specified C<MaxRecords> value, a pagination
token called a marker is included in the response so that the remaining
results can be retrieved.

Default: 100

Constraints: Minimum 20, maximum 100.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeEngineDefaultParameters in L<Paws::Neptune>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

