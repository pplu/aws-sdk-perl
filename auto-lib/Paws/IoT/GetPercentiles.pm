
package Paws::IoT::GetPercentiles;
  use Moose;
  has AggregationField => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'aggregationField');
  has IndexName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'indexName');
  has Percents => (is => 'ro', isa => 'ArrayRef[Num]', traits => ['NameInRequest'], request_name => 'percents');
  has QueryString => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'queryString', required => 1);
  has QueryVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'queryVersion');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPercentiles');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/indices/percentiles');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::GetPercentilesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::GetPercentiles - Arguments for method GetPercentiles on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetPercentiles on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method GetPercentiles.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetPercentiles.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $GetPercentilesResponse = $iot->GetPercentiles(
      QueryString      => 'MyQueryString',
      AggregationField => 'MyAggregationField',    # OPTIONAL
      IndexName        => 'MyIndexName',           # OPTIONAL
      Percents         => [
        1, ...                                     # max: 100
      ],    # OPTIONAL
      QueryVersion => 'MyQueryVersion',    # OPTIONAL
    );

    # Results:
    my $Percentiles = $GetPercentilesResponse->Percentiles;

    # Returns a L<Paws::IoT::GetPercentilesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/GetPercentiles>

=head1 ATTRIBUTES


=head2 AggregationField => Str

The field to aggregate.



=head2 IndexName => Str

The name of the index to search.



=head2 Percents => ArrayRef[Num]

The percentile groups returned.



=head2 B<REQUIRED> QueryString => Str

The query string.



=head2 QueryVersion => Str

The query version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetPercentiles in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

