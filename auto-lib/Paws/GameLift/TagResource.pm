
package Paws::GameLift::TagResource;
  use Moose;
  has ResourceARN => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::Tag]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TagResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::TagResourceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::TagResource - Arguments for method TagResource on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $TagResourceResponse = $gamelift->TagResource(
      ResourceARN => 'MyAmazonResourceName',
      Tags        => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/TagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceARN => Str

The Amazon Resource Name (ARN
(https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html))
that is assigned to and uniquely identifies the GameLift resource that
you want to assign tags to. GameLift resource ARNs are included in the
data object for the resource, which can be retrieved by calling a List
or Describe action for the resource type.



=head2 B<REQUIRED> Tags => ArrayRef[L<Paws::GameLift::Tag>]

A list of one or more tags to assign to the specified GameLift
resource. Tags are developer-defined and structured as key-value pairs.
The maximum tag limit may be lower than stated. See Tagging AWS
Resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) for
actual tagging limits.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

