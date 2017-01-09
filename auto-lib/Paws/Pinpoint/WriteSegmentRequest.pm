package Paws::Pinpoint::WriteSegmentRequest;
  use Moose;
  has Dimensions => (is => 'ro', isa => 'Paws::Pinpoint::SegmentDimensions');
  has Name => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::WriteSegmentRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::WriteSegmentRequest object:

  $service_obj->Method(Att1 => { Dimensions => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::WriteSegmentRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->Dimensions

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Dimensions => L<Paws::Pinpoint::SegmentDimensions>

  The segment dimensions attributes.


=head2 Name => Str

  The name of segment



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

