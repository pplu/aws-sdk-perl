# Generated from default/object.tt
package Paws::CostExplorer::ResourceDetails;
  use Moo;
  use Types::Standard qw//;
  use Paws::CostExplorer::Types qw/CostExplorer_EC2ResourceDetails/;
  has EC2ResourceDetails => (is => 'ro', isa => CostExplorer_EC2ResourceDetails);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EC2ResourceDetails' => {
                                         'type' => 'CostExplorer_EC2ResourceDetails',
                                         'class' => 'Paws::CostExplorer::EC2ResourceDetails'
                                       }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::ResourceDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CostExplorer::ResourceDetails object:

  $service_obj->Method(Att1 => { EC2ResourceDetails => $value, ..., EC2ResourceDetails => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CostExplorer::ResourceDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->EC2ResourceDetails

=head1 DESCRIPTION

Details on the resource.

=head1 ATTRIBUTES


=head2 EC2ResourceDetails => CostExplorer_EC2ResourceDetails

  Details on the Amazon EC2 resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

