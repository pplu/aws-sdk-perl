package Paws::EC2::Region;
  use Moo;  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw//;
  has Endpoint => (is => 'ro', isa => Str);
  has OptInStatus => (is => 'ro', isa => Str);
  has RegionName => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Endpoint' => 'regionEndpoint',
                       'OptInStatus' => 'optInStatus',
                       'RegionName' => 'regionName'
                     },
  'types' => {
               'RegionName' => {
                                 'type' => 'Str'
                               },
               'Endpoint' => {
                               'type' => 'Str'
                             },
               'OptInStatus' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

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

  The Region service endpoint.


=head2 OptInStatus => Str

  The Region opt-in status. The possible values are
C<opt-in-not-required>, C<opted-in>, and C<not-opted-in>.


=head2 RegionName => Str

  The name of the Region.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
