
package Paws::DevOpsGuru::UpdateResourceCollection;
  use Moose;
  has Action => (is => 'ro', isa => 'Str', required => 1);
  has ResourceCollection => (is => 'ro', isa => 'Paws::DevOpsGuru::UpdateResourceCollectionFilter', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateResourceCollection');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/resource-collections');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DevOpsGuru::UpdateResourceCollectionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DevOpsGuru::UpdateResourceCollection - Arguments for method UpdateResourceCollection on L<Paws::DevOpsGuru>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateResourceCollection on the
L<Amazon DevOps Guru|Paws::DevOpsGuru> service. Use the attributes of this class
as arguments to method UpdateResourceCollection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateResourceCollection.

=head1 SYNOPSIS

    my $devops-guru = Paws->service('DevOpsGuru');
    my $UpdateResourceCollectionResponse =
      $devops -guru->UpdateResourceCollection(
      Action             => 'ADD',
      ResourceCollection => {
        CloudFormation => {
          StackNames => [
            'MyStackName', ...    # min: 1, max: 128
          ],    # max: 100; OPTIONAL
        },    # OPTIONAL
      },

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devops-guru/UpdateResourceCollection>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Action => Str

Specifies if the resource collection in the request is added or deleted
to the resource collection.

Valid values are: C<"ADD">, C<"REMOVE">

=head2 B<REQUIRED> ResourceCollection => L<Paws::DevOpsGuru::UpdateResourceCollectionFilter>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateResourceCollection in L<Paws::DevOpsGuru>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

