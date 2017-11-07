package Paws::RDS::Timezone;
  use Moose;
  has TimezoneName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::Timezone

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDS::Timezone object:

  $service_obj->Method(Att1 => { TimezoneName => $value, ..., TimezoneName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDS::Timezone object:

  $result = $service_obj->Method(...);
  $result->Att1->TimezoneName

=head1 DESCRIPTION

A time zone associated with a DBInstance or a DBSnapshot. This data
type is an element in the response to the DescribeDBInstances, the
DescribeDBSnapshots, and the DescribeDBEngineVersions actions.

=head1 ATTRIBUTES


=head2 TimezoneName => Str

  The name of the time zone.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

