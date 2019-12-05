package Paws::ES::LimitsByRole;
  use Moose;
  with 'Paws::API::StrToObjMapParser';

  has Map => (is => 'ro', isa => 'HashRef[Paws::ES::Limits]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::LimitsByRole

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ES::LimitsByRole object:

  $service_obj->Method(Att1 => { key1 => $value, ..., keyN => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ES::LimitsByRole object:

  $result = $service_obj->Method(...);
  $result->Att1->Map->{ key1 }

=head1 DESCRIPTION

Map of Role of the Instance and Limits that are applicable. Role
performed by given Instance in Elasticsearch can be one of the
following:

=over

=item * data: If the given InstanceType is used as data node

=item * master: If the given InstanceType is used as master node

=item * ultra_warm: If the given InstanceType is used as warm node

=back


=head1 ATTRIBUTES

=head2 Map => L<Paws::ES::Limits>

Use the Map method to retrieve a HashRef to the map

=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

