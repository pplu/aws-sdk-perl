
package Paws::Rekognition::DescribeStreamProcessor;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStreamProcessor');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::DescribeStreamProcessorResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::DescribeStreamProcessor - Arguments for method DescribeStreamProcessor on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeStreamProcessor on the
L<Amazon Rekognition|Paws::Rekognition> service. Use the attributes of this class
as arguments to method DescribeStreamProcessor.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeStreamProcessor.

=head1 SYNOPSIS

    my $rekognition = Paws->service('Rekognition');
    my $DescribeStreamProcessorResponse = $rekognition->DescribeStreamProcessor(
      Name => 'MyStreamProcessorName',

    );

    # Results:
    my $CreationTimestamp = $DescribeStreamProcessorResponse->CreationTimestamp;
    my $Input             = $DescribeStreamProcessorResponse->Input;
    my $LastUpdateTimestamp =
      $DescribeStreamProcessorResponse->LastUpdateTimestamp;
    my $Name          = $DescribeStreamProcessorResponse->Name;
    my $Output        = $DescribeStreamProcessorResponse->Output;
    my $RoleArn       = $DescribeStreamProcessorResponse->RoleArn;
    my $Settings      = $DescribeStreamProcessorResponse->Settings;
    my $Status        = $DescribeStreamProcessorResponse->Status;
    my $StatusMessage = $DescribeStreamProcessorResponse->StatusMessage;
    my $StreamProcessorArn =
      $DescribeStreamProcessorResponse->StreamProcessorArn;

    # Returns a L<Paws::Rekognition::DescribeStreamProcessorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rekognition/DescribeStreamProcessor>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

Name of the stream processor for which you want information.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeStreamProcessor in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

