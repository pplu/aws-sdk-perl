
package Paws::DataExchange::GetDataSet;
  use Moose;
  has DataSetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DataSetId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDataSet');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/data-sets/{DataSetId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataExchange::GetDataSetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange::GetDataSet - Arguments for method GetDataSet on L<Paws::DataExchange>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDataSet on the
L<AWS Data Exchange|Paws::DataExchange> service. Use the attributes of this class
as arguments to method GetDataSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDataSet.

=head1 SYNOPSIS

    my $dataexchange = Paws->service('DataExchange');
    my $GetDataSetResponse = $dataexchange->GetDataSet(
      DataSetId => 'My__string',

    );

    # Results:
    my $Arn           = $GetDataSetResponse->Arn;
    my $AssetType     = $GetDataSetResponse->AssetType;
    my $CreatedAt     = $GetDataSetResponse->CreatedAt;
    my $Description   = $GetDataSetResponse->Description;
    my $Id            = $GetDataSetResponse->Id;
    my $Name          = $GetDataSetResponse->Name;
    my $Origin        = $GetDataSetResponse->Origin;
    my $OriginDetails = $GetDataSetResponse->OriginDetails;
    my $SourceId      = $GetDataSetResponse->SourceId;
    my $Tags          = $GetDataSetResponse->Tags;
    my $UpdatedAt     = $GetDataSetResponse->UpdatedAt;

    # Returns a L<Paws::DataExchange::GetDataSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dataexchange/GetDataSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DataSetId => Str

The unique identifier for a data set.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDataSet in L<Paws::DataExchange>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

