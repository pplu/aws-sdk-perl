
package Paws::QLDB::GetRevision;
  use Moose;
  has BlockAddress => (is => 'ro', isa => 'Paws::QLDB::ValueHolder', required => 1);
  has DigestTipAddress => (is => 'ro', isa => 'Paws::QLDB::ValueHolder');
  has DocumentId => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRevision');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ledgers/{name}/revision');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QLDB::GetRevisionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QLDB::GetRevision - Arguments for method GetRevision on L<Paws::QLDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRevision on the
L<Amazon QLDB|Paws::QLDB> service. Use the attributes of this class
as arguments to method GetRevision.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRevision.

=head1 SYNOPSIS

    my $qldb = Paws->service('QLDB');
    my $GetRevisionResponse = $qldb->GetRevision(
      BlockAddress => {
        IonText => 'MyIonText',    # min: 1, max: 1048576; OPTIONAL
      },
      DocumentId       => 'MyUniqueId',
      Name             => 'MyLedgerName',
      DigestTipAddress => {
        IonText => 'MyIonText',    # min: 1, max: 1048576; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $Proof    = $GetRevisionResponse->Proof;
    my $Revision = $GetRevisionResponse->Revision;

    # Returns a L<Paws::QLDB::GetRevisionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qldb/GetRevision>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BlockAddress => L<Paws::QLDB::ValueHolder>

The block location of the document revision to be verified. An address
is an Amazon Ion structure that has two fields: C<strandId> and
C<sequenceNo>.

For example: C<{strandId:"BlFTjlSXze9BIh1KOszcE3",sequenceNo:14}>.



=head2 DigestTipAddress => L<Paws::QLDB::ValueHolder>

The latest block location covered by the digest for which to request a
proof. An address is an Amazon Ion structure that has two fields:
C<strandId> and C<sequenceNo>.

For example: C<{strandId:"BlFTjlSXze9BIh1KOszcE3",sequenceNo:49}>.



=head2 B<REQUIRED> DocumentId => Str

The UUID (represented in Base62-encoded text) of the document to be
verified.



=head2 B<REQUIRED> Name => Str

The name of the ledger.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRevision in L<Paws::QLDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

