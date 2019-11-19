
package Paws::DataExchange::GetAsset;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DataExchange::Types qw//;
  has AssetId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has DataSetId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has RevisionId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetAsset');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v1/data-sets/{DataSetId}/revisions/{RevisionId}/assets/{AssetId}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::DataExchange::GetAssetResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'RevisionId' => 'RevisionId',
                    'DataSetId' => 'DataSetId',
                    'AssetId' => 'AssetId'
                  },
  'types' => {
               'AssetId' => {
                              'type' => 'Str'
                            },
               'RevisionId' => {
                                 'type' => 'Str'
                               },
               'DataSetId' => {
                                'type' => 'Str'
                              }
             },
  'IsRequired' => {
                    'AssetId' => 1,
                    'RevisionId' => 1,
                    'DataSetId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange::GetAsset - Arguments for method GetAsset on L<Paws::DataExchange>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAsset on the
L<AWS Data Exchange|Paws::DataExchange> service. Use the attributes of this class
as arguments to method GetAsset.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAsset.

=head1 SYNOPSIS

    my $dataexchange = Paws->service('DataExchange');
    my $GetAssetResponse = $dataexchange->GetAsset(
      AssetId    => 'My__string',
      DataSetId  => 'My__string',
      RevisionId => 'My__string',

    );

    # Results:
    my $Arn          = $GetAssetResponse->Arn;
    my $AssetDetails = $GetAssetResponse->AssetDetails;
    my $AssetType    = $GetAssetResponse->AssetType;
    my $CreatedAt    = $GetAssetResponse->CreatedAt;
    my $DataSetId    = $GetAssetResponse->DataSetId;
    my $Id           = $GetAssetResponse->Id;
    my $Name         = $GetAssetResponse->Name;
    my $RevisionId   = $GetAssetResponse->RevisionId;
    my $SourceId     = $GetAssetResponse->SourceId;
    my $UpdatedAt    = $GetAssetResponse->UpdatedAt;

    # Returns a L<Paws::DataExchange::GetAssetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dataexchange/GetAsset>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssetId => Str

The unique identifier for an asset.



=head2 B<REQUIRED> DataSetId => Str

The unique identifier for a data set.



=head2 B<REQUIRED> RevisionId => Str

The unique identifier for a revision.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAsset in L<Paws::DataExchange>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

