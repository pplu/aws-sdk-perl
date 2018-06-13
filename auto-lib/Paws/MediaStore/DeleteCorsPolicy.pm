
package Paws::MediaStore::DeleteCorsPolicy;
  use Moose;
  has ContainerName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCorsPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaStore::DeleteCorsPolicyOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaStore::DeleteCorsPolicy - Arguments for method DeleteCorsPolicy on L<Paws::MediaStore>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteCorsPolicy on the
L<AWS Elemental MediaStore|Paws::MediaStore> service. Use the attributes of this class
as arguments to method DeleteCorsPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteCorsPolicy.

=head1 SYNOPSIS

    my $mediastore = Paws->service('MediaStore');
    my $DeleteCorsPolicyOutput = $mediastore->DeleteCorsPolicy(
      ContainerName => 'MyContainerName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediastore/DeleteCorsPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContainerName => Str

The name of the container to remove the policy from.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteCorsPolicy in L<Paws::MediaStore>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

