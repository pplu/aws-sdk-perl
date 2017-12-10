package Paws::EC2::Region;
  use Moose;
  has Endpoint => (is => 'ro', isa => 'Str', request_name => 'regionEndpoint', traits => ['NameInRequest']);
  has RegionName => (is => 'ro', isa => 'Str', request_name => 'regionName', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::Region

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::Region object:

  $service_obj->Method(Att1 => { Endpoint => $value, ..., RegionName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::Region object:

  $result = $service_obj->Method(...);
  $result->Att1->Endpoint

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Endpoint => Str

  The region service endpoint.


=head2 RegionName => Str

  The name of the region.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
