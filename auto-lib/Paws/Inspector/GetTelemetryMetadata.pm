
package Paws::Inspector::GetTelemetryMetadata;
  use Moose;
  has AssessmentRunArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assessmentRunArn' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTelemetryMetadata');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Inspector::GetTelemetryMetadataResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::GetTelemetryMetadata - Arguments for method GetTelemetryMetadata on L<Paws::Inspector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTelemetryMetadata on the
L<Amazon Inspector|Paws::Inspector> service. Use the attributes of this class
as arguments to method GetTelemetryMetadata.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTelemetryMetadata.

=head1 SYNOPSIS

    my $inspector = Paws->service('Inspector');
    # Get telemetry metadata
    # Information about the data that is collected for the specified assessment
    # run.
    my $GetTelemetryMetadataResponse = $inspector->GetTelemetryMetadata(
      {
        'AssessmentRunArn' =>
'arn:aws:inspector:us-west-2:123456789012:target/0-0kFIPusq/template/0-4r1V2mAw/run/0-MKkpXXPE'
      }
    );

    # Results:
    my $telemetryMetadata = $GetTelemetryMetadataResponse->telemetryMetadata;

    # Returns a L<Paws::Inspector::GetTelemetryMetadataResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector/GetTelemetryMetadata>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssessmentRunArn => Str

The ARN that specifies the assessment run that has the telemetry data
that you want to obtain.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTelemetryMetadata in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

