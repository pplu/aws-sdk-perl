
package Paws::ResourceTagging::TagResources;
  use Moose;
  has ResourceARNList => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::ResourceTagging::TagMap', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TagResources');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ResourceTagging::TagResourcesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceTagging::TagResources - Arguments for method TagResources on L<Paws::ResourceTagging>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResources on the
L<AWS Resource Groups Tagging API|Paws::ResourceTagging> service. Use the attributes of this class
as arguments to method TagResources.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResources.

=head1 SYNOPSIS

    my $tagging = Paws->service('ResourceTagging');
    my $TagResourcesOutput = $tagging->TagResources(
      ResourceARNList => [
        'MyResourceARN', ...    # min: 1, max: 1600
      ],
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },

    );

    # Results:
    my $FailedResourcesMap = $TagResourcesOutput->FailedResourcesMap;

    # Returns a L<Paws::ResourceTagging::TagResourcesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/tagging/TagResources>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceARNList => ArrayRef[Str|Undef]

A list of ARNs. An ARN (Amazon Resource Name) uniquely identifies a
resource. You can specify a minimum of 1 and a maximum of 20 ARNs
(resources) to tag. An ARN can be set to a maximum of 1600 characters.
For more information, see Amazon Resource Names (ARNs) and AWS Service
Namespaces
(http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<AWS General Reference>.



=head2 B<REQUIRED> Tags => L<Paws::ResourceTagging::TagMap>

The tags that you want to add to the specified resources. A tag
consists of a key and a value that you define.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResources in L<Paws::ResourceTagging>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

