package Paws::WorkMail::Delegate;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::Delegate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WorkMail::Delegate object:

  $service_obj->Method(Att1 => { Id => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WorkMail::Delegate object:

  $result = $service_obj->Method(...);
  $result->Att1->Id

=head1 DESCRIPTION

The name of the attribute, which is one of the values defined in the
UserAttribute enumeration.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

  The identifier for the user or group is associated as the resource's
delegate.


=head2 B<REQUIRED> Type => Str

  The type of the delegate: user or group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

