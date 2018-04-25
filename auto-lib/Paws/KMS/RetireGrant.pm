
package Paws::KMS::RetireGrant;
  use Moose;
  has GrantId => (is => 'ro', isa => 'Str');
  has GrantToken => (is => 'ro', isa => 'Str');
  has KeyId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RetireGrant');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::RetireGrant - Arguments for method RetireGrant on L<Paws::KMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RetireGrant on the 
L<AWS Key Management Service|Paws::KMS> service. Use the attributes of this class
as arguments to method RetireGrant.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RetireGrant.

As an example:

  $service_obj->RetireGrant(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 GrantId => Str

Unique identifier of the grant to retire. The grant ID is returned in
the response to a C<CreateGrant> operation.

=over

=item *

Grant ID Example -
0123456789012345678901234567890123456789012345678901234567890123

=back




=head2 GrantToken => Str

Token that identifies the grant to be retired.



=head2 KeyId => Str

The Amazon Resource Name (ARN) of the CMK associated with the grant.

For example:
C<arn:aws:kms:us-east-2:444455556666:key/1234abcd-12ab-34cd-56ef-1234567890ab>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RetireGrant in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

