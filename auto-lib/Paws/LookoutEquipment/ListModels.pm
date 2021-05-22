
package Paws::LookoutEquipment::ListModels;
  use Moose;
  has DatasetNameBeginsWith => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has ModelNameBeginsWith => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListModels');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LookoutEquipment::ListModelsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::ListModels - Arguments for method ListModels on L<Paws::LookoutEquipment>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListModels on the
L<Amazon Lookout for Equipment|Paws::LookoutEquipment> service. Use the attributes of this class
as arguments to method ListModels.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListModels.

=head1 SYNOPSIS

    my $lookoutequipment = Paws->service('LookoutEquipment');
    my $ListModelsResponse = $lookoutequipment->ListModels(
      DatasetNameBeginsWith => 'MyDatasetName',    # OPTIONAL
      MaxResults            => 1,                  # OPTIONAL
      ModelNameBeginsWith   => 'MyModelName',      # OPTIONAL
      NextToken             => 'MyNextToken',      # OPTIONAL
      Status                => 'IN_PROGRESS',      # OPTIONAL
    );

    # Results:
    my $ModelSummaries = $ListModelsResponse->ModelSummaries;
    my $NextToken      = $ListModelsResponse->NextToken;

    # Returns a L<Paws::LookoutEquipment::ListModelsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutequipment/ListModels>

=head1 ATTRIBUTES


=head2 DatasetNameBeginsWith => Str

The beginning of the name of the dataset of the ML models to be listed.



=head2 MaxResults => Int

Specifies the maximum number of ML models to list.



=head2 ModelNameBeginsWith => Str

The beginning of the name of the ML models being listed.



=head2 NextToken => Str

An opaque pagination token indicating where to continue the listing of
ML models.



=head2 Status => Str

The status of the ML model.

Valid values are: C<"IN_PROGRESS">, C<"SUCCESS">, C<"FAILED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListModels in L<Paws::LookoutEquipment>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

