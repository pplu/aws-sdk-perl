
package Paws::Rekognition::TagResource;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Rekognition::TagMap', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TagResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::TagResourceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::TagResource - Arguments for method TagResource on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<Amazon Rekognition|Paws::Rekognition> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $rekognition = Paws->service('Rekognition');
    my $TagResourceResponse = $rekognition->TagResource(
      ResourceArn => 'MyResourceArn',
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rekognition/TagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

Amazon Resource Name (ARN) of the model, collection, or stream
processor that you want to assign the tags to.



=head2 B<REQUIRED> Tags => L<Paws::Rekognition::TagMap>

The key-value tags to assign to the resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

