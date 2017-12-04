package Paws::ApiGateway::ThrottleSettings;
  use Moose;
  has BurstLimit => (is => 'ro', isa => 'Int', request_name => 'burstLimit', traits => ['NameInRequest']);
  has RateLimit => (is => 'ro', isa => 'Num', request_name => 'rateLimit', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::ThrottleSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApiGateway::ThrottleSettings object:

  $service_obj->Method(Att1 => { BurstLimit => $value, ..., RateLimit => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApiGateway::ThrottleSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->BurstLimit

=head1 DESCRIPTION

The API request rate limits.

=head1 ATTRIBUTES


=head2 BurstLimit => Int

  The API request burst limit, the maximum rate limit over a time ranging
from one to a few seconds, depending upon whether the underlying token
bucket is at its full capacity.


=head2 RateLimit => Num

  The API request steady-state rate limit.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

