package Paws::Outposts::Outpost;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has AvailabilityZoneId => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has LifeCycleStatus => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has OutpostArn => (is => 'ro', isa => 'Str');
  has OutpostId => (is => 'ro', isa => 'Str');
  has OwnerId => (is => 'ro', isa => 'Str');
  has SiteId => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Outposts::Outpost

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Outposts::Outpost object:

  $service_obj->Method(Att1 => { AvailabilityZone => $value, ..., SiteId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Outposts::Outpost object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZone

=head1 DESCRIPTION

Information about an Outpost.

=head1 ATTRIBUTES


=head2 AvailabilityZone => Str

  


=head2 AvailabilityZoneId => Str

  


=head2 Description => Str

  


=head2 LifeCycleStatus => Str

  


=head2 Name => Str

  


=head2 OutpostArn => Str

  


=head2 OutpostId => Str

  


=head2 OwnerId => Str

  


=head2 SiteId => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Outposts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

