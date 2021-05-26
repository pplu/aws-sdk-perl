
package Paws::Quicksight::CreateIngestion;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has DataSetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DataSetId', required => 1);
  has IngestionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'IngestionId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateIngestion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/data-sets/{DataSetId}/ingestions/{IngestionId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::CreateIngestionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::CreateIngestion - Arguments for method CreateIngestion on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateIngestion on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method CreateIngestion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateIngestion.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $CreateIngestionResponse = $quicksight->CreateIngestion(
      AwsAccountId => 'MyAwsAccountId',
      DataSetId    => 'Mystring',
      IngestionId  => 'MyIngestionId',

    );

    # Results:
    my $Arn             = $CreateIngestionResponse->Arn;
    my $IngestionId     = $CreateIngestionResponse->IngestionId;
    my $IngestionStatus = $CreateIngestionResponse->IngestionStatus;
    my $RequestId       = $CreateIngestionResponse->RequestId;
    my $Status          = $CreateIngestionResponse->Status;

    # Returns a L<Paws::Quicksight::CreateIngestionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/CreateIngestion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwsAccountId => Str

The AWS account ID.



=head2 B<REQUIRED> DataSetId => Str

The ID of the dataset used in the ingestion.



=head2 B<REQUIRED> IngestionId => Str

An ID for the ingestion.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateIngestion in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

