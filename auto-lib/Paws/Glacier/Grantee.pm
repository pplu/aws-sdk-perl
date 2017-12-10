package Paws::Glacier::Grantee;
  use Moose;
  has DisplayName => (is => 'ro', isa => 'Str');
  has EmailAddress => (is => 'ro', isa => 'Str');
  has ID => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str', required => 1);
  has URI => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::Grantee

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glacier::Grantee object:

  $service_obj->Method(Att1 => { DisplayName => $value, ..., URI => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glacier::Grantee object:

  $result = $service_obj->Method(...);
  $result->Att1->DisplayName

=head1 DESCRIPTION

Contains information about the grantee.

=head1 ATTRIBUTES


=head2 DisplayName => Str

  Screen name of the grantee.


=head2 EmailAddress => Str

  Email address of the grantee.


=head2 ID => Str

  The canonical user ID of the grantee.


=head2 B<REQUIRED> Type => Str

  Type of grantee


=head2 URI => Str

  URI of the grantee group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glacier>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

