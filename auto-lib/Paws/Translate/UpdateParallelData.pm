
package Paws::Translate::UpdateParallelData;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has ParallelDataConfig => (is => 'ro', isa => 'Paws::Translate::ParallelDataConfig', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateParallelData');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Translate::UpdateParallelDataResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Translate::UpdateParallelData - Arguments for method UpdateParallelData on L<Paws::Translate>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateParallelData on the
L<Amazon Translate|Paws::Translate> service. Use the attributes of this class
as arguments to method UpdateParallelData.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateParallelData.

=head1 SYNOPSIS

    my $translate = Paws->service('Translate');
    my $UpdateParallelDataResponse = $translate->UpdateParallelData(
      ClientToken        => 'MyClientTokenString',
      Name               => 'MyResourceName',
      ParallelDataConfig => {
        Format => 'TSV',        # values: TSV, CSV, TMX
        S3Uri  => 'MyS3Uri',    # max: 1024

      },
      Description => 'MyDescription',    # OPTIONAL
    );

    # Results:
    my $LatestUpdateAttemptAt =
      $UpdateParallelDataResponse->LatestUpdateAttemptAt;
    my $LatestUpdateAttemptStatus =
      $UpdateParallelDataResponse->LatestUpdateAttemptStatus;
    my $Name   = $UpdateParallelDataResponse->Name;
    my $Status = $UpdateParallelDataResponse->Status;

    # Returns a L<Paws::Translate::UpdateParallelDataResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/translate/UpdateParallelData>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientToken => Str

A unique identifier for the request. This token is automatically
generated when you use Amazon Translate through an AWS SDK.



=head2 Description => Str

A custom description for the parallel data resource in Amazon
Translate.



=head2 B<REQUIRED> Name => Str

The name of the parallel data resource being updated.



=head2 B<REQUIRED> ParallelDataConfig => L<Paws::Translate::ParallelDataConfig>

Specifies the format and S3 location of the parallel data input file.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateParallelData in L<Paws::Translate>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

