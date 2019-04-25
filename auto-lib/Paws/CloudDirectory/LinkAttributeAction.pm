package Paws::CloudDirectory::LinkAttributeAction;
  use Moose;
  has AttributeActionType => (is => 'ro', isa => 'Str');
  has AttributeUpdateValue => (is => 'ro', isa => 'Paws::CloudDirectory::TypedAttributeValue');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::LinkAttributeAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::LinkAttributeAction object:

  $service_obj->Method(Att1 => { AttributeActionType => $value, ..., AttributeUpdateValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::LinkAttributeAction object:

  $result = $service_obj->Method(...);
  $result->Att1->AttributeActionType

=head1 DESCRIPTION

The action to take on a typed link attribute value. Updates are only
supported for attributes which donE<rsquo>t contribute to link
identity.

=head1 ATTRIBUTES


=head2 AttributeActionType => Str

  A type that can be either C<UPDATE_OR_CREATE> or C<DELETE>.


=head2 AttributeUpdateValue => L<Paws::CloudDirectory::TypedAttributeValue>

  The value that you want to update to.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

