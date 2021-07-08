
package Paws::RedShift::DescribeUsageLimits;
  use Moose;
  has ClusterIdentifier => (is => 'ro', isa => 'Str');
  has FeatureType => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has TagKeys => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has TagValues => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has UsageLimitId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeUsageLimits');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::UsageLimitList');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeUsageLimitsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::DescribeUsageLimits - Arguments for method DescribeUsageLimits on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeUsageLimits on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method DescribeUsageLimits.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeUsageLimits.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $UsageLimitList = $redshift->DescribeUsageLimits(
      ClusterIdentifier => 'MyString',    # OPTIONAL
      FeatureType       => 'spectrum',    # OPTIONAL
      Marker            => 'MyString',    # OPTIONAL
      MaxRecords        => 1,             # OPTIONAL
      TagKeys           => [
        'MyString', ...                   # max: 2147483647
      ],    # OPTIONAL
      TagValues => [
        'MyString', ...    # max: 2147483647
      ],    # OPTIONAL
      UsageLimitId => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Marker      = $UsageLimitList->Marker;
    my $UsageLimits = $UsageLimitList->UsageLimits;

    # Returns a L<Paws::RedShift::UsageLimitList> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/DescribeUsageLimits>

=head1 ATTRIBUTES


=head2 ClusterIdentifier => Str

The identifier of the cluster for which you want to describe usage
limits.



=head2 FeatureType => Str

The feature type for which you want to describe usage limits.

Valid values are: C<"spectrum">, C<"concurrency-scaling">

=head2 Marker => Str

An optional parameter that specifies the starting point to return a set
of response records. When the results of a DescribeUsageLimits request
exceed the value specified in C<MaxRecords>, AWS returns a value in the
C<Marker> field of the response. You can retrieve the next set of
response records by providing the returned marker value in the
C<Marker> parameter and retrying the request.



=head2 MaxRecords => Int

The maximum number of response records to return in each call. If the
number of remaining response records exceeds the specified
C<MaxRecords> value, a value is returned in a C<marker> field of the
response. You can retrieve the next set of records by retrying the
command with the returned marker value.

Default: C<100>

Constraints: minimum 20, maximum 100.



=head2 TagKeys => ArrayRef[Str|Undef]

A tag key or keys for which you want to return all matching usage limit
objects that are associated with the specified key or keys. For
example, suppose that you have parameter groups that are tagged with
keys called C<owner> and C<environment>. If you specify both of these
tag keys in the request, Amazon Redshift returns a response with the
usage limit objects have either or both of these tag keys associated
with them.



=head2 TagValues => ArrayRef[Str|Undef]

A tag value or values for which you want to return all matching usage
limit objects that are associated with the specified tag value or
values. For example, suppose that you have parameter groups that are
tagged with values called C<admin> and C<test>. If you specify both of
these tag values in the request, Amazon Redshift returns a response
with the usage limit objects that have either or both of these tag
values associated with them.



=head2 UsageLimitId => Str

The identifier of the usage limit to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeUsageLimits in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

