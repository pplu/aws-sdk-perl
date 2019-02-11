package Paws::ApiGatewayV2::RouteSettings;
  use Moose;
  has DataTraceEnabled => (is => 'ro', isa => 'Bool', request_name => 'dataTraceEnabled', traits => ['NameInRequest']);
  has DetailedMetricsEnabled => (is => 'ro', isa => 'Bool', request_name => 'detailedMetricsEnabled', traits => ['NameInRequest']);
  has LoggingLevel => (is => 'ro', isa => 'Str', request_name => 'loggingLevel', traits => ['NameInRequest']);
  has ThrottlingBurstLimit => (is => 'ro', isa => 'Int', request_name => 'throttlingBurstLimit', traits => ['NameInRequest']);
  has ThrottlingRateLimit => (is => 'ro', isa => 'Num', request_name => 'throttlingRateLimit', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::RouteSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApiGatewayV2::RouteSettings object:

  $service_obj->Method(Att1 => { DataTraceEnabled => $value, ..., ThrottlingRateLimit => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApiGatewayV2::RouteSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->DataTraceEnabled

=head1 DESCRIPTION

Represents a collection of route settings.

=head1 ATTRIBUTES


=head2 DataTraceEnabled => Bool

  Specifies whether (true) or not (false) data trace logging is enabled
for this route. This property affects the log entries pushed to Amazon
CloudWatch Logs.


=head2 DetailedMetricsEnabled => Bool

  Specifies whether detailed metrics are enabled.


=head2 LoggingLevel => Str

  Specifies the logging level for this route: DEBUG, INFO, or WARN. This
property affects the log entries pushed to Amazon CloudWatch Logs.


=head2 ThrottlingBurstLimit => Int

  Specifies the throttling burst limit.


=head2 ThrottlingRateLimit => Num

  Specifies the throttling rate limit.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

