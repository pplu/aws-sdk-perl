package Paws::AppStream::ApplicationSettings;
  use Moose;
  has Enabled => (is => 'ro', isa => 'Bool', required => 1);
  has SettingsGroup => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::ApplicationSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppStream::ApplicationSettings object:

  $service_obj->Method(Att1 => { Enabled => $value, ..., SettingsGroup => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppStream::ApplicationSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->Enabled

=head1 DESCRIPTION

The persistent application settings for users of a stack.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Enabled => Bool

  Enables or disables persistent application settings for users during
their streaming sessions.


=head2 SettingsGroup => Str

  The path prefix for the S3 bucket where usersE<rsquo> persistent
application settings are stored. You can allow the same persistent
application settings to be used across multiple stacks by specifying
the same settings group for each stack.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

