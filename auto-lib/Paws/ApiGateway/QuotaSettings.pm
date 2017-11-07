package Paws::ApiGateway::QuotaSettings;
  use Moose;
  has Limit => (is => 'ro', isa => 'Int', request_name => 'limit', traits => ['NameInRequest']);
  has Offset => (is => 'ro', isa => 'Int', request_name => 'offset', traits => ['NameInRequest']);
  has Period => (is => 'ro', isa => 'Str', request_name => 'period', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::QuotaSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApiGateway::QuotaSettings object:

  $service_obj->Method(Att1 => { Limit => $value, ..., Period => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApiGateway::QuotaSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->Limit

=head1 DESCRIPTION

Quotas configured for a usage plan.

=head1 ATTRIBUTES


=head2 Limit => Int

  The maximum number of requests that can be made in a given time period.


=head2 Offset => Int

  The number of requests subtracted from the given limit in the initial
time period.


=head2 Period => Str

  The time period in which the limit applies. Valid values are "DAY",
"WEEK" or "MONTH".



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

