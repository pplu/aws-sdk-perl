
package Paws::Rekognition::StopProjectVersion;
  use Moose;
  has ProjectVersionArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopProjectVersion');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::StopProjectVersionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::StopProjectVersion - Arguments for method StopProjectVersion on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopProjectVersion on the
L<Amazon Rekognition|Paws::Rekognition> service. Use the attributes of this class
as arguments to method StopProjectVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopProjectVersion.

=head1 SYNOPSIS

    my $rekognition = Paws->service('Rekognition');
    my $StopProjectVersionResponse = $rekognition->StopProjectVersion(
      ProjectVersionArn => 'MyProjectVersionArn',

    );

    # Results:
    my $Status = $StopProjectVersionResponse->Status;

    # Returns a L<Paws::Rekognition::StopProjectVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rekognition/StopProjectVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProjectVersionArn => Str

The Amazon Resource Name (ARN) of the model version that you want to
delete.

This operation requires permissions to perform the
C<rekognition:StopProjectVersion> action.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopProjectVersion in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

