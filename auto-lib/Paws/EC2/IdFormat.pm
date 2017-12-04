package Paws::EC2::IdFormat;
  use Moose;
  has Deadline => (is => 'ro', isa => 'Str', request_name => 'deadline', traits => ['NameInRequest']);
  has Resource => (is => 'ro', isa => 'Str', request_name => 'resource', traits => ['NameInRequest']);
  has UseLongIds => (is => 'ro', isa => 'Bool', request_name => 'useLongIds', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::IdFormat

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::IdFormat object:

  $service_obj->Method(Att1 => { Deadline => $value, ..., UseLongIds => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::IdFormat object:

  $result = $service_obj->Method(...);
  $result->Att1->Deadline

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Deadline => Str

  The date in UTC at which you are permanently switched over to using
longer IDs. If a deadline is not yet available for this resource type,
this field is not returned.


=head2 Resource => Str

  The type of resource.


=head2 UseLongIds => Bool

  Indicates whether longer IDs (17-character IDs) are enabled for the
resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
