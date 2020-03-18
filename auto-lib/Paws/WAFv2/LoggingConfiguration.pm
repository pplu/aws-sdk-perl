package Paws::WAFv2::LoggingConfiguration;
  use Moose;
  has LogDestinationConfigs => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has RedactedFields => (is => 'ro', isa => 'ArrayRef[Paws::WAFv2::FieldToMatch]');
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFv2::LoggingConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAFv2::LoggingConfiguration object:

  $service_obj->Method(Att1 => { LogDestinationConfigs => $value, ..., ResourceArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAFv2::LoggingConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->LogDestinationConfigs

=head1 DESCRIPTION

This is the latest version of B<AWS WAF>, named AWS WAFV2, released in
November, 2019. For information, including how to migrate your AWS WAF
resources from the prior release, see the AWS WAF Developer Guide
(https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

Defines an association between Amazon Kinesis Data Firehose
destinations and a web ACL resource, for logging from AWS WAF. As part
of the association, you can specify parts of the standard logging
fields to keep out of the logs.

=head1 ATTRIBUTES


=head2 B<REQUIRED> LogDestinationConfigs => ArrayRef[Str|Undef]

  The Amazon Kinesis Data Firehose Amazon Resource Name (ARNs) that you
want to associate with the web ACL.


=head2 RedactedFields => ArrayRef[L<Paws::WAFv2::FieldToMatch>]

  The parts of the request that you want to keep out of the logs. For
example, if you redact the cookie field, the cookie field in the
firehose will be C<xxx>.


=head2 B<REQUIRED> ResourceArn => Str

  The Amazon Resource Name (ARN) of the web ACL that you want to
associate with C<LogDestinationConfigs>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAFv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

