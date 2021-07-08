
package Paws::GameLift::UntagResource;
  use Moose;
  has ResourceARN => (is => 'ro', isa => 'Str', required => 1);
  has TagKeys => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UntagResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::UntagResourceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::UntagResource - Arguments for method UntagResource on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UntagResource on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method UntagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UntagResource.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $UntagResourceResponse = $gamelift->UntagResource(
      ResourceARN => 'MyAmazonResourceName',
      TagKeys     => [
        'MyTagKey', ...    # min: 1, max: 128
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/UntagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceARN => Str

The Amazon Resource Name (ARN
(https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html))
that is assigned to and uniquely identifies the GameLift resource that
you want to remove tags from. GameLift resource ARNs are included in
the data object for the resource, which can be retrieved by calling a
List or Describe operation for the resource type.



=head2 B<REQUIRED> TagKeys => ArrayRef[Str|Undef]

A list of one or more tag keys to remove from the specified GameLift
resource. An AWS resource can have only one tag with a specific tag
key, so specifying the tag key identifies which tag to remove.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UntagResource in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

