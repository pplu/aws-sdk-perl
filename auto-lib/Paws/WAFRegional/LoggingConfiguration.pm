package Paws::WAFRegional::LoggingConfiguration;
  use Moose;
  has LogDestinationConfigs => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has RedactedFields => (is => 'ro', isa => 'ArrayRef[Paws::WAFRegional::FieldToMatch]');
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::LoggingConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAFRegional::LoggingConfiguration object:

  $service_obj->Method(Att1 => { LogDestinationConfigs => $value, ..., ResourceArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAFRegional::LoggingConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->LogDestinationConfigs

=head1 DESCRIPTION

The Amazon Kinesis Data Firehose, C<RedactedFields> information, and
the web ACL Amazon Resource Name (ARN).

=head1 ATTRIBUTES


=head2 B<REQUIRED> LogDestinationConfigs => ArrayRef[Str|Undef]

  An array of Amazon Kinesis Data Firehose ARNs.


=head2 RedactedFields => ArrayRef[L<Paws::WAFRegional::FieldToMatch>]

  The parts of the request that you want redacted from the logs. For
example, if you redact the cookie field, the cookie field in the
firehose will be C<xxx>.


=head2 B<REQUIRED> ResourceArn => Str

  The Amazon Resource Name (ARN) of the web ACL that you want to
associate with C<LogDestinationConfigs>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAFRegional>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

