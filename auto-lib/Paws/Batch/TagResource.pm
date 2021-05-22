
package Paws::Batch::TagResource;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resourceArn', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Batch::TagrisTagsMap', traits => ['NameInRequest'], request_name => 'tags', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TagResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/tags/{resourceArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Batch::TagResourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::TagResource - Arguments for method TagResource on L<Paws::Batch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<AWS Batch|Paws::Batch> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $batch = Paws->service('Batch');
    my $TagResourceResponse = $batch->TagResource(
      ResourceArn => 'MyString',
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/batch/TagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the resource that tags are added to.
AWS Batch resources that support tags are compute environments, jobs,
job definitions, and job queues. ARNs for child jobs of array and
multi-node parallel (MNP) jobs are not supported.



=head2 B<REQUIRED> Tags => L<Paws::Batch::TagrisTagsMap>

The tags that you apply to the resource to help you categorize and
organize your resources. Each tag consists of a key and an optional
value. For more information, see Tagging AWS Resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) in
I<AWS General Reference>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

