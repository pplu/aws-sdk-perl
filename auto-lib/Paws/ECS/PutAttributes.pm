
package Paws::ECS::PutAttributes;
  use Moose;
  has Attributes => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Attribute]', traits => ['NameInRequest'], request_name => 'attributes' , required => 1);
  has Cluster => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cluster' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECS::PutAttributesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::PutAttributes - Arguments for method PutAttributes on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutAttributes on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method PutAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutAttributes.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
    my $PutAttributesResponse = $ecs->PutAttributes(
      Attributes => [
        {
          Name     => 'MyString',
          TargetId => 'MyString',
          TargetType =>
            'container-instance',    # values: container-instance; OPTIONAL
          Value => 'MyString',
        },
        ...
      ],
      Cluster => 'MyString',         # OPTIONAL
    );

    # Results:
    my $Attributes = $PutAttributesResponse->Attributes;

    # Returns a L<Paws::ECS::PutAttributesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/PutAttributes>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Attributes => ArrayRef[L<Paws::ECS::Attribute>]

The attributes to apply to your resource. You can specify up to 10
custom attributes per resource. You can specify up to 10 attributes in
a single call.



=head2 Cluster => Str

The short name or full Amazon Resource Name (ARN) of the cluster that
contains the resource to apply attributes. If you do not specify a
cluster, the default cluster is assumed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutAttributes in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

