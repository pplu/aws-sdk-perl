
package Paws::IoT::GetCardinality;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw//;
  has AggregationField => (is => 'ro', isa => Str, predicate => 1);
  has IndexName => (is => 'ro', isa => Str, predicate => 1);
  has QueryString => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has QueryVersion => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetCardinality');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/indices/cardinality');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoT::GetCardinalityResponse');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'QueryString' => 1
                  },
  'NameInRequest' => {
                       'QueryString' => 'queryString',
                       'AggregationField' => 'aggregationField',
                       'IndexName' => 'indexName',
                       'QueryVersion' => 'queryVersion'
                     },
  'types' => {
               'AggregationField' => {
                                       'type' => 'Str'
                                     },
               'QueryString' => {
                                  'type' => 'Str'
                                },
               'IndexName' => {
                                'type' => 'Str'
                              },
               'QueryVersion' => {
                                   'type' => 'Str'
                                 }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::GetCardinality - Arguments for method GetCardinality on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCardinality on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method GetCardinality.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCardinality.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $GetCardinalityResponse = $iot->GetCardinality(
      QueryString      => 'MyQueryString',
      AggregationField => 'MyAggregationField',    # OPTIONAL
      IndexName        => 'MyIndexName',           # OPTIONAL
      QueryVersion     => 'MyQueryVersion',        # OPTIONAL
    );

    # Results:
    my $Cardinality = $GetCardinalityResponse->Cardinality;

    # Returns a L<Paws::IoT::GetCardinalityResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/GetCardinality>

=head1 ATTRIBUTES


=head2 AggregationField => Str

The field to aggregate.



=head2 IndexName => Str

The name of the index to search.



=head2 B<REQUIRED> QueryString => Str

The search query.



=head2 QueryVersion => Str

The query version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCardinality in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

