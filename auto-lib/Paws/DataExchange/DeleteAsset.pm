
package Paws::DataExchange::DeleteAsset;
  use Moose;
  has AssetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AssetId', required => 1);
  has DataSetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DataSetId', required => 1);
  has RevisionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'RevisionId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAsset');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/data-sets/{DataSetId}/revisions/{RevisionId}/assets/{AssetId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange::DeleteAsset - Arguments for method DeleteAsset on L<Paws::DataExchange>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteAsset on the
L<AWS Data Exchange|Paws::DataExchange> service. Use the attributes of this class
as arguments to method DeleteAsset.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteAsset.

=head1 SYNOPSIS

    my $dataexchange = Paws->service('DataExchange');
    $dataexchange->DeleteAsset(
      AssetId    => 'My__string',
      DataSetId  => 'My__string',
      RevisionId => 'My__string',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dataexchange/DeleteAsset>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssetId => Str

The unique identifier for an asset.



=head2 B<REQUIRED> DataSetId => Str

The unique identifier for a data set.



=head2 B<REQUIRED> RevisionId => Str

The unique identifier for a revision.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteAsset in L<Paws::DataExchange>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

