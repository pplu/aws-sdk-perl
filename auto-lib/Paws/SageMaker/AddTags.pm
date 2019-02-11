
package Paws::SageMaker::AddTags;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddTags');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::AddTagsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::AddTags - Arguments for method AddTags on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddTags on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method AddTags.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddTags.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $AddTagsOutput = $api . sagemaker->AddTags(
      ResourceArn => 'MyResourceArn',
      Tags        => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],

    );

    # Results:
    my $Tags = $AddTagsOutput->Tags;

    # Returns a L<Paws::SageMaker::AddTagsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/AddTags>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the resource that you want to tag.



=head2 B<REQUIRED> Tags => ArrayRef[L<Paws::SageMaker::Tag>]

An array of C<Tag> objects. Each tag is a key-value pair. Only the
C<key> parameter is required. If you don't specify a value, Amazon
SageMaker sets the value to an empty string.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddTags in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

