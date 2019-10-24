# Generated from default/object.tt
package Paws::Datasync::EndpointOptions;
  use Moo;
  use Types::Standard qw/Bool/;
  use Paws::Datasync::Types qw//;
  has Fips => (is => 'ro', isa => Bool);
  has PrivateLink => (is => 'ro', isa => Bool);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PrivateLink' => {
                                  'type' => 'Bool'
                                },
               'Fips' => {
                           'type' => 'Bool'
                         }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::EndpointOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Datasync::EndpointOptions object:

  $service_obj->Method(Att1 => { Fips => $value, ..., PrivateLink => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Datasync::EndpointOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->Fips

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Fips => Bool

  


=head2 PrivateLink => Bool

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

