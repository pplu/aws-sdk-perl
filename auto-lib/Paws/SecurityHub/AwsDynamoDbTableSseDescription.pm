# Generated by default/object.tt
package Paws::SecurityHub::AwsDynamoDbTableSseDescription;
  use Moose;
  has InaccessibleEncryptionDateTime => (is => 'ro', isa => 'Str');
  has KmsMasterKeyArn => (is => 'ro', isa => 'Str');
  has SseType => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsDynamoDbTableSseDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsDynamoDbTableSseDescription object:

  $service_obj->Method(Att1 => { InaccessibleEncryptionDateTime => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsDynamoDbTableSseDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->InaccessibleEncryptionDateTime

=head1 DESCRIPTION

Information about the server-side encryption for the table.

=head1 ATTRIBUTES


=head2 InaccessibleEncryptionDateTime => Str

If the key is inaccessible, the date and time when DynamoDB detected
that the key was inaccessible.

Uses the C<date-time> format specified in RFC 3339 section 5.6,
Internet Date/Time Format
(https://tools.ietf.org/html/rfc3339#section-5.6). The value cannot
contain spaces. For example, C<2020-03-22T13:22:13.933Z>.


=head2 KmsMasterKeyArn => Str

The ARN of the AWS KMS customer master key (CMK) that is used for the
AWS KMS encryption.


=head2 SseType => Str

The type of server-side encryption.


=head2 Status => Str

The status of the server-side encryption.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

