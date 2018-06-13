
package Paws::MachineLearning::DescribeBatchPredictions;
  use Moose;
  has EQ => (is => 'ro', isa => 'Str');
  has FilterVariable => (is => 'ro', isa => 'Str');
  has GE => (is => 'ro', isa => 'Str');
  has GT => (is => 'ro', isa => 'Str');
  has LE => (is => 'ro', isa => 'Str');
  has Limit => (is => 'ro', isa => 'Int');
  has LT => (is => 'ro', isa => 'Str');
  has NE => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has Prefix => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeBatchPredictions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MachineLearning::DescribeBatchPredictionsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MachineLearning::DescribeBatchPredictions - Arguments for method DescribeBatchPredictions on L<Paws::MachineLearning>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeBatchPredictions on the
L<Amazon Machine Learning|Paws::MachineLearning> service. Use the attributes of this class
as arguments to method DescribeBatchPredictions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeBatchPredictions.

=head1 SYNOPSIS

    my $machinelearning = Paws->service('MachineLearning');
    my $DescribeBatchPredictionsOutput =
      $machinelearning->DescribeBatchPredictions(
      EQ             => 'MyComparatorValue',    # OPTIONAL
      FilterVariable => 'CreatedAt',            # OPTIONAL
      GE             => 'MyComparatorValue',    # OPTIONAL
      GT             => 'MyComparatorValue',    # OPTIONAL
      LE             => 'MyComparatorValue',    # OPTIONAL
      LT             => 'MyComparatorValue',    # OPTIONAL
      Limit          => 1,                      # OPTIONAL
      NE             => 'MyComparatorValue',    # OPTIONAL
      NextToken      => 'MyStringType',         # OPTIONAL
      Prefix         => 'MyComparatorValue',    # OPTIONAL
      SortOrder      => 'asc',                  # OPTIONAL
      );

    # Results:
    my $NextToken = $DescribeBatchPredictionsOutput->NextToken;
    my $Results   = $DescribeBatchPredictionsOutput->Results;

    # Returns a L<Paws::MachineLearning::DescribeBatchPredictionsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/machinelearning/DescribeBatchPredictions>

=head1 ATTRIBUTES


=head2 EQ => Str

The equal to operator. The C<BatchPrediction> results will have
C<FilterVariable> values that exactly match the value specified with
C<EQ>.



=head2 FilterVariable => Str

Use one of the following variables to filter a list of
C<BatchPrediction>:

=over

=item * C<CreatedAt> - Sets the search criteria to the
C<BatchPrediction> creation date.

=item * C<Status> - Sets the search criteria to the C<BatchPrediction>
status.

=item * C<Name> - Sets the search criteria to the contents of the
C<BatchPrediction>B< > C<Name>.

=item * C<IAMUser> - Sets the search criteria to the user account that
invoked the C<BatchPrediction> creation.

=item * C<MLModelId> - Sets the search criteria to the C<MLModel> used
in the C<BatchPrediction>.

=item * C<DataSourceId> - Sets the search criteria to the C<DataSource>
used in the C<BatchPrediction>.

=item * C<DataURI> - Sets the search criteria to the data file(s) used
in the C<BatchPrediction>. The URL can identify either a file or an
Amazon Simple Storage Solution (Amazon S3) bucket or directory.

=back


Valid values are: C<"CreatedAt">, C<"LastUpdatedAt">, C<"Status">, C<"Name">, C<"IAMUser">, C<"MLModelId">, C<"DataSourceId">, C<"DataURI">

=head2 GE => Str

The greater than or equal to operator. The C<BatchPrediction> results
will have C<FilterVariable> values that are greater than or equal to
the value specified with C<GE>.



=head2 GT => Str

The greater than operator. The C<BatchPrediction> results will have
C<FilterVariable> values that are greater than the value specified with
C<GT>.



=head2 LE => Str

The less than or equal to operator. The C<BatchPrediction> results will
have C<FilterVariable> values that are less than or equal to the value
specified with C<LE>.



=head2 Limit => Int

The number of pages of information to include in the result. The range
of acceptable values is C<1> through C<100>. The default value is
C<100>.



=head2 LT => Str

The less than operator. The C<BatchPrediction> results will have
C<FilterVariable> values that are less than the value specified with
C<LT>.



=head2 NE => Str

The not equal to operator. The C<BatchPrediction> results will have
C<FilterVariable> values not equal to the value specified with C<NE>.



=head2 NextToken => Str

An ID of the page in the paginated results.



=head2 Prefix => Str

A string that is found at the beginning of a variable, such as C<Name>
or C<Id>.

For example, a C<Batch Prediction> operation could have the C<Name>
C<2014-09-09-HolidayGiftMailer>. To search for this C<BatchPrediction>,
select C<Name> for the C<FilterVariable> and any of the following
strings for the C<Prefix>:

=over

=item *

2014-09

=item *

2014-09-09

=item *

2014-09-09-Holiday

=back




=head2 SortOrder => Str

A two-value parameter that determines the sequence of the resulting
list of C<MLModel>s.

=over

=item * C<asc> - Arranges the list in ascending order (A-Z, 0-9).

=item * C<dsc> - Arranges the list in descending order (Z-A, 9-0).

=back

Results are sorted by C<FilterVariable>.

Valid values are: C<"asc">, C<"dsc">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeBatchPredictions in L<Paws::MachineLearning>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

