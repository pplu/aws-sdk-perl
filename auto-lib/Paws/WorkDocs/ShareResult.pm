package Paws::WorkDocs::ShareResult;
  use Moose;
  has InviteePrincipalId => (is => 'ro', isa => 'Str');
  has PrincipalId => (is => 'ro', isa => 'Str');
  has Role => (is => 'ro', isa => 'Str');
  has ShareId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StatusMessage => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::ShareResult

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WorkDocs::ShareResult object:

  $service_obj->Method(Att1 => { InviteePrincipalId => $value, ..., StatusMessage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WorkDocs::ShareResult object:

  $result = $service_obj->Method(...);
  $result->Att1->InviteePrincipalId

=head1 DESCRIPTION

Describes the share results of a resource.

=head1 ATTRIBUTES


=head2 InviteePrincipalId => Str

  The ID of the invited user.


=head2 PrincipalId => Str

  The ID of the principal.


=head2 Role => Str

  The role.


=head2 ShareId => Str

  The ID of the resource that was shared.


=head2 Status => Str

  The status.


=head2 StatusMessage => Str

  The status message.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WorkDocs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

