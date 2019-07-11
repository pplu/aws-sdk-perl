
package Paws::ECS::UpdateServicePrimaryTaskSet;
  use Moose;
  has Cluster => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cluster' , required => 1);
  has PrimaryTaskSet => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'primaryTaskSet' , required => 1);
  has Service => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'service' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateServicePrimaryTaskSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECS::UpdateServicePrimaryTaskSetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::UpdateServicePrimaryTaskSet - Arguments for method UpdateServicePrimaryTaskSet on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateServicePrimaryTaskSet on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method UpdateServicePrimaryTaskSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateServicePrimaryTaskSet.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
    my $UpdateServicePrimaryTaskSetResponse = $ecs->UpdateServicePrimaryTaskSet(
      Cluster        => 'MyString',
      PrimaryTaskSet => 'MyString',
      Service        => 'MyString',

    );

    # Results:
    my $TaskSet = $UpdateServicePrimaryTaskSetResponse->TaskSet;

    # Returns a L<Paws::ECS::UpdateServicePrimaryTaskSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/UpdateServicePrimaryTaskSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Cluster => Str

The short name or full Amazon Resource Name (ARN) of the cluster that
hosts the service that the task set exists in.



=head2 B<REQUIRED> PrimaryTaskSet => Str

The short name or full Amazon Resource Name (ARN) of the task set to
set as the primary task set in the deployment.



=head2 B<REQUIRED> Service => Str

The short name or full Amazon Resource Name (ARN) of the service that
the task set exists in.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateServicePrimaryTaskSet in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

