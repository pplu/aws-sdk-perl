
package Paws::QLDB::GetDigest;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::QLDB::Types qw//;
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetDigest');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/ledgers/{name}/digest');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::QLDB::GetDigestResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'Name' => 'name'
                  },
  'types' => {
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'IsRequired' => {
                    'Name' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::QLDB::GetDigest - Arguments for method GetDigest on L<Paws::QLDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDigest on the
L<Amazon QLDB|Paws::QLDB> service. Use the attributes of this class
as arguments to method GetDigest.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDigest.

=head1 SYNOPSIS

    my $qldb = Paws->service('QLDB');
    my $GetDigestResponse = $qldb->GetDigest(
      Name => 'MyLedgerName',

    );

    # Results:
    my $Digest           = $GetDigestResponse->Digest;
    my $DigestTipAddress = $GetDigestResponse->DigestTipAddress;

    # Returns a L<Paws::QLDB::GetDigestResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qldb/GetDigest>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the ledger.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDigest in L<Paws::QLDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

