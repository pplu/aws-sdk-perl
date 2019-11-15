package Paws::RDS::InstallationMediaFailureCause;
  use Moose;
  has Message => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::InstallationMediaFailureCause

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDS::InstallationMediaFailureCause object:

  $service_obj->Method(Att1 => { Message => $value, ..., Message => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDS::InstallationMediaFailureCause object:

  $result = $service_obj->Method(...);
  $result->Att1->Message

=head1 DESCRIPTION

Contains the cause of an installation media failure. Installation media
is used for a DB engine that requires an on-premises customer provided
license, such as Microsoft SQL Server.

=head1 ATTRIBUTES


=head2 Message => Str

  The reason that an installation media import failed.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

