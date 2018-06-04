package Paws::AppStream::UserSetting;
  use Moose;
  has Action => (is => 'ro', isa => 'Str', required => 1);
  has Permission => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::UserSetting

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppStream::UserSetting object:

  $service_obj->Method(Att1 => { Action => $value, ..., Permission => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppStream::UserSetting object:

  $result = $service_obj->Method(...);
  $result->Att1->Action

=head1 DESCRIPTION

Describes an action and whether the action is enabled or disabled for
users during their streaming sessions.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Action => Str

  The action that is enabled or disabled.


=head2 B<REQUIRED> Permission => Str

  Indicates whether the action is enabled or disabled.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

