package Paws::Glacier::Grant;
  use Moose;
  has Grantee => (is => 'ro', isa => 'Paws::Glacier::Grantee');
  has Permission => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::Grant

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glacier::Grant object:

  $service_obj->Method(Att1 => { Grantee => $value, ..., Permission => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glacier::Grant object:

  $result = $service_obj->Method(...);
  $result->Att1->Grantee

=head1 DESCRIPTION

Contains information about a grant.

=head1 ATTRIBUTES


=head2 Grantee => L<Paws::Glacier::Grantee>

  The grantee.


=head2 Permission => Str

  Specifies the permission given to the grantee.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glacier>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

