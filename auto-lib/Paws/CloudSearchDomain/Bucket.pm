package Paws::CloudSearchDomain::Bucket;
  use Moose;
  has count => (is => 'ro', isa => 'Int');
  has value => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearchDomain::Bucket

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudSearchDomain::Bucket object:

  $service_obj->Method(Att1 => { count => $value, ..., value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudSearchDomain::Bucket object:

  $result = $service_obj->Method(...);
  $result->Att1->count

=head1 DESCRIPTION

A container for facet information.

=head1 ATTRIBUTES

=head2 count => Int

  The number of hits that contain the facet value in the specified facet
field.

=head2 value => Str

  The facet value being counted.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudSearchDomain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

