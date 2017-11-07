package Paws::EMR::InstanceFleetTimeline;
  use Moose;
  has CreationDateTime => (is => 'ro', isa => 'Str');
  has EndDateTime => (is => 'ro', isa => 'Str');
  has ReadyDateTime => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::InstanceFleetTimeline

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::InstanceFleetTimeline object:

  $service_obj->Method(Att1 => { CreationDateTime => $value, ..., ReadyDateTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::InstanceFleetTimeline object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationDateTime

=head1 DESCRIPTION

Provides historical timestamps for the instance fleet, including the
time of creation, the time it became ready to run jobs, and the time of
termination.

The instance fleet configuration is available only in Amazon EMR
versions 4.8.0 and later, excluding 5.0.x versions.

=head1 ATTRIBUTES


=head2 CreationDateTime => Str

  The time and date the instance fleet was created.


=head2 EndDateTime => Str

  The time and date the instance fleet terminated.


=head2 ReadyDateTime => Str

  The time and date the instance fleet was ready to run jobs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

