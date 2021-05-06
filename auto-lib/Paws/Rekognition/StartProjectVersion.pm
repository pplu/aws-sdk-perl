
package Paws::Rekognition::StartProjectVersion;
  use Moose;
  has MinInferenceUnits => (is => 'ro', isa => 'Int', required => 1);
  has ProjectVersionArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartProjectVersion');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::StartProjectVersionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::StartProjectVersion - Arguments for method StartProjectVersion on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartProjectVersion on the
L<Amazon Rekognition|Paws::Rekognition> service. Use the attributes of this class
as arguments to method StartProjectVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartProjectVersion.

=head1 SYNOPSIS

    my $rekognition = Paws->service('Rekognition');
    my $StartProjectVersionResponse = $rekognition->StartProjectVersion(
      MinInferenceUnits => 1,
      ProjectVersionArn => 'MyProjectVersionArn',

    );

    # Results:
    my $Status = $StartProjectVersionResponse->Status;

    # Returns a L<Paws::Rekognition::StartProjectVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rekognition/StartProjectVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MinInferenceUnits => Int

The minimum number of inference units to use. A single inference unit
represents 1 hour of processing and can support up to 5 Transaction
Pers Second (TPS). Use a higher number to increase the TPS throughput
of your model. You are charged for the number of inference units that
you use.



=head2 B<REQUIRED> ProjectVersionArn => Str

The Amazon Resource Name(ARN) of the model version that you want to
start.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartProjectVersion in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

