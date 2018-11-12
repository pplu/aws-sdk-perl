package Paws::Athena::ResultConfiguration;
  use Moose;
  has EncryptionConfiguration => (is => 'ro', isa => 'Paws::Athena::EncryptionConfiguration');
  has OutputLocation => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Athena::ResultConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Athena::ResultConfiguration object:

  $service_obj->Method(Att1 => { EncryptionConfiguration => $value, ..., OutputLocation => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Athena::ResultConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->EncryptionConfiguration

=head1 DESCRIPTION

The location in Amazon S3 where query results are stored and the
encryption option, if any, used for query results.

=head1 ATTRIBUTES


=head2 EncryptionConfiguration => L<Paws::Athena::EncryptionConfiguration>

  If query results are encrypted in Amazon S3, indicates the encryption
option used (for example, C<SSE-KMS> or C<CSE-KMS>) and key
information.


=head2 B<REQUIRED> OutputLocation => Str

  The location in Amazon S3 where your query results are stored, such as
C<s3://path/to/query/bucket/>. For more information, see Queries and
Query Result Files.
(http://docs.aws.amazon.com/athena/latest/ug/querying.html)



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Athena>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

