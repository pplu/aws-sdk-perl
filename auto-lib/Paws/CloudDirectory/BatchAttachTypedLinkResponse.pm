package Paws::CloudDirectory::BatchAttachTypedLinkResponse;
  use Moose;
  has TypedLinkSpecifier => (is => 'ro', isa => 'Paws::CloudDirectory::TypedLinkSpecifier');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::BatchAttachTypedLinkResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::BatchAttachTypedLinkResponse object:

  $service_obj->Method(Att1 => { TypedLinkSpecifier => $value, ..., TypedLinkSpecifier => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::BatchAttachTypedLinkResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->TypedLinkSpecifier

=head1 DESCRIPTION

Represents the output of a AttachTypedLink response operation.

=head1 ATTRIBUTES


=head2 TypedLinkSpecifier => L<Paws::CloudDirectory::TypedLinkSpecifier>

  Returns a typed link specifier as output.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

