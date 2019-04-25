
package Paws::MachineLearning::AddTags;
  use Moose;
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);
  has ResourceType => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::MachineLearning::Tag]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddTags');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MachineLearning::AddTagsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MachineLearning::AddTags - Arguments for method AddTags on L<Paws::MachineLearning>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddTags on the
L<Amazon Machine Learning|Paws::MachineLearning> service. Use the attributes of this class
as arguments to method AddTags.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddTags.

=head1 SYNOPSIS

    my $machinelearning = Paws->service('MachineLearning');
    my $AddTagsOutput = $machinelearning->AddTags(
      ResourceId   => 'MyEntityId',
      ResourceType => 'BatchPrediction',
      Tags         => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128; OPTIONAL
          Value => 'MyTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],

    );

    # Results:
    my $ResourceId   = $AddTagsOutput->ResourceId;
    my $ResourceType = $AddTagsOutput->ResourceType;

    # Returns a L<Paws::MachineLearning::AddTagsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/machinelearning/AddTags>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceId => Str

The ID of the ML object to tag. For example, C<exampleModelId>.



=head2 B<REQUIRED> ResourceType => Str

The type of the ML object to tag.

Valid values are: C<"BatchPrediction">, C<"DataSource">, C<"Evaluation">, C<"MLModel">

=head2 B<REQUIRED> Tags => ArrayRef[L<Paws::MachineLearning::Tag>]

The key-value pairs to use to create tags. If you specify a key without
specifying a value, Amazon ML creates a tag with the specified key and
a value of null.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddTags in L<Paws::MachineLearning>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

