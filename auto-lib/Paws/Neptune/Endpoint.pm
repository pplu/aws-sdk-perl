package Paws::Neptune::Endpoint;
  use Moose;
  has Address => (is => 'ro', isa => 'Str');
  has HostedZoneId => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::Endpoint

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Neptune::Endpoint object:

  $service_obj->Method(Att1 => { Address => $value, ..., Port => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Neptune::Endpoint object:

  $result = $service_obj->Method(...);
  $result->Att1->Address

=head1 DESCRIPTION

This data type is used as a response element in the following actions:

=over

=item *

CreateDBInstance

=item *

DescribeDBInstances

=item *

DeleteDBInstance

=back


=head1 ATTRIBUTES


=head2 Address => Str

  Specifies the DNS address of the DB instance.


=head2 HostedZoneId => Str

  Specifies the ID that Amazon Route 53 assigns when you create a hosted
zone.


=head2 Port => Int

  Specifies the port that the database engine is listening on.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Neptune>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

