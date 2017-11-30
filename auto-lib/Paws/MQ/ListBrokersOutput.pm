package Paws::MQ::ListBrokersOutput;
  use Moose;
  has BrokerSummaries => (is => 'ro', isa => 'ArrayRef[Paws::MQ::BrokerSummary]', request_name => 'brokerSummaries', traits => ['NameInRequest']);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::ListBrokersOutput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MQ::ListBrokersOutput object:

  $service_obj->Method(Att1 => { BrokerSummaries => $value, ..., NextToken => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MQ::ListBrokersOutput object:

  $result = $service_obj->Method(...);
  $result->Att1->BrokerSummaries

=head1 DESCRIPTION

A list of information about all brokers.

=head1 ATTRIBUTES


=head2 BrokerSummaries => ArrayRef[L<Paws::MQ::BrokerSummary>]

  A list of information about all brokers.


=head2 NextToken => Str

  The token that specifies the next page of results Amazon MQ should
return. To request the first page, leave nextToken empty.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MQ>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

