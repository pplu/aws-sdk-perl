package Paws::ServiceCatalog::Principal;
  use Moose;
  has PrincipalARN => (is => 'ro', isa => 'Str');
  has PrincipalType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::Principal

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceCatalog::Principal object:

  $service_obj->Method(Att1 => { PrincipalARN => $value, ..., PrincipalType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceCatalog::Principal object:

  $result = $service_obj->Method(...);
  $result->Att1->PrincipalARN

=head1 DESCRIPTION

Information about a principal.

=head1 ATTRIBUTES


=head2 PrincipalARN => Str

  The ARN of the principal (IAM user, role, or group).


=head2 PrincipalType => Str

  The principal type. The supported value is C<IAM>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

