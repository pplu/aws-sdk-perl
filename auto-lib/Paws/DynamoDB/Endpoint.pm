package Paws::DynamoDB::Endpoint;
  use Moose;
  has Address => (is => 'ro', isa => 'Str', required => 1);
  has CachePeriodInMinutes => (is => 'ro', isa => 'Int', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::Endpoint

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::Endpoint object:

  $service_obj->Method(Att1 => { Address => $value, ..., CachePeriodInMinutes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::Endpoint object:

  $result = $service_obj->Method(...);
  $result->Att1->Address

=head1 DESCRIPTION

An endpoint information details.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Address => Str

  IP address of the endpoint.


=head2 B<REQUIRED> CachePeriodInMinutes => Int

  Endpoint cache time to live (TTL) value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

