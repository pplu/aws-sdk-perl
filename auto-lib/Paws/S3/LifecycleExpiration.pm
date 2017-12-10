package Paws::S3::LifecycleExpiration;
  use Moose;
  has Date => (is => 'ro', isa => 'Str');
  has Days => (is => 'ro', isa => 'Int');
  has ExpiredObjectDeleteMarker => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::LifecycleExpiration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::LifecycleExpiration object:

  $service_obj->Method(Att1 => { Date => $value, ..., ExpiredObjectDeleteMarker => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::LifecycleExpiration object:

  $result = $service_obj->Method(...);
  $result->Att1->Date

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Date => Str

  Indicates at what date the object is to be moved or deleted. Should be
in GMT ISO 8601 Format.


=head2 Days => Int

  Indicates the lifetime, in days, of the objects that are subject to the
rule. The value must be a non-zero positive integer.


=head2 ExpiredObjectDeleteMarker => Bool

  Indicates whether Amazon S3 will remove a delete marker with no
noncurrent versions. If set to true, the delete marker will be expired;
if set to false the policy takes no action. This cannot be specified
with Days or Date in a Lifecycle Expiration Policy.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

