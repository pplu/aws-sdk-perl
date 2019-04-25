
package Paws::CodeDeploy::RemoveTagsFromOnPremisesInstances;
  use Moose;
  has InstanceNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'instanceNames' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::CodeDeploy::Tag]', traits => ['NameInRequest'], request_name => 'tags' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveTagsFromOnPremisesInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::RemoveTagsFromOnPremisesInstances - Arguments for method RemoveTagsFromOnPremisesInstances on L<Paws::CodeDeploy>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemoveTagsFromOnPremisesInstances on the
L<AWS CodeDeploy|Paws::CodeDeploy> service. Use the attributes of this class
as arguments to method RemoveTagsFromOnPremisesInstances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RemoveTagsFromOnPremisesInstances.

=head1 SYNOPSIS

    my $codedeploy = Paws->service('CodeDeploy');
    $codedeploy->RemoveTagsFromOnPremisesInstances(
      InstanceNames => [ 'MyInstanceName', ... ],
      Tags          => [
        {
          Key   => 'MyKey',      # OPTIONAL
          Value => 'MyValue',    # OPTIONAL
        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codedeploy/RemoveTagsFromOnPremisesInstances>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceNames => ArrayRef[Str|Undef]

The names of the on-premises instances from which to remove tags.



=head2 B<REQUIRED> Tags => ArrayRef[L<Paws::CodeDeploy::Tag>]

The tag key-value pairs to remove from the on-premises instances.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RemoveTagsFromOnPremisesInstances in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

