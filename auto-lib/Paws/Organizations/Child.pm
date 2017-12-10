package Paws::Organizations::Child;
  use Moose;
  has Id => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::Child

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Organizations::Child object:

  $service_obj->Method(Att1 => { Id => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Organizations::Child object:

  $result = $service_obj->Method(...);
  $result->Att1->Id

=head1 DESCRIPTION

Contains a list of child entities, either OUs or accounts.

=head1 ATTRIBUTES


=head2 Id => Str

  The unique identifier (ID) of this child entity.

The regex pattern (http://wikipedia.org/wiki/regex) for a child ID
string requires one of the following:

=over

=item *

Account: a string that consists of exactly 12 digits.

=item *

Organizational unit (OU): a string that begins with "ou-" followed by
from 4 to 32 lower-case letters or digits (the ID of the root that
contains the OU) followed by a second "-" dash and from 8 to 32
additional lower-case letters or digits.

=back



=head2 Type => Str

  The type of this child entity.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Organizations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

