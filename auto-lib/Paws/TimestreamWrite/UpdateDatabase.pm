
package Paws::TimestreamWrite::UpdateDatabase;
  use Moose;
  has DatabaseName => (is => 'ro', isa => 'Str', required => 1);
  has KmsKeyId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDatabase');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::TimestreamWrite::UpdateDatabaseResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamWrite::UpdateDatabase - Arguments for method UpdateDatabase on L<Paws::TimestreamWrite>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDatabase on the
L<Amazon Timestream Write|Paws::TimestreamWrite> service. Use the attributes of this class
as arguments to method UpdateDatabase.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDatabase.

=head1 SYNOPSIS

    my $ingest.timestream = Paws->service('TimestreamWrite');
    my $UpdateDatabaseResponse = $ingest . timestream->UpdateDatabase(
      DatabaseName => 'MyResourceName',
      KmsKeyId     => 'MyStringValue2048',

    );

    # Results:
    my $Database = $UpdateDatabaseResponse->Database;

    # Returns a L<Paws::TimestreamWrite::UpdateDatabaseResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ingest.timestream/UpdateDatabase>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatabaseName => Str

The name of the database.



=head2 B<REQUIRED> KmsKeyId => Str

The identifier of the new KMS key (C<KmsKeyId>) to be used to encrypt
the data stored in the database. If the C<KmsKeyId> currently
registered with the database is the same as the C<KmsKeyId> in the
request, there will not be any update.

You can specify the C<KmsKeyId> using any of the following:

=over

=item *

Key ID: C<1234abcd-12ab-34cd-56ef-1234567890ab>

=item *

Key ARN:
C<arn:aws:kms:us-east-1:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab>

=item *

Alias name: C<alias/ExampleAlias>

=item *

Alias ARN: C<arn:aws:kms:us-east-1:111122223333:alias/ExampleAlias>

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDatabase in L<Paws::TimestreamWrite>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

