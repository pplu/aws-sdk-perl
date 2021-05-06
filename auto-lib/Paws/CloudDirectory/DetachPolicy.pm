
package Paws::CloudDirectory::DetachPolicy;
  use Moose;
  has DirectoryArn => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-data-partition', required => 1);
  has ObjectReference => (is => 'ro', isa => 'Paws::CloudDirectory::ObjectReference', required => 1);
  has PolicyReference => (is => 'ro', isa => 'Paws::CloudDirectory::ObjectReference', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DetachPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/amazonclouddirectory/2017-01-11/policy/detach');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudDirectory::DetachPolicyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::DetachPolicy - Arguments for method DetachPolicy on L<Paws::CloudDirectory>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DetachPolicy on the
L<Amazon CloudDirectory|Paws::CloudDirectory> service. Use the attributes of this class
as arguments to method DetachPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DetachPolicy.

=head1 SYNOPSIS

    my $clouddirectory = Paws->service('CloudDirectory');
    my $DetachPolicyResponse = $clouddirectory->DetachPolicy(
      DirectoryArn    => 'MyArn',
      ObjectReference => {
        Selector => 'MySelectorObjectReference',    # OPTIONAL
      },
      PolicyReference => {
        Selector => 'MySelectorObjectReference',    # OPTIONAL
      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/clouddirectory/DetachPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DirectoryArn => Str

The Amazon Resource Name (ARN) that is associated with the Directory
where both objects reside. For more information, see arns.



=head2 B<REQUIRED> ObjectReference => L<Paws::CloudDirectory::ObjectReference>

Reference that identifies the object whose policy object will be
detached.



=head2 B<REQUIRED> PolicyReference => L<Paws::CloudDirectory::ObjectReference>

Reference that identifies the policy object.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DetachPolicy in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

