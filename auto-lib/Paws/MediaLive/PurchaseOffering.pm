package Paws::MediaLive::PurchaseOffering;
  use Moose;
  has Count => (is => 'ro', isa => 'Int', request_name => 'count', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has RequestId => (is => 'ro', isa => 'Str', request_name => 'requestId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::PurchaseOffering

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::PurchaseOffering object:

  $service_obj->Method(Att1 => { Count => $value, ..., RequestId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::PurchaseOffering object:

  $result = $service_obj->Method(...);
  $result->Att1->Count

=head1 DESCRIPTION

PurchaseOffering request

=head1 ATTRIBUTES


=head2 Count => Int

  Number of resources


=head2 Name => Str

  Name for the new reservation


=head2 RequestId => Str

  Unique request ID to be specified. This is needed to prevent retries
from creating multiple resources.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

