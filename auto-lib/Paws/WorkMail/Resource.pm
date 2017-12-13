package Paws::WorkMail::Resource;
  use Moose;
  has DisabledDate => (is => 'ro', isa => 'Str');
  has Email => (is => 'ro', isa => 'Str');
  has EnabledDate => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::Resource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WorkMail::Resource object:

  $service_obj->Method(Att1 => { DisabledDate => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WorkMail::Resource object:

  $result = $service_obj->Method(...);
  $result->Att1->DisabledDate

=head1 DESCRIPTION

The overview for a resource containing relevant data regarding it.

=head1 ATTRIBUTES


=head2 DisabledDate => Str

  The date indicating when the resource was disabled from Amazon WorkMail
use.


=head2 Email => Str

  The email of the resource.


=head2 EnabledDate => Str

  The date indicating when the resource was enabled for Amazon WorkMail
use.


=head2 Id => Str

  The identifier of the resource.


=head2 Name => Str

  The name of the resource.


=head2 State => Str

  The state of the resource, which can be ENABLED, DISABLED, or DELETED.


=head2 Type => Str

  The type of the resource: equipment or room.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

