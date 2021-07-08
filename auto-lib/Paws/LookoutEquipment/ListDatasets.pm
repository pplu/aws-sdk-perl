
package Paws::LookoutEquipment::ListDatasets;
  use Moose;
  has DatasetNameBeginsWith => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDatasets');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LookoutEquipment::ListDatasetsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::ListDatasets - Arguments for method ListDatasets on L<Paws::LookoutEquipment>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDatasets on the
L<Amazon Lookout for Equipment|Paws::LookoutEquipment> service. Use the attributes of this class
as arguments to method ListDatasets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDatasets.

=head1 SYNOPSIS

    my $lookoutequipment = Paws->service('LookoutEquipment');
    my $ListDatasetsResponse = $lookoutequipment->ListDatasets(
      DatasetNameBeginsWith => 'MyDatasetName',    # OPTIONAL
      MaxResults            => 1,                  # OPTIONAL
      NextToken             => 'MyNextToken',      # OPTIONAL
    );

    # Results:
    my $DatasetSummaries = $ListDatasetsResponse->DatasetSummaries;
    my $NextToken        = $ListDatasetsResponse->NextToken;

    # Returns a L<Paws::LookoutEquipment::ListDatasetsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutequipment/ListDatasets>

=head1 ATTRIBUTES


=head2 DatasetNameBeginsWith => Str

The beginning of the name of the datasets to be listed.



=head2 MaxResults => Int

Specifies the maximum number of datasets to list.



=head2 NextToken => Str

An opaque pagination token indicating where to continue the listing of
datasets.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDatasets in L<Paws::LookoutEquipment>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

