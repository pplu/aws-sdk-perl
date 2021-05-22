
package Paws::Translate::GetParallelData;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetParallelData');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Translate::GetParallelDataResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Translate::GetParallelData - Arguments for method GetParallelData on L<Paws::Translate>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetParallelData on the
L<Amazon Translate|Paws::Translate> service. Use the attributes of this class
as arguments to method GetParallelData.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetParallelData.

=head1 SYNOPSIS

    my $translate = Paws->service('Translate');
    my $GetParallelDataResponse = $translate->GetParallelData(
      Name => 'MyResourceName',

    );

    # Results:
    my $AuxiliaryDataLocation = $GetParallelDataResponse->AuxiliaryDataLocation;
    my $DataLocation          = $GetParallelDataResponse->DataLocation;
    my $LatestUpdateAttemptAuxiliaryDataLocation =
      $GetParallelDataResponse->LatestUpdateAttemptAuxiliaryDataLocation;
    my $ParallelDataProperties =
      $GetParallelDataResponse->ParallelDataProperties;

    # Returns a L<Paws::Translate::GetParallelDataResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/translate/GetParallelData>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the parallel data resource that is being retrieved.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetParallelData in L<Paws::Translate>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

