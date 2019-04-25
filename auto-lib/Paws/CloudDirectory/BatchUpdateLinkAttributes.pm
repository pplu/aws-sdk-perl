package Paws::CloudDirectory::BatchUpdateLinkAttributes;
  use Moose;
  has AttributeUpdates => (is => 'ro', isa => 'ArrayRef[Paws::CloudDirectory::LinkAttributeUpdate]', required => 1);
  has TypedLinkSpecifier => (is => 'ro', isa => 'Paws::CloudDirectory::TypedLinkSpecifier', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::BatchUpdateLinkAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::BatchUpdateLinkAttributes object:

  $service_obj->Method(Att1 => { AttributeUpdates => $value, ..., TypedLinkSpecifier => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::BatchUpdateLinkAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->AttributeUpdates

=head1 DESCRIPTION

Updates a given typed linkE<rsquo>s attributes inside a BatchRead
operation. Attributes to be updated must not contribute to the typed
linkE<rsquo>s identity, as defined by its C<IdentityAttributeOrder>.
For more information, see UpdateLinkAttributes and
BatchReadRequest$Operations.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AttributeUpdates => ArrayRef[L<Paws::CloudDirectory::LinkAttributeUpdate>]

  The attributes update structure.


=head2 B<REQUIRED> TypedLinkSpecifier => L<Paws::CloudDirectory::TypedLinkSpecifier>

  Allows a typed link specifier to be accepted as input.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

