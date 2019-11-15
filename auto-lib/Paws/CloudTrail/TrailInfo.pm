package Paws::CloudTrail::TrailInfo;
  use Moose;
  has HomeRegion => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has TrailARN => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::TrailInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudTrail::TrailInfo object:

  $service_obj->Method(Att1 => { HomeRegion => $value, ..., TrailARN => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudTrail::TrailInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->HomeRegion

=head1 DESCRIPTION

Information about a CloudTrail trail, including the trail's name, home
region, and Amazon Resource Name (ARN).

=head1 ATTRIBUTES


=head2 HomeRegion => Str

  The AWS region in which a trail was created.


=head2 Name => Str

  The name of a trail.


=head2 TrailARN => Str

  The ARN of a trail.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudTrail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

