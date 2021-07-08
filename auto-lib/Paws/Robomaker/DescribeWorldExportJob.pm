
package Paws::Robomaker::DescribeWorldExportJob;
  use Moose;
  has Job => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'job', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeWorldExportJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/describeWorldExportJob');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Robomaker::DescribeWorldExportJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::DescribeWorldExportJob - Arguments for method DescribeWorldExportJob on L<Paws::Robomaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeWorldExportJob on the
L<AWS RoboMaker|Paws::Robomaker> service. Use the attributes of this class
as arguments to method DescribeWorldExportJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeWorldExportJob.

=head1 SYNOPSIS

    my $robomaker = Paws->service('Robomaker');
    my $DescribeWorldExportJobResponse = $robomaker->DescribeWorldExportJob(
      Job => 'MyArn',

    );

    # Results:
    my $Arn = $DescribeWorldExportJobResponse->Arn;
    my $ClientRequestToken =
      $DescribeWorldExportJobResponse->ClientRequestToken;
    my $CreatedAt      = $DescribeWorldExportJobResponse->CreatedAt;
    my $FailureCode    = $DescribeWorldExportJobResponse->FailureCode;
    my $FailureReason  = $DescribeWorldExportJobResponse->FailureReason;
    my $IamRole        = $DescribeWorldExportJobResponse->IamRole;
    my $OutputLocation = $DescribeWorldExportJobResponse->OutputLocation;
    my $Status         = $DescribeWorldExportJobResponse->Status;
    my $Tags           = $DescribeWorldExportJobResponse->Tags;
    my $Worlds         = $DescribeWorldExportJobResponse->Worlds;

    # Returns a L<Paws::Robomaker::DescribeWorldExportJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/robomaker/DescribeWorldExportJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Job => Str

The Amazon Resource Name (arn) of the world export job to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeWorldExportJob in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

