
package Paws::MediaStore::PutContainerPolicy;
  use Moose;
  has ContainerName => (is => 'ro', isa => 'Str', required => 1);
  has Policy => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutContainerPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaStore::PutContainerPolicyOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaStore::PutContainerPolicy - Arguments for method PutContainerPolicy on L<Paws::MediaStore>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutContainerPolicy on the
L<AWS Elemental MediaStore|Paws::MediaStore> service. Use the attributes of this class
as arguments to method PutContainerPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutContainerPolicy.

=head1 SYNOPSIS

    my $mediastore = Paws->service('MediaStore');
    my $PutContainerPolicyOutput = $mediastore->PutContainerPolicy(
      ContainerName => 'MyContainerName',
      Policy        => 'MyContainerPolicy',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediastore/PutContainerPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContainerName => Str

The name of the container.



=head2 B<REQUIRED> Policy => Str

The contents of the policy, which includes the following:

=over

=item *

One C<Version> tag

=item *

One C<Statement> tag that contains the standard tags for the policy.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutContainerPolicy in L<Paws::MediaStore>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

