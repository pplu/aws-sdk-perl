
package Paws::Rekognition::DeleteStreamProcessor;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteStreamProcessor');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::DeleteStreamProcessorResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::DeleteStreamProcessor - Arguments for method DeleteStreamProcessor on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteStreamProcessor on the
L<Amazon Rekognition|Paws::Rekognition> service. Use the attributes of this class
as arguments to method DeleteStreamProcessor.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteStreamProcessor.

=head1 SYNOPSIS

    my $rekognition = Paws->service('Rekognition');
    my $DeleteStreamProcessorResponse = $rekognition->DeleteStreamProcessor(
      Name => 'MyStreamProcessorName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rekognition/DeleteStreamProcessor>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the stream processor you want to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteStreamProcessor in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

