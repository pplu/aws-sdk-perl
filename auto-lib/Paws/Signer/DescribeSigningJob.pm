
package Paws::Signer::DescribeSigningJob;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'jobId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSigningJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/signing-jobs/{jobId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Signer::DescribeSigningJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Signer::DescribeSigningJob - Arguments for method DescribeSigningJob on L<Paws::Signer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeSigningJob on the
L<AWS Signer|Paws::Signer> service. Use the attributes of this class
as arguments to method DescribeSigningJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeSigningJob.

=head1 SYNOPSIS

    my $signer = Paws->service('Signer');
    my $DescribeSigningJobResponse = $signer->DescribeSigningJob(
      JobId => 'MyJobId',

    );

    # Results:
    my $CompletedAt       = $DescribeSigningJobResponse->CompletedAt;
    my $CreatedAt         = $DescribeSigningJobResponse->CreatedAt;
    my $JobId             = $DescribeSigningJobResponse->JobId;
    my $Overrides         = $DescribeSigningJobResponse->Overrides;
    my $PlatformId        = $DescribeSigningJobResponse->PlatformId;
    my $ProfileName       = $DescribeSigningJobResponse->ProfileName;
    my $RequestedBy       = $DescribeSigningJobResponse->RequestedBy;
    my $SignedObject      = $DescribeSigningJobResponse->SignedObject;
    my $SigningMaterial   = $DescribeSigningJobResponse->SigningMaterial;
    my $SigningParameters = $DescribeSigningJobResponse->SigningParameters;
    my $Source            = $DescribeSigningJobResponse->Source;
    my $Status            = $DescribeSigningJobResponse->Status;
    my $StatusReason      = $DescribeSigningJobResponse->StatusReason;

    # Returns a L<Paws::Signer::DescribeSigningJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/signer/DescribeSigningJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

The ID of the signing job on input.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeSigningJob in L<Paws::Signer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

