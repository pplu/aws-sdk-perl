
package Paws::Rekognition::DeleteProjectVersion;
  use Moose;
  has ProjectVersionArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteProjectVersion');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::DeleteProjectVersionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::DeleteProjectVersion - Arguments for method DeleteProjectVersion on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteProjectVersion on the
L<Amazon Rekognition|Paws::Rekognition> service. Use the attributes of this class
as arguments to method DeleteProjectVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteProjectVersion.

=head1 SYNOPSIS

    my $rekognition = Paws->service('Rekognition');
    my $DeleteProjectVersionResponse = $rekognition->DeleteProjectVersion(
      ProjectVersionArn => 'MyProjectVersionArn',

    );

    # Results:
    my $Status = $DeleteProjectVersionResponse->Status;

    # Returns a L<Paws::Rekognition::DeleteProjectVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rekognition/DeleteProjectVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProjectVersionArn => Str

The Amazon Resource Name (ARN) of the model version that you want to
delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteProjectVersion in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

