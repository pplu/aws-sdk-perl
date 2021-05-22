
package Paws::CodeDeploy::UntagResource;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);
  has TagKeys => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UntagResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeDeploy::UntagResourceOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::UntagResource - Arguments for method UntagResource on L<Paws::CodeDeploy>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UntagResource on the
L<AWS CodeDeploy|Paws::CodeDeploy> service. Use the attributes of this class
as arguments to method UntagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UntagResource.

=head1 SYNOPSIS

    my $codedeploy = Paws->service('CodeDeploy');
    my $UntagResourceOutput = $codedeploy->UntagResource(
      ResourceArn => 'MyArn',
      TagKeys     => [ 'MyKey', ... ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codedeploy/UntagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) that specifies from which resource to
disassociate the tags with the keys in the C<TagKeys> input parameter.



=head2 B<REQUIRED> TagKeys => ArrayRef[Str|Undef]

A list of keys of C<Tag> objects. The C<Tag> objects identified by the
keys are disassociated from the resource specified by the
C<ResourceArn> input parameter.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UntagResource in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

