package Paws::OpsWorks::ElasticIp;
  use Moose;
  has Domain => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has Ip => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Region => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::ElasticIp

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::OpsWorks::ElasticIp object:

  $service_obj->Method(Att1 => { Domain => $value, ..., Region => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::OpsWorks::ElasticIp object:

  $result = $service_obj->Method(...);
  $result->Att1->Domain

=head1 DESCRIPTION

Describes an Elastic IP address.

=head1 ATTRIBUTES


=head2 Domain => Str

  The domain.


=head2 InstanceId => Str

  The ID of the instance that the address is attached to.


=head2 Ip => Str

  The IP address.


=head2 Name => Str

  The name.


=head2 Region => Str

  The AWS region. For more information, see Regions and Endpoints
(http://docs.aws.amazon.com/general/latest/gr/rande.html).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

