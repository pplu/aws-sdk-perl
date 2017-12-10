package Paws::SDB::Item;
  use Moose;
  has AlternateNameEncoding => (is => 'ro', isa => 'Str');
  has Attributes => (is => 'ro', isa => 'ArrayRef[Paws::SDB::Attribute]', request_name => 'Attribute', traits => ['NameInRequest'], required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SDB::Item

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SDB::Item object:

  $service_obj->Method(Att1 => { AlternateNameEncoding => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SDB::Item object:

  $result = $service_obj->Method(...);
  $result->Att1->AlternateNameEncoding

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AlternateNameEncoding => Str

  


=head2 B<REQUIRED> Attributes => ArrayRef[L<Paws::SDB::Attribute>]

  A list of attributes.


=head2 B<REQUIRED> Name => Str

  The name of the item.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

