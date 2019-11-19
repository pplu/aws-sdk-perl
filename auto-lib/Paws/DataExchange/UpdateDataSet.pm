
package Paws::DataExchange::UpdateDataSet;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DataExchange::Types qw//;
  has DataSetId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has Name => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateDataSet');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v1/data-sets/{DataSetId}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PATCH');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::DataExchange::UpdateDataSetResponse');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'DataSetId' => 1
                  },
  'types' => {
               'Name' => {
                           'type' => 'Str'
                         },
               'DataSetId' => {
                                'type' => 'Str'
                              },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'ParamInURI' => {
                    'DataSetId' => 'DataSetId'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange::UpdateDataSet - Arguments for method UpdateDataSet on L<Paws::DataExchange>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDataSet on the
L<AWS Data Exchange|Paws::DataExchange> service. Use the attributes of this class
as arguments to method UpdateDataSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDataSet.

=head1 SYNOPSIS

    my $dataexchange = Paws->service('DataExchange');
    my $UpdateDataSetResponse = $dataexchange->UpdateDataSet(
      DataSetId   => 'My__string',
      Description => 'MyDescription',    # OPTIONAL
      Name        => 'MyName',           # OPTIONAL
    );

    # Results:
    my $Arn           = $UpdateDataSetResponse->Arn;
    my $AssetType     = $UpdateDataSetResponse->AssetType;
    my $CreatedAt     = $UpdateDataSetResponse->CreatedAt;
    my $Description   = $UpdateDataSetResponse->Description;
    my $Id            = $UpdateDataSetResponse->Id;
    my $Name          = $UpdateDataSetResponse->Name;
    my $Origin        = $UpdateDataSetResponse->Origin;
    my $OriginDetails = $UpdateDataSetResponse->OriginDetails;
    my $SourceId      = $UpdateDataSetResponse->SourceId;
    my $UpdatedAt     = $UpdateDataSetResponse->UpdatedAt;

    # Returns a L<Paws::DataExchange::UpdateDataSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dataexchange/UpdateDataSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DataSetId => Str

The unique identifier for a data set.



=head2 Description => Str

The description for the data set.



=head2 Name => Str

The name of the data set.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDataSet in L<Paws::DataExchange>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

